`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2023 18:08:28
// Design Name: 
// Module Name: MODN_Counter_tb
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


module MODN_Counter_tb();
 reg clk,rst;
 wire [3:0]count;
 counter c1(clk,rst,count);
 initial begin
   clk = 0;
   forever #5 clk = ~clk;
 end
 initial begin
   rst = 0;
   #5 rst = 1;
   #10 rst = 0;
   #200 $finish;
 end
 initial 
   $monitor("%d%d",clk,count);
 initial begin
   $dumpfile("dump.vcd"); 
   $dumpvars;
 end
endmodule
