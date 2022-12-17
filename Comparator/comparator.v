`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2022 22:52:38
// Design Name: 
// Module Name: comparator
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

module comparator(input [1:0] A,B, output A_less_B, A_equal_B, A_greater_B);  
 wire tmp1,tmp2,tmp3,tmp4,tmp5, tmp6, tmp7, tmp8;  
 // A = B output   
 xnor u1(tmp1,A[1],B[1]);  
 xnor u2(tmp2,A[0],B[0]);  
 and u3(A_equal_B,tmp1,tmp2);  
 // A less than B output   
 assign tmp3 = (~A[0])& (~A[1])& B[0];  
 assign tmp4 = (~A[1])& B[1];  
 assign tmp5 = (~A[0])& B[1]& B[0];  
 assign A_less_B = tmp3 | tmp4 | tmp5;  
 // A greater than B output   
 assign tmp6 = (~B[0])& (~B[1])& A[0];  
 assign tmp7 = (~B[1])& A[1];  
 assign tmp8 = (~B[0])& A[1]& A[0];  
 assign A_greater_B = tmp6 | tmp7 | tmp8;  
 endmodule 
