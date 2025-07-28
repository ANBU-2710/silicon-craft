module d_ff_tb;
reg d,clk;
wire q,qbar;
integer i;
// instantiate design to testbench
d_ff dff(
	.d(d),
	.clk(clk),
	.q(q),
	.qbar(qbar)
);
initial clk =0;
always begin
       	#5 clk=~clk;
end
initial begin
	$monitor("time=%0t\t clk=%b| d=%b|q=%b|qbar=%b",$time,clk,d,q,qbar);
	for(i=0;i<8;i=i+1)begin
		d=i%2;
	#10;
end
#10;
$finish;
end
endmodule
