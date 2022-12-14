`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2022 18:44:46
// Design Name: 
// Module Name: bcdto7segment_tb
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


module bcdto7segment_tb;
 reg [3:0] bcd;
   wire [6:0] seg;
   integer i;

   // Instantiate the Unit Under Test (UUT)
   bcdto7segment uut (
       .bcd(bcd), 
       .seg(seg)
   );

//Apply inputs
   initial begin
       for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
       begin
           bcd = i; 
           #10; //wait for 10 ns
       end     
   end
endmodule
