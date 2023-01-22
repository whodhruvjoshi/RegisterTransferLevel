`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.01.2023 20:42:21
// Design Name: 
// Module Name: SIPO_Reg
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
module dff(d,clk,q);
    input d,clk;
    output q;
    reg q=0;
    always @ (posedge clk)
    begin
    q<=d;
    end
endmodule 


module SIPO_Reg(d, clk, q);
input d,clk;
    output [3:0]q;
    dff aa(d, clk, q[3]);
    dff bb(q[3], clk, q[2]);
    dff cc(q[2], clk, q[1]);
    dff dd(q[1], clk, q[0]);
endmodule
