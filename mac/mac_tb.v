`include "mac.v"
module top1;

reg [15:0] a,b;
wire [35:0] out2;
reg clk,reset;

mac m1(a,b,clk,reset,out2);

initial
begin
  #10;
  a=5; b=10;
  #10;
  a=3; b=4;
  #10;
  a=1; b=6;
  #10;
  a=2; b=3;
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
  $monitor($time,"\ta=%d b=%d out=%d",a,b,out2);
  $dumpfile("mac.vcd");
  $dumpvars;
  #50 $finish;
end
endmodule
