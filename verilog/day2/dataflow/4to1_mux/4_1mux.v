module mux4_1(s1,s0,i0,i1,i2,i3,y);
input s1,s0;
input i0,i1,i2,i3;
output wire y;  //here the LHS must be net so declare wire(optional)
//using bitwise operator
assign y = (~s1 & ~s0 & i0)|(~s1 & s0 & i1)|(s1 & ~s0 & i2)|(s1 & s0 & i3);
endmodule
