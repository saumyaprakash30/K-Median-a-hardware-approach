`include "wallace16.v"
module top1;
reg[15:0] a,b;
wire[31:0] prod;
wallace16 w(a,b,prod);
initial
begin
a=16'd3;b=16'd2;
end
initial
begin

$monitor("%d",prod);
end
endmodule
