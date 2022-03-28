`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 14:15:01
// Design Name: 
// Module Name: counter
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


module counter(reset, clock, DATA);
    input clock, reset;
    output reg [7:0] DATA;
    initial DATA = 0;
    
    always @(posedge clock or posedge  reset) begin
        if (reset) begin        // if the reset button is pressed, DATA = 0
            DATA <= 0;
        end
        else begin
            if (DATA[7:4] >= 9) begin   // if DATA >= 90
                if (DATA[3:0] >= 9) begin   // if DATA >= 99, then DATA = 0
                    DATA <= 0;
                end
                else begin                  // if 90 <= DATA < 99, then DATA++
                    DATA <= DATA + 1;
                end                    
            end
            else begin                  // if DATA < 90
                if (DATA[3:0] >= 9) begin       // if DATA == X9, 
                    DATA[7:4] <= DATA[7:4] + 1; // then DATA_decimal = X + 1
                    DATA[3:0] <= 0;             // and DATA_unit = 0
                end
                else begin 
                    DATA <= DATA + 1;
                end
            end
        end  
    end
endmodule
