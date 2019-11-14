`include "fullsubtractor64bit.v"
module top;
reg signed [63:0] a,b;
reg ci;
wire signed [63:0] sum;
wire co;
fullsubtractor64bit f(a,b,ci,sum,co);
initial
begin
a=350748.5;b=352716;ci=1'b1;
end
initial
begin

$monitor("%d",sum);
end
endmodule
