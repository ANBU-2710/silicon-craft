module encoder4_2_tb;
	wire e3,e2,e1,e0;
        wire y1,y0;
        reg[3:0] ein;
	assign {e3,e2,e1,e0} = ein;
//instantiate the design to test bench
encoder4_2 encoder(
	.e3(e3),
	.e2(e2),
	.e1(e1),
	.e0(e0),
	.y0(y0),
	.y1(y1)
);
initial begin
$monitor("ein=%4b||y1=%b,y0=%b",ein,y1,y0);
	ein = 4'b0001;
	#10;
	ein = 4'b0010;
	#10;
	ein = 4'b0100;
	#10;
	ein = 4'b1000;
	#10;
	ein = 4'b1111;
	#10;
	$finish;
end
endmodule
