module fsub_tb;
reg a,b,bin;
wire d,bout;
integer i;
//instantiate the design to testbench
fsub fullsub(
        .a(a),
        .b(b),
        .bin(bin),
        .d(d),
        .bout(bout)
);
//give the test sequence
initial begin
        $monitor("time=%0t\t a=%b|b=%b|bin=%b||d=%b|bout=%b",$time,a,b,bin,d,bout);
        for(i=0;i<8;i=i+1)begin
                {a,b,bin}=i;
                #10;
        end
        #10;
        $finish;
end
endmodule
