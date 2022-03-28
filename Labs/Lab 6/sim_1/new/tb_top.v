`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2021 09:52:13
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
    reg reset, clock, switch, btn1, btn2, btn3;
    reg [6:0] new_value;
    // Output
    wire [5:0] SCAN_OUT;
    wire [7:0] SEG_OUT1, SEG_OUT2;
    
    integer i;

    // Initial the Unit Under Test
    top uut(reset, clock, switch, btn1, btn2, btn3, new_value, SCAN_OUT, SEG_OUT1, SEG_OUT2);
    initial begin 
        new_value = 0;
        btn1 = 0; btn2 = 0; btn3 = 0;
        switch = 1;
        clock = 0;
        reset = 0;
        
        for (i=0; i<200; i=i+1) begin
            #1 clock = ~clock;
        end
        $finish;
    end
endmodule
