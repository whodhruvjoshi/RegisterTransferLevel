`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2022 14:25:34
// Design Name: 
// Module Name: Half_Subtractor_tb
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
`include "Half_Subtractor.v"
module Half_Subtractor_tb;
wire D, B;
reg X, Y;
Half_Subtractor_2 Instance0 (D, B, X, Y);
initial begin
    X = 0; Y = 0;
#1  X = 0; Y = 1;
#1  X = 1; Y = 0;
#1  X = 1; Y = 1;
end
initial begin
    $monitor ("%t, X = %d| Y = %d| B = %d| D = %d", $time, X, Y, B, D);
    $dumpfile("dump.vcd");
    $dumpvars();
end
endmodule

