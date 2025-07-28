module sr_ff_tb;
reg s,r,clk;
wire q,qbar;
integer i;
//instantiate the design to testbench
sr_ff sff(
        .s(s),
        .r(r),
        .clk(clk),
        .q(q),
        .qbar(qbar)
);
initial	clk=0;
always #5 clk=~clk;
initial begin
        $monitor("time=%0t\t clk=%b|s=%b|r=%b||q=%b|qbar=%b",$time,clk,s,r,q,qbar);
        for(i=0;i<5;i=i+1)begin
		{s,r}=i;
		#10;
	end
	#10;
	$finish;
end
endmodule                                                                            
