module jk_ff_tb;
reg j,k,clk;
wire q,qbar;
integer i;
//instantiate the design to testbench
jk_ff jkff(
        .j(j),
        .k(k),
        .clk(clk),
        .q(q),
        .qbar(qbar)
);
initial	clk=0;
always #5 clk=~clk;
initial begin
        $monitor("time=%0t\t clk=%b|j=%b|k=%b||q=%b|qbar=%b",$time,clk,j,k,q,qbar);
	for(i=0;i<10;i=i+1)begin
		{j,k}=i;
		#10;
	end
	#10;
	$finish;
end
endmodule                                                                          
