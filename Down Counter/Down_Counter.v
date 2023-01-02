`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2023 20:13:28
// Design Name: 
// Module Name: Down_Counter
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

module Down_Counter(input clk, reset, output [3:0] counter
    );
reg [3:0] counter_down;

// down counter
always @(posedge clk or posedge reset)
begin
if(reset)
 counter_down <= 4'hf;
else
 counter_down <= counter_down - 4'd1;
end 
assign counter = counter_down;
endmodule
