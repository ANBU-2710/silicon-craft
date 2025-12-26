module fsub(
        input a,b,bin,
        output d,bout
);
//declare the wires
wire w1,w2,w3,w4,w5;
/*
 w1 is the out of a xor b
 w2 is the out of not of w1
 w3 is the out of not of a
 w4 is the out of w1 and bin
 w5 is the out of a and b
*/
xor(w1,a,b);
xor(d,w1,bin);
not(w2,w1);
not(w3,a);
and(w4,w2,bin);
and(w5,w3,b);
or(bout,w4,w5);
endmodule
