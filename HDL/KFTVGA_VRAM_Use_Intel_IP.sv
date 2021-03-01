//
// KFTVGA_VRAM
//
// Written by Kitune-san
//

module KFTVGA_VRAM (
    input   logic           clock,
    input   logic   [13:0]  address,
    input   logic           write_vram,
    input   logic           read_vram,
    input   logic   [7:0]   vram_data_in,
    output  logic   [7:0]   vram_data_out,

    input   logic           video_clock,
    input   logic   [12:0]  video_address,
    output  logic   [15:0]  video_data_out
);

    VRAM u_VRAM (
        .address_a  (address),
        .clock_a    (clock),
        .data_a     (vram_data_in),
        .wren_a     (write_vram),
        .q_a        (vram_data_out),

        .address_b  (video_address),
        .clock_b    (video_clock),
        .data_b     (16'h0000),
        .wren_b     (1'b0),
        .q_b        (video_data_out)
    );

endmodule

