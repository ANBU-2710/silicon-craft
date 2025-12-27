module d_ff_rsts_tb;
reg clk,rst,rst_n,d;
wire q;
d_ff_rsts d_ff(.clk(clk),.rst(rst),.rst_n(rst_n),.d(d),.q(q));
always #5 clk = ~clk;
initial begin
	$monitor("time = %0t | clk = %b | rst = %b | rst_n = %b | d = %b | q = %b",$time,clk,rst,rst_n,d,q);
	clk = 0;
	rst =0;
	rst_n = 1;
	d = 1;
	#9 rst_n = 0;
	#8 rst_n = 1;
	#10 rst =1;
	#10 rst =0;
	#10 d = 0;
	#10 d =1;
	#20 $finish;
end
initial begin
       $dumpfile("d_ff_rst.vcd");	
	$dumpvars(0,d_ff_rsts_tb);
end
endmodule
