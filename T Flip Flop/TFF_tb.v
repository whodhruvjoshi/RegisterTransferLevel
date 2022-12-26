`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2022 19:05:51
// Design Name: 
// Module Name: TFF_tb
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

module TFF_tb;

// Inputs
reg T;
reg Clk;

// Outputs
wire Q;
wire Qbar;

// Instantiate the Unit Under Test (UUT)
TFF uut (
.T(T), 
.Clk(Clk), 
.Q(Q), 
.Qbar(Qbar)
);

 initial Clk = 0;
    always #100 Clk = ~Clk;
 initial T=0;
   always #100 T=~T;
initial begin
// Initialize Inputs
T = 0;
Clk = 0;
// Wait 100 ns for global reset to finish
 // Add stimulus here
end
endmodule  
