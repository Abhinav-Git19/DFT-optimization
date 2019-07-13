`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 11:49:27
// Design Name: 
// Module Name: adder8in16out
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


  // MODULE FOR ADDER INPUT BIT LENGTH IS 8 & OUTPUT BIT LENGTH IS 16

module ADDER8IN16OUT(input [7:0]X, input [7:0]Y, input [7:0]Z, output[15:0]W);
  wire [15:0]XM = { 8'b0,X };
  wire [15:0]YM = { 4'b0,Y,4'b0};
  wire [15:0]ZM = { Z,8'b0};
  assign W = XM + YM + ZM;
endmodule
