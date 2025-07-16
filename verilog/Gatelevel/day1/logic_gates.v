module logic_gates(a,b,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12);
  //declare input & output pins
  input a,b;
  output y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12;
  //here verilog code by gateprimitives for logic_gates
  and(y,a,b);
  or(y,a,b);
  xor(y,a,b);
  nand(y,a,b);
  nor(y,a,b);
  xnor(y,a,b);
  //buffers
  buf(y,a);
  bufif1(y,a,b); //here 'b' as a control signal also for not logic 
  bufif0(y,a,b);
  //not logic
  not(y,a);
  notif1(y,a,b);
  notif0(y,a,b);
endmodule
