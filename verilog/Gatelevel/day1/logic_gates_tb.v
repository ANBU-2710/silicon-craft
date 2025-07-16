module logic_gates_tb;
  //assign inputs to reg
  //assign outputs to wire
  reg a,b;
  wire y;
  //instantiate the logicgate module
  logic_gates gates(
    .a(a),
    .b(b), 
    .y(y)
  );
  //open initial block
  initial begin
    $monitor("Time=%0t,a= %b : b= %b --> y=%b",$time,a,b,y);
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1,b=1;
    $finish;
  end
endmodule
