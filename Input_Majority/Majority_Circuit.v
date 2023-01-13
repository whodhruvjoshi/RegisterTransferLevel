`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2023 17:32:57
// Design Name: 
// Module Name: Majority_Circuit
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

module Majority_Circuit(A,B,C,OUT);
input A,B,C ;
output OUT ;
wire X;
wire Y;
wire Z;

and(X,A,B);
and(Y,B,C);
and(Z,C,A);

or(OUT,X,Y,Z);
endmodule
