//
// KFTVGA_VRAM
//
// Written by Kitune-san
//
// Note:
// Require huge LEs.
// Do not consider dual clock.
// Do not recommend using this module.
// Please use Dual Port RAM IP instead.
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

    logic   [9599:0][7:0]  vram;

    //
    // Write/Read VRAM from external bus
    //
    // Write
    logic           latch_write_vram;
    logic   [13:0]  latch_address;
    logic   [7:0]   latch_vram_data_in;

    always_ff @(negedge clock) begin
        latch_address      <= address;
        latch_write_vram   <= write_vram;
        latch_vram_data_in <= vram_data_in;
    end

    always @* begin     // always_latch
        if (latch_write_vram) vram[latch_address] <= latch_vram_data_in;
    end

    // Read
    always_comb begin
        if (read_vram)
            vram_data_out = vram[address];
        else
            vram_data_out = 8'b00000000;
    end

    //
    // Read VRAM from video controller
    //
    logic   [13:0]  read_address_h;
    logic   [13:0]  read_address_l;

    assign read_address_h = {video_address, 1'b1};
    assign read_address_l = {video_address, 1'b0};

    always_ff @(negedge video_clock) begin
        video_data_out <= {vram[read_address_h], vram[read_address_l]};
    end

endmodule

