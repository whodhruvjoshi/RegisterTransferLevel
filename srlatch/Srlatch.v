`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2022 01:49:13
// Design Name: 
// Module Name: Srlatch
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


module Srlatch(
    input wire S, R,
    output wire Q, Q_not);

    assign Q     = ~(R | Q_not);
    assign Q_not = ~(S | Q);
endmodule
