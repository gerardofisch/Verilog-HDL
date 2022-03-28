`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2021 23:45:18
// Design Name: 
// Module Name: seg_scan
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

module seg_scan(clock, DATA, SCAN_OUT, SEG_DATA);
    input clock;
    input [23:0] DATA;           // number that will be displayed
    output reg [5:0] SCAN_OUT;   // used to determine which position to display
    output reg [3:0] SEG_DATA;   // used to determine which digit to display
    reg [2:0] counter = 0;
    
    always @(posedge clock) begin
        counter <= counter + 1;
        if (counter >= 5) begin
            counter <= 0;
        end
        case (counter)
            3'b000 : begin SEG_DATA = DATA[3:0]; SCAN_OUT = 6'b000001; end
            3'b001 : begin SEG_DATA = DATA[7:4]; SCAN_OUT = 6'b000010; end
            3'b010 : begin SEG_DATA = DATA[11:8]; SCAN_OUT = 6'b000100; end
            3'b011 : begin SEG_DATA = DATA[15:12]; SCAN_OUT = 6'b001000; end
            3'b100 : begin SEG_DATA = DATA[19:16]; SCAN_OUT = 6'b010000; end
            default : begin SEG_DATA = DATA[23:20]; SCAN_OUT = 6'b100000; end
        endcase
     end
endmodule
