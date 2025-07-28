module comp_2b_tb;
reg[1:0]a,b;
wire gt,eq,lt;
integer i;
//instantiate the design
comparator_2b comp(
	.a(a),
	.b(b),
	.gt(gt),
	.eq(eq),
	.lt(lt)
);
initial begin
	$monitor("a=%2b|b=%2b||gt=%b|eq=%b|lt=%b",a,b,gt,eq,lt);
	for(i=0;i<16;i=i+1)begin
		{a,b}=i;
		#10;
	end
end
endmodule

