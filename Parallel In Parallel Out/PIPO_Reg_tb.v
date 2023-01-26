`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 13:25:15
// Design Name: 
// Module Name: PIPO_Reg_tb
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


module PIPO_Reg_tb( );
reg [3:0] din;
reg clk,rst;
wire [3:0] dout;
PIPO_Reg pipo_ins(din,clk,rst,dout);
initial 
begin
rst = 1'b0;clk = 1'b0;
end
always
begin#40 clk = ~clk;
end
initial
begin
#50 rst = 1'b1;
#15 din = 4'b1010;
#95 din = 4'b1110;#5000 $finish;
end
endmodule
