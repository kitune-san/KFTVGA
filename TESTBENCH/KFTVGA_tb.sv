
`define TB_CYCLE        20
`define TB_FINISH_COUNT 20000

module KFTVGA_tm();

    timeunit        1ns;
    timeprecision   10ps;

    //
    // Generate wave file to check
    //
`ifdef IVERILOG
    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
    end
`endif

    //
    // Generate clock
    //
    logic   clock;
    initial clock = 1'b1;
    always #(`TB_CYCLE / 2) clock = ~clock;

    //
    // Generate reset
    //
    logic reset;
    initial begin
        reset = 1'b1;
            # (`TB_CYCLE * 10)
        reset = 1'b0;
    end

    //
    // Cycle counter
    //
    logic   [31:0]  tb_cycle_counter;
    always_ff @(negedge clock, posedge reset) begin
        if (reset)
            tb_cycle_counter <= 32'h0;
        else
            tb_cycle_counter <= tb_cycle_counter + 32'h1;
    end

//    always_comb begin
//        if (tb_cycle_counter == `TB_FINISH_COUNT) begin
//            $display("***** SIMULATION TIMEOUT ***** at %d", tb_cycle_counter);
//`ifdef IVERILOG
//            $finish;
//`elsif  MODELSIM
//            $stop;
//`else
//            $finish;
//`endif
//        end
//    end

    //
    // Module under test
    //
    logic           chip_select_n;
    logic           read_enable_n;
    logic           write_enable_n;
    logic   [13:0]  address;
    logic   [7:0]   data_bus_in;

    logic   [7:0]   data_bus_out;

    logic           video_clock;    // 25MHz
    logic           video_reset;
    logic           video_h_sync;
    logic           video_v_sync;
    logic   [3:0]   video_r;
    logic   [3:0]   video_g;
    logic   [3:0]   video_b;

    KFTVGA u_KFTVGA (.*);

    //
    // Task : Initialization
    //
    task TASK_INIT();
    begin
        #(`TB_CYCLE * 0);
        chip_select_n   = 1'b1;
        read_enable_n   = 1'b1;
        write_enable_n  = 1'b1;
        address         = 2'b00;
        data_bus_in     = 8'b00000000;
        video_clock     = 1'b1;
        video_reset     = 1'b1;
        #(`TB_CYCLE * 1);
        video_clock     = 1'b0;
        video_reset     = 1'b1;
        #(`TB_CYCLE * 1);
        video_clock     = 1'b1;
        video_reset     = 1'b1;
        #(`TB_CYCLE * 1);
        video_clock     = 1'b0;
        video_reset     = 1'b1;
        #(`TB_CYCLE * 1);
        video_clock     = 1'b1;
        video_reset     = 1'b0;
        #(`TB_CYCLE * 12);
    end
    endtask

    //
    //
    //
    task TASK_DISPLAY_H();
    begin
        for (int i = 0; i < 800; i = i + 1) begin
            video_clock = 1'b1;
            #(`TB_CYCLE * 1);
            video_clock = 1'b0;
            #(`TB_CYCLE * 1);
        end
    end
    endtask

    //
    // Task : Display
    //
    task TASK_DISPLAY();
    begin
        for (int j = 0; j < 525; j = j + 1) begin
            TASK_DISPLAY_H();
        end
    end
    endtask

    //
    // Test pattern
    //
    initial begin
        TASK_INIT();
        TASK_DISPLAY();

        #(`TB_CYCLE * 1);
        // End of simulation
`ifdef IVERILOG
        $finish;
`elsif  MODELSIM
        $stop;
`else
        $finish;
`endif
    end
endmodule

