module clk_div_1hz (
    input clk,       
    input rst,
    output reg clk_1hz
);

reg [25:0] count;
parameter MAX_COUNT = 25000000;

always@(posedge clk or negedge rst) begin
        if (!rst) begin
            count <= 0;
            clk_1hz =0;
            end
        else if(count == MAX_COUNT - 1)begin
            count <= 0;
            clk_1hz =~clk_1hz;
            end
       else 
                count <= count + 1;
end
/*
always@(posedge clk or negedge rst)begin
    if(!rst)
    clk_out =0;
   else if(count == MAX_COUNT - 1)
                clk_out <= ~clk_out;
end
*/
endmodule
