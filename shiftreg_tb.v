`include "shiftreg.v"
module top;
reg clk, reset;
reg [3:0]a;
reg [1:0]s;
wire [3:0]q;

initial
	begin
$dumpfile("shiftreg_tb.vcd");
$dumpvars(0,top);
end

shiftreg k(a,s,q,clk,reset);


initial
begin
a=4'b1101;
clk =1;
reset=1;
s=2'b11;
#10 reset =0;
s=2'b10;
end


always
#5  clk =  ! clk;

always@(q)
	begin
 		$display($time," d=%b, clk=%b, rst=%b,q=%b ,s=%b", a, clk, reset, q,s);
	end

initial

	#65 $finish;
endmodule
