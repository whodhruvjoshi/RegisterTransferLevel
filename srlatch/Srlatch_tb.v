`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2022 01:50:26
// Design Name: 
// Module Name: Srlatch_tb
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

`include "Srlatch.v"
module Srlatch_tb;

// create test registers, then instantiate our module
 reg s, r;     // we can modify registers as we please to simulate the inputs
wire q, q_not; // we can't modify these, because they are assigned in our module
Srlatch latch(s, r, q, q_not);

// not a verilog construct,
// just for the testbench
integer x;

initial begin
    // for waveform analysis
    $dumpfile("Srlatch.vcd");
    $dumpvars(s, r, q, q_not);

    // case 1 (latch w/o state)
    s=0; r=0; #1
    $display("s=%b, r=%b ==> q=%b, q_not=%b # should be undefined",
              s, r, q, q_not);

    // case 2 (reset)
    s=0; r=1; #1
    $display("s=%b, r=%b ==> q=%b, q_not=%b # reset, so q=0",
              s, r, q, q_not);

    // case 3 (set)
    s=1; r=0; #1
    $display("s=%b, r=%b ==> q=%b, q_not=%b # set, so q=1",
              s, r, q, q_not);

    // case 4 (latch with state)
    s=0; r=0; #1
    $display("s=%b, r=%b ==> q=%b, q_not=%b # latch, so q=q (keep state)",
              s, r, q, q_not);

    // case 5 (invalid state)
    s=1; r=1; #1
    $display("s=%b, r=%b ==> q=%b, q_not=%b # invalid state, so discount error",
              s, r, q, q_not);
end

endmodule