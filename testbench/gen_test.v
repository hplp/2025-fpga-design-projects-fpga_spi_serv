`timescale 1ns / 1ps

module gen_test;
    // Declare the clock signal
    reg clk;
    // Declare other inputs and outputs for your DUT as needed
    reg reset_n;
    wire output_signal_1;
    wire output_signal_2;

    // Instantiate the DUT
    servive uut (
        .i_clk(clk),
        .i_rst_n(reset_n),
        .q(output_signal_1),
        .uart_txd(output_signal_2)
    );

    // Generate the clock signal (50 MHz)
    initial begin
        clk = 0; // Initialize clock to 0
        forever #10 clk = ~clk; // Toggle clock every 10 ns
    end

    // Test sequence
    initial begin
        // Initialize inputs
        reset_n = 0;

        // Hold reset for a few clock cycles
        #50;
        reset_n = 1;

        // Ap
	end
	
endmodule