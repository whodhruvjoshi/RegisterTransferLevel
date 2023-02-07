`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2023 11:26:44
// Design Name: 
// Module Name: N_Bit_Comparator_tb
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


module N_Bit_Comparator_tb();
reg [15:0] X;
reg [15:0] Y;
wire Less;
wire More;
wire Equal;

N_Bit_Comparator uut (
		.X(X), 
		.Y(Y), 
		.Less(Less), 
		.More(More), 
		.Equal(Equal)
	);
initial begin
        $monitor("    A=%d    B=%d   Lesser=%b     Greater=%b    Equal=%b   ",X,Y,Less,More,Equal);
        end
        initial begin
               X = 2;Y = 2;
                #100 X=22;Y=444;
                #100 X=444;Y=555;
                #100 X=777;Y=111;
                #100 X=8888;Y=8888;
                #500 $finish;
            end
endmodule
