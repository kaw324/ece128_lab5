`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/02 09:33:19
// Design Name: 
// Module Name: ece128_lab5
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


 module ece128_lab5(
    input[3:0] num,
    output reg LED1, 
    output reg LED2
    );
    
    
    always @* begin
    // Check for multiple of 3
    case(num)
        4'b0011, 4'b0110, 4'b1001, 4'b1100, 4'b1111: LED1 = 1'b1; // These are 3, 6, and 9 in binary
        default: LED1 = 1'b0;
    endcase

    // Check for multiple of 2
    if (num[0] == 1'b0) // LSB is 0
        LED2 = 1'b1;
    else
        LED2 = 1'b0;
end

endmodule
