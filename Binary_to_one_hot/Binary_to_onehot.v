`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2023 20:13:19
// Design Name: 
// Module Name: Binary_to_onehot
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


module Binary_to_onehot(dat1 , result1);
parameter wid=4;
parameter result_wid= 16;
input [wid-1:0] dat1;
output [result_wid -1:0] result1;
assign result1 = 1'b1<<dat1 ;
endmodule
