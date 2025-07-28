module comparator_2b(
	input [1:0] a,b,
	output gt,eq,lt
);
assign gt = a > b;
assign eq = a == b;
assign lt = a < b;
endmodule
