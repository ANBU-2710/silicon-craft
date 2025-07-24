module fadd(
        //decalre the port list
        input a,b,cin,
        output sum,cout
);
wire w1,w2,w3;
/*w1 is the out of a xor b
  w2 is the out of w1 and cin
  w3 is the out of a and b
*/
xor(w1,a,b);
xor(sum,w1,cin);
and(w2,w1,cin);
and(w3,a,b);
or(cout,w2,w3);
endmodule
