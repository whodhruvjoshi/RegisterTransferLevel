`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2023 23:26:42
// Design Name: 
// Module Name: PISO_reg
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


module PISO_reg(input load, clk, rst,
             input [7:0] data_in,
             output reg data_out);
             reg [7:0] data_reg;
               
               always @ (posedge clk or negedge rst) begin
                 if (~rst)
                   data_reg <= 8'h00; // Reset PISO register array on reset
                 else begin
                   
                   // Load the data to the PISO register array and reset the serial data out register
                   if (load)
                       {data_reg, data_out} <= {data_in, 1'b0};
                   // Shift the loaded data 1 bit right; into the serial data out register
                   else
                       {data_reg, data_out} <= {1'b0, data_reg[7:0]};
                 end
               end
endmodule
