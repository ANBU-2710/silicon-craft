module logic_gates_tb;
  //assign inputs to reg
  //assign outputs to wire
  reg a,b;
  wire y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12;
  //instantiate the logicgate module
  logic_gates gates(
    .a(a),
    .b(b),  
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7),
    .y8(y8),
    .y9(y9),
    .y10(y10),      
    .y11(y11),
    .y12(y12)
  );
  //open initial block
  initial begin
    //use $monitor that continuously displays results whenever the value changes in inputs
    $monitor("Time=%0t,a= %b : b= %b --> Yand=%b|Yor=%b|Yxor=%b|Ynand=%b|Ynor=%b|Yxnor=%b|Ybuf=%b|Yb1=%b|Yb0=%b|Ynot=%b|Yn1=%b|Yno=%b",
             $time,a,b,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12);
    a=0;b=0;
    #10;    //delay for the input,the values can change after the delay
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    $finish; // here $finish used to stop the simulation
  end        //here close the initial block
endmodule
