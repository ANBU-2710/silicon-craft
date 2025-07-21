module hsub(
        input a,b,
        output d,br
);
//declare wire
wire w1;
//w1 is the out of a not
xor(d,a,b);
not(w1,a);
and(br,w1,b);
endmodule
