`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2022 20:36:48
// Design Name: 
// Module Name: Full_Subtractor_tb
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


//`include "Full_Subtractor.v"
module Full_Subtractor_tb;
wire D, B;
reg X, Y, Z;
Full_Subtractor Instance0 (D, B, X, Y, Z);
initial begin
    X = 0; Y = 0; Z = 0;
#1  X = 0; Y = 0; Z = 1;
#1  X = 0; Y = 1; Z = 0;
#1  X = 0; Y = 1; Z = 1;
#1  X = 1; Y = 0; Z = 0;
#1  X = 1; Y = 0; Z = 1;
#1  X = 1; Y = 1; Z = 0;
#1  X = 1; Y = 1; Z = 1; 
end
initial begin
    $monitor ("%t, X = %d| Y = %d| Z = %d| B = %d| D = %d", $time, X, Y, Z, B, D);
    $dumpfile("dump.vcd");
    $dumpvars();
end
endmodule
