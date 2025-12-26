module clk_50_10(
	input clk,rst,
	output reg clk_out
);
reg [2:0] count;
always@(posedge clk or negedge rst)begin 
	if(!rst)begin
	count<=0;
	clk_out=0;
end
else if(count==3'b100)begin
		count <=0;
		clk_out = ~clk_out;
	end
	else
		count <= count+1;

end


endmodule                                               
