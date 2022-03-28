`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2021 17:59:25
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
    reg reset, clock;
    // Output
    wire [7:0] DATA;

    // Initial the Unit Under Test
    counter uut(reset, clock, DATA);
    
    initial begin 
        reset = 0;
        clock = 0;
        forever begin
            #10;                // wait 10ns;
            clock = ~clock;
         end 
    end
endmodule
