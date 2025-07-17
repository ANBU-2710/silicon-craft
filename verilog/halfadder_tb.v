module halfadder_tb;
  reg a,b;
  wire s,c;
  //instantiate the design module to testbench
  halfadder h_add(
    .a(a),
    .b(b),
    .sum(s),
    .cout(c)
    );
  //use $dumpfile,$dumpvars to see waveform in gtkwave
  //dumping the values
  initial begin
    $dumpfile("h_add.vcd");
    $dumpvars(0,halfadder_tb);
  end
  initial begin
    $monitor("Time=%0t\t a=%b|b=%b||s=%b|c=%b",$time,a,b,s,c);
    a=0;b=0;
    #10;
    a=0;b=1;
    #10;
    a=1;b=0;
    #10;
    a=1;b=1;
    $finish;
  end
endmodule
