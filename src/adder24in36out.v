`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 11:45:03
// Design Name: 
// Module Name: adder24in36out
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


// MODULE FOR ADDER INPUT BIT LENGTH IS 24 & OUTPUT BIT LENGTHIS 36
module ADDER24IN36OUT(input [23:0]X, input [23:0]Y, output [35:0]W);
wire [35:0]XM = { 12'b0,X };
wire [35:0]YM = { Y,12'b0};
assign W = XM + YM;
endmodule