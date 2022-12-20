`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2022 19:18:46
// Design Name: 
// Module Name: srff_tb
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

//include "srff.v"
module srff_tb;
reg S,R, CLK;
wire Q, QBAR;

//2. Instantiate the module we want to test. We have instantiated the srff_behavior

srff(.q(Q), .qbar(QBAR), .s(S), .r(R), .clk(CLK)); // instantiation by port name.

//3. Monitor TB ports
$monitor ("simtime = %g, CLK = %b, S = %b, R = %b, Q = %b, QBAR = %b", $time, CLK, S, R, Q, QBAR);

//4. apply test vectors
initial 
begin
clk=0 ;
forever
#10 clk = ~clk ;  
end 
initial 
begin 
 S= 1; R= 0;
 #100; S= 0; R= 1; 
 #100; S= 0; R= 0; 
 #100;  S= 1; R=1; 
end 
endmodule
