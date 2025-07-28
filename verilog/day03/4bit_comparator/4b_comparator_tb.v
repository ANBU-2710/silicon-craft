module comp_4b_tb;
reg[3:0] a,b;
wire lt,eq,gt;
integer i;
//instantiate design
comp_4b comp(
	.a(a),
	.b(b),
	.lt(lt),
	.eq(eq),
	.gt(gt)
);
initial begin
	$monitor("a=%4b|b=%4b||lt=%b|eq=%b|gt=%b",a,b,lt,eq,gt);
	for(i=0;i<10;i=i+1)begin
		{a,b}=$random;
		#10;
	end
end
endmodule

