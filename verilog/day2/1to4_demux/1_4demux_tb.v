module demux1_4_tb;
reg[3:0] a;
reg[1:0] sel;
wire[3:0] y0,y1,y2,y3;
integer i;
//instantiate the design
demux1_4 demux(
	.a(a),
	.sel(sel),
	.y0(y0),
	.y1(y1),
	.y2(y2),
	.y3(y3)
);
initial begin
	a=4'hA;
	$monitor("sel=%2b||y0=%h|y1=%h|y2=%h|y3=%h",sel,y0,y1,y2,y3);
	for(i=0;i<4;i=i+1)begin
		sel = i;
		#10;
	end
end
endmodule
