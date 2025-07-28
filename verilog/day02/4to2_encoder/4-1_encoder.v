module encoder4_2(
	input e3,e2,e1,e0,
	output y1,y0
);
assign y1 = e3|e2;
assign y0 = e3|e1;
endmodule
