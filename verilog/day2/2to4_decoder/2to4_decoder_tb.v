module decoder2_4_tb;
reg [1:0] din;
wire a,b;
wire d0,d1,d2,d3;
assign {a,b} = din;
//instantiate the design to testbench
decoder2_4 decoder(
	.a(a),
	.b(b),
	.d0(d0),
	.d1(d1),
	.d2(d2),
	.d3(d3)
);
initial begin 
	$monitor("din=%2b||d0=%b|d1=%b|d2=%b|d3=%b",din,d0,d1,d2,d3);
	din=2'b00;
	#10;
	din=2'b01;
	#10;
	din=2'b10;
	#10;
	din=2'b11;
	#10;
	$finish;
end
endmodule
