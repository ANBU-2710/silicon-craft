module clk_1hz_tb;
reg clk,rst;
wire clk_out;
clk_div_1hz clk1hz(
        .clk(clk),
        .rst(rst),
        .clk_out(clk_out)
);
initial begin
        $dumpfile("clk_10.vcd");
        $dumpvars(0,clk_1hz_tb);
end
initial clk = 0;
always #5 clk = ~clk;
initial begin
        $monitor("clk=%b|rst=1||clk_out=%b",clk,rst,clk_out);
        rst =0;
        #10;
        rst=1;
        #500;
        $finish;
end
    
endmodule
