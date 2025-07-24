module hsub_tb;
reg a,b;
wire d,br;
integer i;
//instantiate design to testbench
hsub halfsub(
        .a(a),
        .b(b),
        .d(d),
        .br(br)
);
//give the test sequence and print the values
initial begin
        $monitor("time=%0t\t a=%b|b=%b|d=%d||br=%b",$time,a,b,d,br);
        for(i=0;i<4;i=i+1)begin
                {a,b}=i;
                #10;
        end
        #10;
        $finish;
end
endmodule
