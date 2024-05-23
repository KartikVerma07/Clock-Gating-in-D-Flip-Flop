// Code your testbench here
// or browse Examples
module testbench;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in time units
    parameter ENABLE_PERCENTAGE = 50; // Percentage of duty cycle for clock gating enable

    // Signals
    reg clk;            // Main clock
    reg rst;
    reg enable;         // Clock gating enable
    reg d;              // D input for the flip-flop
    wire q;             // Q output
    wire q_n;           // Q' output

    // Instantiate the D flip-flop with clock gating module
    dff_with_clock_gating uut (
        .clk(clk),
        .rst(rst),
        .enable(enable),
        .d(d),
        .q(q),
        .q_n(q_n)
    );

    // Clock generation
    always begin
        #CLK_PERIOD clk = ~clk; // Toggle the clock every half period
    end
  
    always begin
      #($urandom%100) d = ~d; // Toggle the clock every half period
    end

    // Stimulus generation
    initial begin
        // Initialize signals
        clk = 0;
        enable = 1;
        d = 0;

        // Apply stimulus
        
        #5 
        // Vary the enable signal based on the percentage of the duty cycle
        forever begin
          #((1000 * ENABLE_PERCENTAGE / 100)) enable = ~enable;
          #((1000 * (100 - ENABLE_PERCENTAGE) / 100)) enable = ~enable;
        end
        
    end
    
    // Display simulation results
    initial begin
        $monitor("Time=%0t, clk=%b, enable=%b, d=%b, q=%b, q_n=%b", $time, clk, enable, d, q, q_n);
        $dumpfile("dump.vcd");
        $dumpvars;
        #10000 $finish;
    end

endmodule
