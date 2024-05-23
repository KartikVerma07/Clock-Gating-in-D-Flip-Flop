module dff_with_clock_gating (
    input wire clk,        // Main clock input
    input wire rst,        // Main rst
    input wire enable,     // Clock gating enable
    input wire d,          // D input for the flip-flop
    output q,         // Q output
    output gated_clk
    //output reg q_n         // Q' output
);

    // Clock gating logic
   // wire gated_clk;
    assign gated_clk = clk & enable;

    // Positive edge-triggered D flip-flop with negative edge reset
    pos_edge_triggered_dff_neg_edge_reset dff (
        .clk(gated_clk),
      .rst(rst),         // Reset 
        .d(d),
        .q(q)
        //.q_n(q_n)
    );

endmodule

// Code your design here
module pos_edge_triggered_dff_neg_edge_reset (
    input wire clk,  // Clock input
    input wire rst,  // Reset input (active low)
    input wire d,    // D input
    output reg q    // Q output
    //output reg q_n   // Q' output
);

    always @(posedge clk or negedge rst) begin
        if (~rst) begin
            // Reset condition
            q <= 0'b0;
           // q_n <= 1'b1;
        end else begin
            // Positive edge-triggered behavior
            q <= d;
           // q_n <= ~d;
        end
    end

endmodule