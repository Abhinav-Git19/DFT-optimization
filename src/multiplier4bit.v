`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 11:51:09
// Design Name: 
// Module Name: multiplier4bit
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



// MODULE FOR SIMPLE 4 BIT MULTIPLIER
module MULTIPLIER4BIT(input [3:0]A, input [3:0]B, output [7:0]P);
  // DECLARING THE WIRES
  wire pp00,pp01,pp02,pp03;
  wire pp10,pp11,pp12,pp13;
  wire pp20,pp21,pp22,pp23;
  wire pp30,pp31,pp32,pp33;
  wire hc1,hs2,hc2,hs3,hc3,hs4,hc4,hs5,hc5,hs6,hc6,hc8,hc9;
  wire fs1,fc1,fs2,fc2,fs3,fc3,fs4,fc4,fs5,fc5,fc6,fc7;

  // INSTANTIATION OF PARTIAL PRODUCTS BY ORDER

  PARTIALPRODUCTS pp(A,B,pp00,pp01,pp02,pp03,pp10,pp11,pp12,pp13,pp20,pp21,pp22,pp23,pp30,pp31,pp32,pp33);
  assign P[0]= pp00;

  // INSTANTIATION OF HALF ADDERS & FULL ADDERS BY PORT NAMES 

  // LEVEL 1
  HA ha1(.a(pp01),.b(pp10),.s(P[1]),.c(hc1));
  FA fa1(.a(pp11),.b(pp20),.cin(hc1),.s(fs1),.cout(fc1));
  HA ha2 (.a(pp21),.b(pp30),.s(hs2),.c(hc2));
  HA ha3 (.a(pp31),.b(hc2),.s(hs3),.c(hc3));
  HA ha4 (.a(pp03),.b(pp12),.s(hs4),.c(hc4));
  FA fa2 (.a(pp13),.b(pp22),.cin(hc4),.s(fs2),.cout(fc2));
  HA ha5 (.a(pp23),.b(pp32),.s(hs5),.c(hc5));
  HA ha6 (.a(pp33),.b(hc5),.s(hs6),.c(hc6));

  // LEVEL 2
  HA ha7 (.a(pp02),.b(fs1),.s(P[2]),.c(hc7));
  FA fa3 (.a(fc1),.b(hs2),.cin(hc7),.s(fs3),.cout(fc3));
  FA fa4 (.a(hs3),.b(fs2),.cin(fc3),.s(fs4),.cout(fc4));
  FA fa5 (.a(hc3),.b(fc2),.cin(hs5),.s(fs5),.cout(fc5));

  // LEVEL 3
  HA ha8 (.a(fs3),.b(hs4),.s(P[3]),.c(hc8));
  HA ha9 (.a(fs4),.b(hc8),.s(P[4]),.c(hc9));
  FA fa6 (.a(hc9),.b(fc4),.cin(fs5),.s(P[5]),.cout(fc6));
  FA fa7 (.a(fc6),.b(fc5),.cin(hs6),.s(P[6]),.cout(fc7));
  HA ha10(.a(hc6),.b(fc7),.s(P[7]));
endmodule
