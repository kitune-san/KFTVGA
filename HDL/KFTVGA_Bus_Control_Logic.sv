//
// KFTVGA_Bus_Control_Logic
// Data Bus Buffer & Read/Write Control Logic
//
// Written by Kitune-san
//
module KFTVGA_Bus_Control_Logic (
    input   logic           clock,
    input   logic           reset,

    input   logic           chip_select_n,
    input   logic           read_enable_n,
    input   logic           write_enable_n,
    input   logic   [13:0]  address,
    input   logic   [7:0]   data_bus_in,

    // Control Signals
    output  logic   [13:0]  internal_address,
    output  logic   [7:0]   internal_data_bus,
    output  logic           write_vram,
    output  logic           read_vram
);

    //
    // Internal Signals
    //
    logic           prev_write_enable_n;
    logic   [2:0]   stable_address;


    //
    // Write Control
    //
    always_ff @(negedge clock, posedge reset) begin
        if (reset)
            internal_address <= 14'b000000000000000;
        else if (~write_enable_n & ~chip_select_n)
            internal_address <= address;
        else
            internal_address <= internal_address;
    end

    always_ff @(negedge clock, posedge reset) begin
        if (reset)
            internal_data_bus <= 8'b00000000;
        else if (~write_enable_n & ~chip_select_n)
            internal_data_bus <= data_bus_in;
        else
            internal_data_bus <= internal_data_bus;
    end

    always_ff @(negedge clock, posedge reset) begin
        if (reset)
            prev_write_enable_n <= 1'b1;
        else if (chip_select_n)
            prev_write_enable_n <= 1'b1;
        else
            prev_write_enable_n <= write_enable_n;
    end

    // Generate write request flags
    assign write_vram = ~prev_write_enable_n & write_enable_n;


    //
    // Read Control
    //
    assign read_vram = ~chip_select_n & ~read_enable_n;

endmodule

