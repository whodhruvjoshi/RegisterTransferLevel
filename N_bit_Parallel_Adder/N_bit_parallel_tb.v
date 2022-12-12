`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2022 17:59:48
// Design Name: 
// Module Name: N_bit_parallel_tb
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


module N_bit_parallel_tb();
wire [3:0]oc;
 
wire [3:0]out;
 
reg [3:0]in1;
 
reg [3:0]in2;
 
reg ic;

N_bit_Parallel m(.oc(oc), .in1(in1), .in2(in2), .out(out), .ic(ic) );
 
initial
 
begin
 
$monitor(" ",in1," ",in2," ",out," ",oc[3]);
 
in1=4'b1010;
 
in2=4'b1001;
 
ic=0;
 
end
endmodule
