module g_to_b_tb;
reg [3:0]gray;
wire[3:0]binary;
integer i;
g_to_b g_b(
	.gin(gray),
	.bout(binary)
);
initial begin 
	$monitor("gray=%4b||binary=%4b",gray,binary);
	for(i=0;i<16;i=i+1)begin
		gray = i;
		#10;
	end
end
endmodule
