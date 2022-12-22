`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2022 19:03:41
// Design Name: 
// Module Name: JKFF_tb
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


module JKFF_tb ;
reg j ;
reg k ;
reg clk;

always #5 clk = ~clk ;

JKFF jk( .j(j) , .k(k) , .clk(clk), .q(q));

initial 
begin 

j<= 0;
k<=0;

#5 j<=0;
   k<=1;
   
#20 j<=1;
      k<=0;
      
#20   j<=1;
      k<=1;
      
 #20 finish    ;     
end

initial
 $monitor("j=%0d , k=%0d , q=%0d" , j ,k , q);
endmodule
