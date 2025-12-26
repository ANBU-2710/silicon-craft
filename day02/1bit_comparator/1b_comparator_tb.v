module comp_1b_tb;
reg a,b;
wire lt,eq,gt;
integer i;
//instantiate the design module
comp_1b comp(
	.a(a),
	.b(b),
	.lt(lt),
	.eq(eq),
	.gt(gt)
);
initial begin
	$monitor("a=%b|b=%b||lt=%b|eq=%b|gt=%b",a,b,lt,eq,gt);
	for(i=0;i<4;i=i+1)begin
		{a,b}=i;
		#10;
	end
end

endmodule
