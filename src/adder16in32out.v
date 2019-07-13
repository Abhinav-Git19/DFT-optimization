`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 11:50:15
// Design Name: 
// Module Name: adder16in32out
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


// MODULE FOR ADDER INPUT BIT LENGTH IS16 & OUTPUT BIT LENGTHIS 24

module ADDER16IN24OUT(input [15:0]X, input [15:0]Y, input [15:0]Z,output [23:0]W);
  wire [23:0]XM = { 8'b0,X };
  wire [23:0]YM = { 4'b0,Y,4'b0};
  wire [23:0]ZM = { Z,8'b0};
  assign W = XM + YM + ZM;
endmodule