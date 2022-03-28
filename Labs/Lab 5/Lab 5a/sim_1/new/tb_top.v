`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2021 17:15:48
// Design Name: 
// Module Name: tb_top
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


module tb_top;
    // Inputs
    reg reset, clock;
    // Outputs
    wire [1:0] SCAN_OUT;
    wire [7:0] SEG_OUT;
    
    // Initial the Unit Under Test
    top uut(reset, clock, SCAN_OUT, SEG_OUT);
    
    initial begin 
        reset = 0;
        clock = 0;
        forever begin
            #1;                // wait 1ns;
            clock = ~clock;
         end 
    end  
endmodule
