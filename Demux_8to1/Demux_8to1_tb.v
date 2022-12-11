`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2022 18:42:22
// Design Name: 
// Module Name: Demux_8to1_tb
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
module TestModule;
// Inputs
reg in;
reg s0;
reg s1;
reg s2;

// Outputs
wire d0;
wire d1;
wire d2;
wire d3;
wire d4;
wire d5;
wire d6;
wire d7;

Demux_8to1 uut (
.in(in),
.s0(s0),
.s1(s1),
.s2(s2),
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.d4(d4),
.d5(d5),
.d6(d6),
.d7(d7));

initial begin
// Initialize Inputs
in = 0;
s0 = 0;
s1 = 0;
s2 = 0;
#100;

in = 1;
s0 = 0;
s1 = 1;
s2 = 0;

#100;

end
endmodule

