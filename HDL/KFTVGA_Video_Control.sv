//
// KFTVGA_Video_Control
// Generate VGA signals
//
// Written by Kitune-san
//
module  KFTVGA_Video_Control (
    input   logic           video_clock,    // 25MHz
    input   logic           reset,

    /* access VRAM/CharacterROM */
    output  logic   [12:0]  vram_address,
    output  logic   [2:0]   char_line_number,
    input   logic   [7:0]   char_line_data,
    input   logic   [7:0]   char_color_data,

    /* VGA Signals */
    output  logic           video_h_sync,
    output  logic           video_v_sync,
    output  logic   [3:0]   video_r,
    output  logic   [3:0]   video_g,
    output  logic   [3:0]   video_b
);

    //
    // H/V sync cycle
    //
    logic   [9:0]   h_sync_count;
    logic   [9:0]   v_sync_count;
    logic   [9:0]   next_h_sync_count;
    logic   [9:0]   next_v_sync_count;

    always_comb begin
        if (10'd799 != h_sync_count)
            next_h_sync_count = h_sync_count + 10'b00_00000001;
        else
            next_h_sync_count = 10'b00_00000000;
    end

    always_comb begin
        if (10'd799 == h_sync_count)
            if (10'd524 != v_sync_count)
                next_v_sync_count = v_sync_count + 10'b00_00000001;
            else
                next_v_sync_count = 10'b00_00000000;
        else
            next_v_sync_count = v_sync_count;
    end

    always_ff @(negedge video_clock, posedge reset) begin
        if (reset) begin
            h_sync_count <= 10'b00_0000_0000;
            v_sync_count <= 10'b00_0000_0000;
        end
        else begin
            h_sync_count <= next_h_sync_count;
            v_sync_count <= next_v_sync_count;
        end
    end

    //
    // Generate H-Sync signal
    //
    always_ff @(negedge video_clock, posedge reset) begin
        if (reset)
            video_h_sync <= 1'b1;
        else if (10'd000 == h_sync_count)
            video_h_sync <= 1'b1;
        else if (10'd016 == h_sync_count)
            video_h_sync <= 1'b0;
        else if (10'd112 == h_sync_count)
            video_h_sync <= 1'b1;
        else
            video_h_sync <= video_h_sync;
    end

    //
    // Generate V-Sync signal
    //
    always_ff @(negedge video_clock, posedge reset) begin
        if (reset)
            video_v_sync <= 1'b1;
        else if (10'd000 != h_sync_count)
            video_v_sync <= video_v_sync;
        else if (10'd000 == v_sync_count)
            video_v_sync <= 1'b1;
        else if (10'd010 == v_sync_count)
            video_v_sync <= 1'b0;
        else if (10'd012 == v_sync_count)
            video_v_sync <= 1'b1;
        else
            video_v_sync <= video_v_sync;
    end

    //
    // Calculate Display Pixel
    //
    logic           display_h_area;
    logic           display_v_area;
    logic   [10:0]  display_h_pixel_count;
    logic   [10:0]  display_v_line_count;
    logic   [2:0]   char_dot_number;

    always_ff @(negedge video_clock, posedge reset) begin
        if (reset)
            display_h_area <= 1'b0;
        else if (10'd000 == next_h_sync_count)
            display_h_area <= 1'b0;
        else if (10'd160 == next_h_sync_count)
            display_h_area <= 1'b1;
        else
            display_h_area <= display_h_area;
    end

    always_ff @(negedge video_clock, posedge reset) begin
        if (reset)
            display_v_area <= 1'b0;
        else if (10'd000 == next_v_sync_count)
            display_v_area <= 1'b0;
        else if (10'd045 == next_v_sync_count)
            display_v_area <= 1'b1;
        else
            display_v_area <= display_v_area ;
    end

    always_ff @(negedge video_clock, posedge reset) begin
        if (reset)
            display_h_pixel_count <= 10'd000;
        else if (display_h_area == 1'b0)
            display_h_pixel_count <= 10'd000;
        else
            display_h_pixel_count <= display_h_pixel_count + 10'd001;
    end

    always_ff @(negedge video_clock, posedge reset) begin
        if (reset)
            display_v_line_count <= 10'd000;
        else if (display_v_area == 1'b0)
            display_v_line_count <= 10'd000;
        else if (10'd000 == next_h_sync_count)
            display_v_line_count <= display_v_line_count + 10'd001;
        else
            display_v_line_count <= display_v_line_count;
    end

    // Access VRAM
    assign char_dot_number  = display_h_pixel_count[2:0];
    assign char_line_number = display_v_line_count[2:0];

    assign vram_address     = {4'b0000, display_h_pixel_count[10:3]}
                            + {1'b0, display_v_line_count[10:3], 4'b0000}
                            + {display_v_line_count[9:3], 6'b00_0000};

    //
    // Output RGB
    //
    logic   [11:0]  display_char_rgb;
    logic   [11:0]  display_back_rgb;

    // Color Palette
    function logic [11:0] color_palette (input [3:0] code);
        casez (code)
            4'h0: color_palette = 12'h000;  // Black
            4'h1: color_palette = 12'h008;  // Blue
            4'h2: color_palette = 12'h080;  // Green
            4'h3: color_palette = 12'h088;  // Cyan
            4'h4: color_palette = 12'h800;  // Red
            4'h5: color_palette = 12'h808;  // Magenta
            4'h6: color_palette = 12'h880;  // Brown
            4'h7: color_palette = 12'hCCC;  // White
            4'h8: color_palette = 12'h888;  // Gray
            4'h9: color_palette = 12'h00F;  // Light Blue
            4'hA: color_palette = 12'h0F0;  // Light Green
            4'hB: color_palette = 12'h0FF;  // Light Cyan
            4'hC: color_palette = 12'hF00;  // Light Red
            4'hD: color_palette = 12'hF0F;  // Light Magenta
            4'hE: color_palette = 12'hFF0;  // Yellow
            4'hF: color_palette = 12'hFFF;  // Bright White
            default: color_palette = 12'h000;
        endcase
    endfunction

    assign display_char_rgb = color_palette(char_color_data[3:0]);
    assign display_back_rgb = color_palette(char_color_data[7:4]);

    always_ff @(negedge video_clock, posedge reset) begin
        if (reset) begin
            video_r <= 4'b0000;
            video_g <= 4'b0000;
            video_b <= 4'b0000;
        end
        else if (1'b0 == display_h_area) begin
            video_r <= 4'b0000;
            video_g <= 4'b0000;
            video_b <= 4'b0000;
        end
        else if (1'b0 == display_v_area) begin
            video_r <= 4'b0000;
            video_g <= 4'b0000;
            video_b <= 4'b0000;
        end
        else if (1'b1 == char_line_data[3'b111 - char_dot_number]) begin
            video_r <= display_char_rgb[11:8];
            video_g <= display_char_rgb[7:4];
            video_b <= display_char_rgb[3:0];
        end
        else begin
            video_r <= display_back_rgb[11:8];
            video_g <= display_back_rgb[7:4];
            video_b <= display_back_rgb[3:0];
        end
    end

endmodule

