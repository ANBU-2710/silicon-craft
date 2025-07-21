module mux4_1_tb;
reg s1,s0,i0,i1,i2,i3;
wire y;
integer i;
//instantiate design to testbench
mux4_1 muxb(
.s1(s1),
.s0(s0),
.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.y(y)
);
//dumping the values
initial begin
$dumpfile("4_1mux.vcd");
$dumpvars(0,mux4_1_tb);
end
//declare input values
initial begin
$monitor("Time=%0t\t s1=%b|s0=%b|i0=%b|i1=%b|i2=%b|i3=%b||y=%b|",$time,s1,s0,i0,i1,i2,i3,y);
for(i=0;i<10;i=i+1)begin
{s1,s0,i0,i1,i2,i3}=$random;
#10;
end
end
endmodule
