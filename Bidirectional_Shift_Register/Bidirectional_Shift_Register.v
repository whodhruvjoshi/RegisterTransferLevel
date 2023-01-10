`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2023 19:00:01
// Design Name: 
// Module Name: Bidirectional_Shift_Register
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
module Bidirectional_Shift_Register  #(parameter MSB=8) (  input d,                 
                                        input clk,                      
                                        input en,                      
                                        input dir,                     
                                        input rstn,                     
                                        output reg[MSB-1:0] out); 
                                         always @ (posedge clk)  
                                             if (!rstn)  
                                                out <= 0;  
                                             else begin  
                                                if (en)  
                                                   case (dir)  
                                                      0 :  out <= {out[MSB-2:0], d};  
                                                      1 :  out <= {d, out[MSB-1:1]};  
                                                   endcase  
                                                else  
                                                   out <= out;  
                                             end  
                                       endmodule  
