module logic_gates(a,b,c,y);
  //declare input & output pins
  input a,b,c;
  output y;
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
