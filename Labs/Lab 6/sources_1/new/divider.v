`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2021 08:28:34
// Design Name: 
// Module Name: divider
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


module divider(reset, clock, switch, choosen_clock, digit_selector);
    input reset, clock, switch;
    output choosen_clock;
    output digit_selector;
    wire [26:0] choosen_divisor;
      
    clock_selector cs(switch, choosen_divisor);
    frequency_converter fc(reset, clock, choosen_divisor, choosen_clock);
    frequency_converter fc2(reset, clock, 2 ** 15, digit_selector);
    //frequency_converter fc2(reset, clock, 2, digit_selector);     // used for the test bench
endmodule
