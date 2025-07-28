module fadd_tb;
reg a,b,cin;
wire sum,cout;
//instantiate the design to test bench
fadd fulladd(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
);
initial begin
        $monitor("time=%0t\t a=%b|b=%b|cin=%b||sum=%b||carry=%b",$time,a,b,cin,sum,cout);
        //give the test sequence
        a=0;b=0;cin=0;
        #10;
        a=0;b=0;cin=1;
        #10;
        a=0;b=1;cin=0;
        #10;
        a=0;b=1;cin=1;
        #10;
        a=1;b=0;cin=0;
        #10;
        a=1;b=0;cin=1;
        #10;
        a=1;b=1;cin=0;
        #10;
        a=1;b=1;cin=1;
end
endmodule
