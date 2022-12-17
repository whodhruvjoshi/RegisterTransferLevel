`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2022 22:53:46
// Design Name: 
// Module Name: comparator_tb
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

 module tb_comparator;  
 reg [1:0] A, B;  
 wire A_less_B, A_equal_B, A_greater_B;  
 integer i;  
 // device under test  
 comparator dut(A,B,A_less_B, A_equal_B, A_greater_B);  
 initial begin  
      for (i=0;i<4;i=i+1)  
      begin   
           A = i;  
           B = i + 1;  
           #20;  
      end   
      for (i=0;i<4;i=i+1)  
      begin   
           A = i;  
           B = i;  
           #20;  
      end   
      for (i=0;i<4;i=i+1)  
      begin   
           A = i+1;  
           B = i;  
           #20;  
      end   
 end   
 endmodule   
