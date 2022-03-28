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
    reg reset, button;
    // Output
    wire [3:0] DATA;
    
    integer i,j;
    // Initial the Unit Under Test
    counter uut(reset, button, DATA);
    
    initial begin
        reset = 0;
        button = 0;
        for(i=0; i<11; i=i+1)
        begin
            // The counter goes to i-1, and then it resets
            for(j=0; j<i; j=j+1)
            begin
                #1 button = 1;      // This simulates the counter button being pressed
                #1 button = 0;
            end
            #1 reset = 1;           // This simulates the reset button being pressed
            #1 reset = 0;
        end
        $finish;
     end
endmodule
