`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2021 23:56:53
// Design Name: 
// Module Name: hour_counter
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


module hour_counter(reset, clock, btn1, btn2, btn3, new_value, DATA);
    input reset, clock;
    input btn1, btn2, btn3;
    input [7:0] new_value;
    output [23:0] DATA;
    wire timer_seconds, timer_minutes, timer_hours;
    
    // 8'b01100000 = 60 (BCD), 8'b01000101 = 45 (BCD)
    counter seconds(reset, clock, btn1, new_value, 8'b01100000, 8'b01000101, DATA[7:0], timer_seconds);
    // 8'b01100000 = 60 (BCD), 8'b01011001 = 59 (BCD)
    counter minutes(reset, timer_seconds, btn2, new_value, 8'b01100000, 8'b01011001, DATA[15:8], timer_minutes);
    // 8'b00100100 = 24 (BCD), 8'b00100011 = 23 (BCD)
    counter hours(reset, timer_minutes, btn3, new_value, 8'b00100100, 8'b00100011, DATA[23:16], timer_hours);

endmodule
