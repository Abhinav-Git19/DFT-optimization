`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 11:53:14
// Design Name: 
// Module Name: fulladder
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



// MODULE FOR FULL ADDER

module FA(input a,b,cin, output s,cout);
  // DECLARING WIRES
  wire s1,c1,c2;
  // INSTANTIATION OF HALF ADDER MODULE BY PORT NAME
  HA ha1(.a(a),.b(b),.c(c1),.s(s1));
  HA ha2(.a(s1),.b(cin),.c(c2),.s(s));or (cout,c1,c2);
endmodule
