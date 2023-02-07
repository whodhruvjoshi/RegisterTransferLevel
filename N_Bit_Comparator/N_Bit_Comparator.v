`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.02.2023 11:20:38
// Design Name: 
// Module Name: N_Bit_Comparator
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


module N_Bit_Comparator(X,Y,Less,More,Equal);
parameter n = 16 ;
input[n-1:0] X , Y;
output Less ,More ,Equal;
reg Less=0, More=0, Equal=0;
always @ (X,Y)
begin
if(X>Y)
begin
Less=0;Equal=0;More=1;
end
else if (X<Y)
begin
Less=1;Equal=0;More=0;
end
else
begin
Less=0;Equal=1;More=0;
end
end
endmodule
