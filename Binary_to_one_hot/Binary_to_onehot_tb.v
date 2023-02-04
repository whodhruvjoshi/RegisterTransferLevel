`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2023 20:17:56
// Design Name: 
// Module Name: Binary_to_onehot_tb
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


module Binary_to_onehot_tb();

 localparam wid = 4;
 localparam result_wid = 16;
 integer i;
 

 reg [wid-1:0] dat1;
 wire [result_wid-1:0] result1;

 Binary_to_onehot dut(dat1,result1);

 initial 
 begin
   for( i=0; i<16; i=i+1)
   begin
     dat1 = i;
     #5;
   end
 end
 
 initial
 begin
 $monitor("Binary Value: %b | One hot encoded value : %b", dat1,result1);
 #300 $finish;
 end

endmodule
