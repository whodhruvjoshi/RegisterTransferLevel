`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2023 20:03:17
// Design Name: 
// Module Name: Up_Down_Counter
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
module Up_Down_Counter(input clk, reset,up_down, output[3:0]  counter
    );
reg [3:0] counter_up_down;

// down counter
always @(posedge clk or posedge reset)
begin
if(reset)
 counter_up_down <= 4'h0;
else if(~up_down)
 counter_up_down <= counter_up_down + 4'd1;
else
 counter_up_down <= counter_up_down - 4'd1;
end 
assign counter = counter_up_down;
endmodule
