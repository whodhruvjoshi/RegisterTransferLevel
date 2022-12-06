`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2022 23:08:16
// Design Name: 
// Module Name: Half_Adder_tb
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


module Half_Adder_tb();
reg t_a , t_b ;
wire SUM , CARRY ;

Half_Adder dut(.a(t_a), .b(t_b) , .sum(SUM) , .carry(CARRY));
initial 
begin

t_a = 0 ; t_b = 0;

#10 
t_a = 0 ; t_b = 1;
#10
t_a = 1 ; t_b = 0;
#10
t_a = 1 ; t_b = 1;
#10
$stop;
end
endmodule
