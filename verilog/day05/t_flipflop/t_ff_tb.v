module t_ff_tb;
reg t,clk;
wire q,qbar;
integer i;
t_ff tff(
	.t(t),
	.clk(clk),
	.q(q),
	.qbar(qbar)
);
initial clk=0;
always #5 clk=~clk;
initial begin
       t=0;
       clk=0;       
	$monitor("time=%0t\t clk=%b|t=%b||q=%b|qbar=%b",$time,clk,t,q,qbar);
	for(i=0;i<4;i=i+1)begin
		t=i%2;
		#10;
	end
	#10
	$finish;
end
endmodule
