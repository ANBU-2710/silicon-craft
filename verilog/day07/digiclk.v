module digi_clk(
input clk,
//output reg sec_led,
output reg[3:0]anode,
output reg[6:0]seg
 );
 reg[24:0]count;
 reg clk_1hz;
 reg [1:0]clk_1khz;
 reg [14:0]count1;
 always @(posedge clk) begin
 count<=count+1;
 if(count==25000000 - 1)begin
 count<=0;
 clk_1hz=~clk_1hz;
 //sec_led<=~sec_led;
 end
 end
 always @(posedge clk)begin
 count1<=count1+1;
 if(count1==25000 - 1)begin
 count1<=0;
 clk_1khz<=clk_1khz+1;
 end
 end
 reg[5:0] sec=0;
 reg [5:0]min=0;
 //reg [4:0]hr=0;
 always@(posedge clk_1hz)begin
 if(sec==59)begin
 sec<=0;
 if(min==59) //begin
 min<=0;
 //if(hr==23)
 //hr<=0;
 //else
 //hr<=hr+1;
 //end
 else
 min<=min+1;
 end
 else
 sec<=sec+1;
 end
wire[3:0]min_ones=min%10;
wire[3:0]min_tens=min/10;
//wire[3:0]hr_ones=hr%10;
//wire[3:0]hr_tens=hr/10;
wire[3:0]sec_ones=sec%10;
wire[3:0]sec_tens=sec/10;
reg[3:0]digit;
always @(*)begin
case(clk_1khz)
2'd0: begin digit=sec_ones; anode=4'b1000;end
2'd1: begin digit=sec_tens; anode=4'b0100;end
//2'd0: begin digit=min_ones; anode=4'b1000;end
//2'd1: begin digit=min_tens; anode=4'b0100;end
2'd2: begin digit=min_ones; anode=4'b0010;end
2'd3: begin digit=min_tens; anode=4'b0001;end
//2'd2: begin digit=hr_ones; anode=4'b0010;end
//2'd3: begin digit=hr_tens; anode=4'b0001;end
endcase
end
always @(*)begin
case(digit)
   4'd0: seg = 7'b1000000;
   4'd1: seg = 7'b1111001;
   4'd2: seg = 7'b0100100;
   4'd3: seg = 7'b0110000;
   4'd4: seg = 7'b0011001;
   4'd5: seg = 7'b0010010;
   4'd6: seg = 7'b0000010;
   4'd7: seg = 7'b1111000;
   4'd8: seg = 7'b0000000;
   4'd9: seg = 7'b0010000;
endcase
end

endmodule
