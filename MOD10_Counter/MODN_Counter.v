`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2023 18:07:03
// Design Name: 
// Module Name: MODN_Counter
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
module MODN_Counter(clk,rst,count);
  input clk,rst;
  output reg [3:0]count;
  always@(posedge clk) begin
    if(rst == 1 || count == 9)
      count <= 0;
    else
      count <= count + 1;
  end
endmodule
  
