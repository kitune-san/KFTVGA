//
// On-board Check Code
//
// Written by kitune-san
//
`define POR_MAX 16'hffff

module TOP (
    input   logic           CLK,

    output  logic           VGA_VS,
    output  logic           VGA_HS,
    output  logic   [3:0]   VGA_R,
    output  logic   [3:0]   VGA_G,
    output  logic   [3:0]   VGA_B
);

    logic   clock;
    logic   reset;
    logic   video_clock;
    logic   video_reset;

    //
    // PLL
    //
    PLL PLL (
        .refclk     (CLK),
        .rst        (1'b0),
        .outclk_0   (clock)
    );

    assign video_clock = clock;

    //
    // Power On Reset
    //
    logic   [15:0]  por_count;

    always_ff @(negedge CLK)
    begin
        if (por_count != `POR_MAX) begin
            reset <= 1'b1;
            por_count <= por_count + 16'h0001;
        end
        else begin
            reset <= 1'b0;
            por_count <= por_count;
        end
    end

    assign video_reset = reset;


    //
    // Install KFPS2KB
    //
    logic           chip_select_n;
    logic           read_enable_n;
    logic           write_enable_n;
    logic   [13:0]  address;
    logic   [7:0]   data_bus_in;

    logic   [7:0]   data_bus_out;

    logic           video_h_sync;
    logic           video_v_sync;
    logic   [3:0]   video_r;
    logic   [3:0]   video_g;
    logic   [3:0]   video_b;

    KFTVGA u_KFTVGA (.*);

    assign VGA_HS = video_h_sync;
    assign VGA_VS = video_v_sync;
    assign VGA_R  = video_r;
    assign VGA_G  = video_g;
    assign VGA_B  = video_b;

    //
    // Control Bus Logic Cycle
    //
    logic   [1:0]   bus_control_state;

    always_ff @(negedge clock, posedge reset) begin
        if (reset)
            bus_control_state <= 2'b00;
        else if (2'b11 == bus_control_state)
            bus_control_state <= 2'b00;
        else
            bus_control_state <= bus_control_state + 2'b01;
    end

    //
    // Generate Text
    //
    logic   [12:0]  text_num;
    logic   [7:0]   display_char;
    logic   [7:0]   display_color;

    always_ff @(negedge clock, posedge reset) begin
        if (reset)
            text_num <= 13'd000;
        else if (2'b11 == bus_control_state)
            if (13'd4799 == text_num)
                text_num <= 13'd0000;
            else
                text_num <= text_num + 13'd0001;
        else
            text_num <= text_num;
    end

    assign display_color = {4'b0000, text_num[3:0]};

    always_comb begin
        casez (text_num[3:0])
            4'd00: display_char = 8'd00;  //
            4'd01: display_char = 8'd72;  // H
            4'd02: display_char = 8'd69;  // E
            4'd03: display_char = 8'd76;  // L
            4'd04: display_char = 8'd76;  // L
            4'd05: display_char = 8'd79;  // O
            4'd06: display_char = 8'd00;  //
            4'd07: display_char = 8'd87;  // W
            4'd08: display_char = 8'd79;  // O
            4'd09: display_char = 8'd82;  // R
            4'd10: display_char = 8'd76;  // L
            4'd11: display_char = 8'd68;  // D
            4'd12: display_char = 8'd33;  // !
            4'd13: display_char = 8'd00;  //
            4'd14: display_char = 8'd00;  //
            4'd15: display_char = 8'd00;  //
            default: display_char = 8'd00;
        endcase
    end

    //
    // Display Text
    //
    always_ff @(negedge clock, posedge reset) begin
        if (reset) begin
            chip_select_n  <= 1'b1;
            write_enable_n <= 1'b1;
            data_bus_in    <= 8'b0000_0000;
            address        <= 14'd000;
        end
        else begin
            casez (bus_control_state)
                2'b00: begin
                    chip_select_n  <= 1'b0;
                    write_enable_n <= 1'b0;
                    data_bus_in    <= display_char;
                    address        <= {text_num, 1'b0};
                end
                2'b01: begin
                    chip_select_n  <= 1'b0;
                    write_enable_n <= 1'b1;
                    data_bus_in    <= display_char;
                    address        <= {text_num, 1'b0};
                end
                2'b10: begin
                    chip_select_n  <= 1'b0;
                    write_enable_n <= 1'b0;
                    data_bus_in    <= display_color;
                    address        <= {text_num, 1'b1};
                end
                2'b11: begin
                    chip_select_n  <= 1'b0;
                    write_enable_n <= 1'b1;
                    data_bus_in    <= display_color;
                    address        <= {text_num, 1'b1};
                end
                default: begin
                    chip_select_n  <= 1'b1;
                    write_enable_n <= 1'b1;
                    data_bus_in    <= 8'b0000_0000;
                    address        <= 14'd000;
                end
            endcase
        end
    end

    assign read_enable_n  = 1'b1;

endmodule
