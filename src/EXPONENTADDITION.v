`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 11:40:32
// Design Name: 
// Module Name: EXPONENTADDITION
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

module EXPONENTADDITION(input [7:0]A, input [7:0]B, output [7:0]E);
// DECLARATION OF WIRES AND ASSIGNING VALUES AT A TIME
// ADDING THE BIASED EXPONENTS AND SUBTRACTING 127 USING 2'SCOMPLEMENT METHOD
    wire [8:0]X = A + B;
    parameter Y =10'b1110000001;
    wire [10:0]Z = X + Y;
    // FINAL RESULT OF EXPONENT (IN THE BIAS FORMAT)
    assign E = Z [7:0];
endmodule
