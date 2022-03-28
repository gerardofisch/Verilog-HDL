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


module tb_4_digit_7_segment();
    // Inputs
    reg [3:0] X;
    reg [2:0] position;
    // Outputs
    wire [7:0] seg1, seg2, led;
    
    integer i, j;
    // Initiate the Unit Under Test (UUT)
    four_digit_seven_segment uut(X, position, seg1, seg2, led);
    
    initial begin
        for (i=0;i<16;i=i+1) // X goes from 0 to 15
        begin
            X = i;
            for (j=0;j<8;j=j+1) // position goes from 0 to 7
            begin
                position = j;
                // Wait 5ns for global reset to finish
                #5;
            end
        end
        $finish;
    end
endmodule