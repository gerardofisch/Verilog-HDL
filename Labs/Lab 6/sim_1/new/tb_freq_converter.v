`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2021 06:08:35
// Design Name: 
// Module Name: tb_freq_converter
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


module tb_freq_converter;
    // Inputs
    reg reset, clock;
    // Output
    wire out_clock; 
    
    // Initial the Unit Under Test
    frequency_converter uut(reset, clock, out_clock);
    
    initial begin 
        reset = 0;
        clock = 0;
        forever begin
            #1;                // wait 1ns;
            clock = ~clock;
         end 
    end    
endmodule

