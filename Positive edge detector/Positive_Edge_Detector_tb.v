`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 14:20:04
// Design Name: 
// Module Name: Positive_Edge_Detector_tb
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


module Positive_Edge_Detector_tb();

	reg data;
	reg clock;
	wire detector;

	// Instantiate the Unit Under Test (UUT)
	Positive_Edge_Detector uut (
		.data(data), 
		.clock(clock), 
		.detector(detector)
	);

	initial 
	begin
		data = 0;
		clock = 0;
		#15 data = 1;
		#20 data= 0;
		#15 data = 1;
		#10 data = 0;
		#15 data = 1;
		#20 data= 0;
		#15 data = 1;
		#10 data = 0;
    end
	
	// Generate a clock of 100MHz
	always #5 clock=~clock;
	
	initial begin
	$monitor("Data =%b, Edge_detect=%b ", data, detector);
	#200 $finish;
	end
      
endmodule

