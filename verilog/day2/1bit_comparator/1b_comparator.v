module comp_1b(
	input a,b,
	output gt,eq,lt
);
assign lt = (a<b)? 1'b1:1'b0;
assign eq = (a==b)? 1'b1:1'b0;
assign gt = (a>b)? 1'b1:1'b0;
endmodule
