`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 17:35:59
// Design Name: 
// Module Name: Majority_Circuit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Majority_Circuit_tb();
reg a,b,c;
wire out;
integer i;

Majority_Circuit UnderTest(out,a,b,c);
initial
 begin 
    for(i=0;i<8;i=i+1) 
    begin
      #5 {a,b,c}=i;
    end
  end
  initial
   begin 
 	 $monitor(a,b,c,out);
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
