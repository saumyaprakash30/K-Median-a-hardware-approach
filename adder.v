`include "fulladder16bit.v"
module top;
reg [15:0] a,b;
reg ci;
wire [15:0] sum;
wire co;
fulladder16bit f(a,b,ci,sum,co);
initial
begin
a=16'd0;b=16'd3;ci=1'b0;
end
initial
begin

$monitor("%d",sum);
end
endmodule
