`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2023 23:27:57
// Design Name: 
// Module Name: PISO_reg_tb
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


module PISO_reg_tb();
reg clk, rst, load;
  reg [7:0] data_in;
  wire data_out;
   PISO_reg u1 (load, clk, rst, data_in, data_out);
   always #1 clk = ~clk;
     
     initial begin
       $dumpfile("dump.vcd");
       $dumpvars(0);
     end
     
     initial begin
       clk = 0; rst = 0; load = 0; data_in = 8'h00;
       
       #3 rst = 1;
       
       #2 load = 1; data_in = 8'd15;
       
       #2 load = 0;
       
       #16 load = 1; data_in = 8'd255;
       
       #2 load = 0;
       
       #16 load = 1; data_in = 8'd0;
       
       #2 load = 0;
       
       #18 $stop;
       
     end
     
  
  
  
  
endmodule
