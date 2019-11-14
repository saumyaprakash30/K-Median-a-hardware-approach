`include "wallace16.v"
module top1;
reg[15:0] a,b;
wire[31:0] prod;
wallace16 w(a,b,prod);
initial
begin
a=16'd[8. 9.];b=16'd100;
end
initial
begin

$monitor("%d",prod);
end
endmodule
