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
    // Inputs
    reg clock;
    reg [23:0] DATA;
    // Outputs
    wire [5:0] SCAN_OUT;
    wire [7:0] SEG_OUT1, SEG_OUT2;
    
    integer i;
    // Initial the Unit Under Test
    display uut(clock, DATA, SCAN_OUT, SEG_OUT1, SEG_OUT2);
    initial begin
        clock = 1;
        DATA[23:20] = 1; DATA[19:16] = 2; DATA[15:12] = 3;
        DATA[11:8] = 4; DATA[7:4] = 5; DATA[3:0] = 6;
        for(i=0; i<24; i=i+1) begin
            #1 clock = ~clock;
        end
        
        DATA[23:20] = 7; DATA[19:16] = 8; DATA[15:12] = 9;
        DATA[11:8] = 0; DATA[7:4] = 1; DATA[3:0] = 2;
        for(i=0; i<24; i=i+1) begin
            #1 clock = ~clock;
        end

        $finish;
     end
endmodule
