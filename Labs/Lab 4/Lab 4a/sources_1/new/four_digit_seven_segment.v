`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 13:55:46
// Design Name: 
// Module Name: four_digit_seven_segment
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


module four_digit_seven_segment(X,seg,led);

    input [3:0] X;               // used to choose which number to display
    output reg [7:0]seg;         // stores the pattern of the current number to be displayed
    output reg led;              // used to turn on the last digit of the board

    wire [7:0] number [15:0];    // number[i] = byte that displays i

    assign number[0] = 8'b10111111;
    assign number[1] = 8'b10000110;
    assign number[2] = 8'b11011011;
    assign number[3] = 8'b11001111;
    assign number[4] = 8'b11100110;
    assign number[5] = 8'b11101101;
    assign number[6] = 8'b11111101;
    assign number[7] = 8'b10100111;
    assign number[8] = 8'b11111111;
    assign number[9] = 8'b11101111;
    assign number[10] = 8'b11110111;
    assign number[11] = 8'b11111100;
    assign number[12] = 8'b11011000;
    assign number[13] = 8'b11011110;
    assign number[14] = 8'b11111001;
    assign number[15] = 8'b11110001;
  
    always @(*)
    begin
        seg = number[X];
        led = 1;
    end
endmodule