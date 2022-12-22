`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2022 18:55:09
// Design Name: 
// Module Name: JKFF
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


module JKFF( input j, input k , input clk, output q);

reg q ;

always@(posedge clk)

case({j,k})
2'b00 : q<=q ;
2'b01 : q<=0 ;
2'b10 : q<=1 ;
2'b11 : q<=~q ;
endcase
endmodule
