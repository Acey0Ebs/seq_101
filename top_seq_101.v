//top level design for sequence 101

module top_seq_101 (out,state,clk_led,in,rst_n,clk_in);

input in;
input rst_n;
input clk_in;
output out;
output [1:0] state;
output clk_led;

wire clk_w;

//clock divider instance
clk_div #(.PERIOD_OUT(3)) clk_div_inst (
     .clk_out(clk_w),
	  .clk_led(clk_led),
	  .clk_in(clk_in)
);

//seq_101 instance
seq_101 seq_101_inst (
     .out(out),
	  .state(state),
	  .in(in),
	  .clk(clk_w),
	  .rst_n(rst_n)
);

endmodule