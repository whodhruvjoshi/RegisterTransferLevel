`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 13:18:50
// Design Name: 
// Module Name: PIPO_Reg
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


module PIPO_Reg(din,clk,rst,dout);
input [3:0] din;
input clk,rst;
output [3:0] dout;
wire [3:0] din;
wire clk,rst;
reg [3:0] dout;
always @(posedge clk or negedge rst)
begin
if(!rst)
begin
dout <= 4'b0;
end
else 
begin
dout <= din;
end
end
endmodule
