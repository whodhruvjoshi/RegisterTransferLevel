`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 14:11:47
// Design Name: 
// Module Name: Positive_Edge_Detector
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


module Positive_Edge_Detector(input data , input clock , output detector);
 reg data_d;
 
 always @ (posedge clock)
  begin
         data_d <= data;
     end
     assign detector = data & ~data_d;            
     endmodule 
