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
    $
