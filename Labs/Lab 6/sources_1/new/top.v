`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2021 08:50:38
// Design Name: 
// Module Name: top
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


module top(reset, clock, switch, btn1, btn2, btn3, new_value, SCAN_OUT, SEG_OUT1, SEG_OUT2);
    input reset, clock, switch, btn1, btn2, btn3;
    input [6:0] new_value;    
    output [5:0] SCAN_OUT;              // used to determine which position to display
    output [7:0] SEG_OUT1, SEG_OUT2;    // used to determine which digit to display
    wire choosen_clock; 
    wire digit_selector;
    wire [23:0] DATA;
    
    divider div(reset, clock, switch, choosen_clock, digit_selector);
    hour_counter hr_counter(reset, choosen_clock, btn1, btn2, btn3, new_value, DATA);
    display disp(digit_selector, DATA, SCAN_OUT, SEG_OUT1, SEG_OUT2);
endmodule
