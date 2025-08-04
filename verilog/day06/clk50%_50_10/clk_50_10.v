module clk_50_10(
input clk,rst,
        output reg clk_out
);
reg [2:0] count;
always@(posedge clk or negedge rst)begin
        if(!rst)
        count <= 0;
else if(count==3'b100)begin
                count <=0;
                clk_out = 0;
                end
        
else 
                count <= count+1;
                

end

always@(negedge clk or negedge rst)begin
if(!rst)
clk_out <= 0;
 else if(count == 3'b010)
            clk_out <= ~clk_out;
end

endmodule
