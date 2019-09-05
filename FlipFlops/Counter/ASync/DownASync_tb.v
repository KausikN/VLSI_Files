`include "DownASync.v"

module DownASync_tb;

reg clk, reset;
wire [4:1] q;

initial
	begin
		$dumpfile("DownASync_tb.vcd");
		$dumpvars(0, DownASync_tb);
	end

DownASync Downasync(clk, reset, q);


initial
	begin
		reset=0;
		clk =0;
	end

always #5  
	clk =  ! clk; 

initial
	$monitor($time, ": clk=%b, rst=%b,q=%b\n", clk, reset, q);

initial
	#100 $finish;
endmodule
