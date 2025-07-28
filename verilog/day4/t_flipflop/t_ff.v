module t_ff(
	input t,
	input clk,
	output reg q,
	output qbar
);
initial q=0;
always@(posedge clk)begin
	if(t==1)
		q<=~q;
	else
		q<=q;
end
assign qbar = ~q;
endmodule
