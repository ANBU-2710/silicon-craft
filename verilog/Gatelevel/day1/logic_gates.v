module logic_gates(a,b,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12);
  //declare input & output pins
  input a,b;
  output y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12;
  //here verilog code by gateprimitives for logic_gates
  and(y1,a,b);
  or(y2,a,b);
  xor(y3,a,b);
  nand(y4,a,b);
  nor(y5,a,b);
  xnor(y6,a,b);
  //buffers
  buf(y7,a);
  bufif1(y8,a,b); //here 'b' as a control signal also for not logic 
  bufif0(y9,a,b);
  //not logic
  not(y10,a);
  notif1(y11,a,b);
  notif0(y12,a,b);
endmodule
