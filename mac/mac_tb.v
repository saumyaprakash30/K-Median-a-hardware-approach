`include "mac.v"
module top1;
reg [15:0] a,b;
wire [35:0] out2;
reg clk,reset;
mac m1(a,b,clk,reset,out2);
initial
begin
#10;
a=2;b=3;
#10;
a=3;b=2;
#10;
a=4;b=1;
end
initial
begin
reset=1;
clk =0;
a=16'd0;
b=16'd0;
#5 reset=0;
forever #5 clk=~clk;
end
initial
begin
#40;
$display("%d",out2);
$finish;
end
endmodule
