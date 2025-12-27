module sipo_tb;
reg clk,rst,serial_in;
wire[3:0] parallel_out;
sipo sipo_dut(.clk(clk),.rst(rst),.serial_in(serial_in),.parallel_out(parallel_out));
always #5 clk = ~clk;
initial begin
	$monitor("time = %0t | rst = %b | serial_in = %b | parallel_out = %b",$time,rst,serial_in,parallel_out);
	clk = 0;
	rst = 1;
	serial_in = 0;
	
	#10 rst = 0;

	#10 serial_in = 1;
	#10 serial_in = 0;
	#10 serial_in = 0;
	#10 serial_in = 1;

	#10 $finish;
end
initial begin
	$dumpfile("sipo.vcd");
	$dumpvars(0,sipo_tb);
end

endmodule
