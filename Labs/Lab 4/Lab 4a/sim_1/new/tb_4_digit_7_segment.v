`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 14:23:57
// Design Name: 
// Module Name: tb_4_digit_7_segment
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


module tb_4_digit_7_segment;
    // Input
    reg [3:0] X;
    // Outputs
    wire [7:0]seg;
    wire led;
  
    integer i;
    // Initiate the Unit Under Test (UUT)
    four_digit_seven_segment uut(X,seg,led);
 
    initial begin
        for (i=0;i<16;i=i+1) // X goes from 0 to 15
        begin
            X = i;
            // Wait 100ns for global reset to finish
            #100;
        end
        $finish;
    end
endmodule