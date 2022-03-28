`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2021 07:20:34
// Design Name: 
// Module Name: tb_counter
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

module tb_counter;
    // Inputs
    reg reset, clock, is_clock_out_on;
    reg [7:0] max_value, reset_value;
    // Output
    wire [7:0] count;
    wire clock_out;
    
    // Initial the Unit Under Test
    counter uut(reset, clock, max_value, reset_value, is_clock_out_on, count, clock_out);
    
    initial begin 
        is_clock_out_on = 1;
        max_value[7:4] = 6;
        max_value[3:0] = 0;
        reset_value[7:4] = 4;
        reset_value[3:0] = 5;
        clock = 0;
        reset = 0;
        #1 reset = 1;
        #1 reset = 0;
        
        forever begin
            #1;                // wait 10ns;
            clock = ~clock;
         end 
    end
endmodule

