//
// KFTVGA_VRAM
//
// Written by Kitune-san
//
// Note:
// Not recommend using this module.
// Please use Dual Port RAM IP.
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

    logic   [15:0]  vram[0:4799];
    logic   [15:0]  vram_next[0:4799];

    //
    // Write/Read VRAM from external bus
    //
    logic   [12:0]  access_address;
    logic           access_higher_byte;

    assign access_address = address[13:1];
    assign access_higher_byte = address[0];

    // Write
    always_comb begin
        vram_next = vram;

        if (write_vram) begin
            if (access_higher_byte)
                vram_next[access_address] = { vram_data_in, vram[access_address][7:0] };
            else
                vram_next[access_address] = { vram[access_address][15:8], vram_data_in };
        end
    end

    always_ff @(negedge clock) begin
        vram <= vram_next;
    end

    // Read
    always_comb begin
        if (read_vram) begin
            if (access_higher_byte)
                vram_data_out <= vram[access_address][15:8];
            else
                vram_data_out <= vram[access_address][7:0];
        end
        else
            vram_data_out <= 8'b00000000;
    end

    //
    // Read VRAM from video controller
    //
    assign video_data_out = vram[video_address];

endmodule

