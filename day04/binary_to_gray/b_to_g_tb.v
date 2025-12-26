module b_to_g_tb;
reg[3:0]binary;
wire[3:0]gray;
integer i;
b_to_g bin_gra(
	.bin(binary),
	.gout(gray)
);
initial begin 
	$monitor("binary=%4b||gray=%4b",binary,gray);
	for(i=0;i<16;i=i+1)begin
		binary = i;
		#10;
	end
end
endmodule
