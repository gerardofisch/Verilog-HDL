`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2021 17:39:02
// Design Name: 
// Module Name: tb_display
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


module tb_display;
    // Input
    reg [3:0] DATA;
    // Outputs
    wire SCAN_OUT;
    wire [7:0] SEG_OUT;
    
    integer i;
    // Initial the Unit Under Test
    display uut(DATA, SCAN_OUT, SEG_OUT);
    
    initial begin
        for(i=0; i<10; i=i+1)   // DATA goes from 0 to 9
        begin
            DATA = i;
            # 10;               // wait 10ns
        end
        $finish;
     end
endmodule
