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
    reg [7:0] DATA;
    // Outputs
    wire [1:0] SCAN_OUT;
    wire [7:0] SEG_OUT;
    
    integer i,j,k;
    // Initial the Unit Under Test
    display uut(clock, DATA, SCAN_OUT, SEG_OUT);
    
    initial begin
        for(i=0; i<10; i=i+1)           // DATA_decimal goes from 0 to 9
        begin
            DATA[7:4] = i;
            for(j=0; j<10; j=j+1)       // DATA_unit goes from 0 to 9
            begin
                DATA[3:0] = j;
                for(k=0; k<2; k=k+1)    // clock goes from 0 to 1
                begin
                    clock = k;
                    #1;                 // wait 1ns
                end
            end
        end
        $finish;
     end
endmodule
