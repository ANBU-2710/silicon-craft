module demux1_4(
	input[3:0] a,
	input[1:0] sel,
	output[3:0] y0,y1,y2,y3
);
assign y0 = (sel==2'b00)?a:1'b0;
assign y1 = (sel==2'b01)?a:1'b0;
assign y2 = (sel==2'b10)?a:1'b0;
assign y3 = (sel==2'b11)?a:1'b0;
endmodule
