`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 11:46:45
// Design Name: 
// Module Name: adder36in48out
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

// MODULE FOR ADDER INPUT BIT LENGTH IS 36 & OUTPUT BIT LENGTHIS 48
module ADDER36IN48OUT(input [35:0]X, input [35:0]Y, output [47:0]W);
wire [47:0]XM = { 12'b0,X };
wire [47:0]YM = { Y,12'b0};
assign W = XM + YM;
endmodule