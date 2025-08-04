module clk_50_10_tb;
reg clk,rst;
wire clk_out;
clk_50_10 clk_10(
	.clk(clk),
	.rst(rst),
	.clk_out(clk_out)
);
initial begin 
	$dumpfile("clk_10.vcd");
	$dumpvars(0,clk_50_10_tb);
end
initial clk = 0;
always #10 clk = ~clk;
initial begin 
	$monitor("clk=%b|rst=1||clk_out=%b",clk,rst,clk_out);
	rst =0;
	#25;
	rst=1;
	#500;
	$finish;
end
endmodule
