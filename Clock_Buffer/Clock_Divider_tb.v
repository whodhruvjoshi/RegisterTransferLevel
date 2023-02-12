`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2023 23:03:52
// Design Name: 
// Module Name: Clock_Divider_tb
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


module Clock_Divider_tb();
reg clk1;
wire clk2;
realtime t1,t2,t3,t4,t5,t6;
parameter T=10;
clock_buffer dut(clk1,clk2);
initial
begin
clk1=1'b0;
forever #(T/2) clk1=~clk1;
end
task master;
begin
@(posedge clk1) t1=$realtime;
@(posedge clk1) t2=$realtime;
t3=t2-t1;
end
endtask

task bufout;
begin
@(posedge clk2) t4=$realtime;
@(posedge clk2) t5=$realtime;
t6=t5-t4;
end
endtask

task freq_phase;
realtime f,p;
begin
f=t6-t3;
p=t4-t1;
$display("freq_diff=%0t,phase_diff=%0t",f,p);
end
endtask

initial
begin
fork master;
bufout;
join freq_phase;
end
endmodule

