//
// KFTVGA
// Simple Text Video Controller
//
// Written by kitune-san
//
// Specification:
// 480x640 pixels
// 8x8 fonts
// 16 colors
// 60x80 texts
//
module KFTVGA (
    input   logic           clock,
    input   logic           reset,

    input   logic           chip_select_n,
    input   logic           read_enable_n,
    input   logic           write_enable_n,
    input   logic   [13:0]  address,
    input   logic   [7:0]   data_bus_in,

    output  logic   [7:0]   data_bus_out,

    input   logic           video_clock,    // 25MHz
    input   logic           video_reset,
    output  logic           video_h_sync,
    output  logic           video_v_sync,
    output  logic   [3:0]   video_r,
    output  logic   [3:0]   video_g,
    output  logic   [3:0]   video_b
);

    //
    // Data Bus Buffer & Read/Write Control Logic
    //
    logic   [13:0]  internal_address;
    logic   [7:0]   internal_data_bus;
    logic           write_vram;
    logic           read_vram;

    KFTVGA_Bus_Control_Logic u_KFTVGA_Bus_Control_Logic(
        .clock              (clock),
        .reset              (reset),

        .chip_select_n      (chip_select_n),
        .read_enable_n      (read_enable_n),
        .write_enable_n     (write_enable_n),
        .address            (address),
        .data_bus_in        (data_bus_in),

        .internal_address   (internal_address),
        .internal_data_bus  (internal_data_bus),
        .write_vram         (write_vram),
        .read_vram          (read_vram)
    );

    //
    // VRAM
    //
    logic   [12:0]  video_address;
    logic   [15:0]  video_data_out;
    logic   [7:0]   video_data_character;
    logic   [7:0]   video_data_color;

    KFTVGA_VRAM u_KFTVGA_VRAM (
        .clock              (clock),
        .address            (internal_address),
        .write_vram         (write_vram),
        .read_vram          (read_vram),
        .vram_data_in       (internal_data_bus),
        .vram_data_out      (data_bus_out),

        .video_clock        (video_clock),
        .video_address      (video_address),
        .video_data_out     (video_data_out)
    );
    assign video_data_character = video_data_out[7:0];
    assign video_data_color     = video_data_out[15:8];

    //
    // Character ROM
    //
    logic   [2:0]   char_line_number;
    logic   [7:0]   char_line_data;

    KFTVGA_Character_ROM u_KFTVGA_Character_ROM (
        .char_code          (video_data_character),
        .char_line_number   (char_line_number),
        .char_line_out      (char_line_data)
    );

    //
    // Video Control
    //
    KFTVGA_Video_Control u_KFTVGA_Video_Control (
        .video_clock        (video_clock),
        .reset              (video_reset),

        .vram_address       (video_address),
        .char_line_number   (char_line_number),
        .char_line_data     (char_line_data),
        .char_color_data    (video_data_color),

        .video_h_sync       (video_h_sync),
        .video_v_sync       (video_v_sync),
        .video_r            (video_r),
        .video_g            (video_g),
        .video_b            (video_b)
    );

endmodule

