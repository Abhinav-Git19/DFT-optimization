`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 11:48:31
// Design Name: 
// Module Name: multiplier12bit
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


// MODULE FOR12 BIT MULTIPLIER USING 4 BIT MULTIPLIERS
module MULTIPLIER12BIT(input [11:0]A, input [11:0]B, output [23:0]P);

  // DECLARATION OF WIRES AND ASSIGNING VALUES AT A TIME
  // EACH 12 BIT INPUT IS DIVIDED INTO THREE 4 BIT VALUES

  wire [3:0]A1= A [3:0];
  wire [3:0]A2 = A [7:4];
  wire [3:0]A3 = A [11:8];
  wire [3:0]B1= B [3:0];
  wire [3:0]B2 = B [7:4];
  wire [3:0]B3 = B [11:8];
  // DECLARATION OF WIRES
  wire [7:0]A1B1,A1B2,A1B3;
  wire [7:0]A2B1,A2B2,A2B3;
  wire [7:0]A3B1,A3B2,A3B3;
  wire [15:0]PL,PM,PH;

  // INSTANTIATION OF 4 BIT MULTIPLIERS BY PORT NAMES

  MULTIPLIER4BIT mul1(.A(A1),.B(B1),.P(A1B1));
  MULTIPLIER4BIT mul2 (.A(A1),.B(B2),.P(A1B2));
  MULTIPLIER4BIT mul3 (.A(A1),.B(B3),.P(A1B3));
  MULTIPLIER4BIT mul4 (.A(A2),.B(B1),.P(A2B1));
  MULTIPLIER4BIT mul5 (.A(A2),.B(B2),.P(A2B2));
  MULTIPLIER4BIT mul6 (.A(A2),.B(B3),.P(A2B3));
  MULTIPLIER4BIT mul7 (.A(A3),.B(B1),.P(A3B1));
  MULTIPLIER4BIT mul8 (.A(A3),.B(B2),.P(A3B2));
  MULTIPLIER4BIT mul9 (.A(A3),.B(B3),.P(A3B3));

  // INSTANTIATION OF ADDER BLOCKS BY PORT NAMES
  ADDER8IN16OUT adder1(.X(A1B1),.Y(A2B1),.Z(A3B1),.W(PL));
  ADDER8IN16OUT adder2 (.X(A1B2),.Y(A2B2),.Z(A3B2),.W(PM));
  ADDER8IN16OUT adder3 (.X(A1B3),.Y(A2B3),.Z(A3B3),.W(PH));
  ADDER16IN24OUT adder4 (.X(PL),.Y(PM),.Z(PH),.W(P));
endmodule
