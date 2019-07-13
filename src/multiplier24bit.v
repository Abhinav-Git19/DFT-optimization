`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 11:43:56
// Design Name: 
// Module Name: multiplier24bit
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


// MODULE FOR 24 BIT MULTIPLIER USING 12 BIT MULTIPLIER
module MULTIPLIER24BIT(input [23:0]A, input [23:0]B, output [47:0]P);
  // DECLARATION OF WIRES AND ASSIGNING VALUES AT A TIME
  // EACH 24 BIT INPUT IS DIVIDED INTO TWO 12 BIT VALUES
    
  wire [11:0]AL = A [11:0];
  wire [11:0]AH = A [23:12];
  wire [11:0]BL = B [11:0];
  wire [11:0]BH = B [23:12];
  wire [23:0]ALBL,ALBH,AHBL,AHBH;
  wire [35:0]PL,PH;

  // INSTANTIATION OF 12 BIT MULTIPLIERS BY PORT NAMES

  MULTIPLIER12BIT mu1(.A(AL),.B(BL),.P(ALBL));
  MULTIPLIER12BIT mul2(.A(AL),.B(BH),.P(ALBH));
  MULTIPLIER12BIT mul3(.A(AH),.B(BL),.P(AHBL)); 
  MULTIPLIER12BIT mul4(.A(AH),.B(BH),.P(AHBH));

  // INSTANTIATION OF ADDER BLOCKS BY PORT NAMES

  ADDER24IN36OUT adder1(.X(ALBL),.Y(AHBL),.W(PL));
  ADDER24IN36OUT adder2(.X(ALBH),.Y(AHBH),.W(PH));
  ADDER36IN48OUT adder3(.X(PL),.Y(PH),.W(P));
endmodule