module bcd_7seg_tb;
reg [3:0]bcd;
wire a,b,c,d,e,f,g;
integer i;
//instantiate the design
bcd_7seg segment(
	.bcd(bcd),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g)
);
initial begin 
	$monitor("|bcd=%d||a=%b|b=%b|c=%b|d=%b|e=%b|f=%b|g=%b|",bcd,a,b,c,d,e,f,g);
	for(i=0;i<=9;i=i+1)begin
		bcd=i;
		#10;
	end
end
endmodule
