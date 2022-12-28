`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2022 17:06:02
// Design Name: 
// Module Name: Master_Slave_FF
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

module Master_Slave_FF ( din ,clk ,reset ,dout );

output dout ;

input din ;
input clk ;
input reset ;   

wire s;
wire in_clk;

assign in_clk = ~clk ;

d_flip_flop u0 (.din(din),
.clk(clk),
.reset(reset),
.dout(s));  

d_flip_flop u1 (.din(s),
.clk(in_clk),
.reset(reset),
.dout(dout)); 

endmodule

module d_flip_flop ( din ,clk ,reset ,dout );

output dout ;
reg dout;

input din ;
input clk ;
input reset ; 

always @ (posedge clk)
begin
 if (reset)
  dout <= 1;
 else
  dout <= din;
end

endmodule








