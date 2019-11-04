`include "wallace.v"
module top;
reg [7:0]a;
reg [7:0]b;
wire [15:0]result;

wallace W(a,b,result);

initial
begin
    a=8'b00010010;   b=8'b00100111;
    #5 a=8'b00100011; b=8'b00110010;
end

initial
begin
	$monitor($time, " a = %d, b = %d, result = %d",a,b,result);
	$dumpfile("wallace.vcd");
	$dumpvars;
end

endmodule
