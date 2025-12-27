module sipo(input clk,rst,serial_in,output reg [3:0]parallel_out);
always@(posedge clk )begin
	if(rst)
		parallel_out <= 4'b0000;
	else 
		parallel_out <= {parallel_out[2:0],serial_in}; //shift_left
		//parallel_out <= {serial_in,parallel_out[3:1]}; //shift_right
end
endmodule
