module d_ff_rsts(input clk,rst,rst_n,d,output reg q);
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		q <= 1'b0;
	else if(rst)
		q <= 1'b0;
	else
		q <= d;
end
endmodule
