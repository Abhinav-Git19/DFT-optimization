`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 10:56:27
// Design Name: 
// Module Name: DFT
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


/*THIS IS MY MAIN MODULE WHICH WILL IMPLEMENT THE 16-POINT DFT THROUGH THE MEANS OF 4-PONT DFTs*/

module main(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i);
  input [31:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
  output [31:0] X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i; 
  
  
  //TWIDDLE FACTORS
  wire [31:0] W1r,W1i,W2r,W2i,W3r,W3i,W6r,W6i,W9r,W9i;
  assign W1r=32'b00111111011011001000001101011110; assign W1i=32'b10111110110000111110111100010101;
  assign W2r=32'b00111111001101010000010011110011; assign W2i=32'b10111111001101010000010011110011;
  assign W3r=32'b00111110110000111110111100010101; assign W3i=32'b10111111011011001000001101011110;
  assign W6r=32'b10111111001101010000010011110011; assign W6i=32'b10111111001101010000010011110011;
  assign W9r=32'b10111111011011001000001101011110; assign W9i=32'b00111110110000111110111100010101;
  
  
  //STAGE 1 OUTPUTS
  wire [31:0] Y0r,Y0i,Y1r,Y1i,Y2r,Y2i,Y3r,Y3i;
  wire [31:0] Y4r,Y4i,Y5r,Y5i,Y6r,Y6i,Y7r,Y7i;
  wire [31:0] Y8r,Y8i,Y9r,Y9i,Y10r,Y10i,Y11r,Y11i;
  wire [31:0] Y12r,Y12i,Y13r,Y13i,Y14r,Y14i,Y15r,Y15i;
  
  //STAGE 1 BUTTERFLYS WITH DECIMATION
  bfly b1(Y0r,Y0i,Y1r,Y1i,Y2r,Y2i,Y3r,Y3i,x0,x4,x8,x12);
  bfly b2(Y4r,Y4i,Y5r,Y5i,Y6r,Y6i,Y7r,Y7i,x1,x5,x9,x13);
  bfly b3(Y8r,Y8i,Y9r,Y9i,Y10r,Y10i,Y11r,Y11i,x2,x6,x10,x14);
  bfly b4(Y12r,Y12i,Y13r,Y13i,Y14r,Y14i,Y15r,Y15i,x3,x7,x11,x15);
  
  //STAGE 2 INPUTS
  wire [31:0] Z0r,Z0i,Z1r,Z1i,Z2r,Z2i,Z3r,Z3i;
  wire [31:0] Z4r,Z4i,Z5r,Z5i,Z6r,Z6i,Z7r,Z7i;
  wire [31:0] Z8r,Z8i,Z9r,Z9i,Z10r,Z10i,Z11r,Z11i;
  wire [31:0] Z12r,Z12i,Z13r,Z13i,Z14r,Z14i,Z15r,Z15i;
  
  //TWIDDLE FACTOR COMPLEX MULTIPLICATION AND ASSIGNMENTS
  assign Z0r=Y0r; assign Z0i=Y0i;
  assign Z1r=Y1r; assign Z1i=Y1i;
  assign Z2r=Y2r; assign Z2i=Y2i;
  assign Z3r=Y3r; assign Z3i=Y3i;
  
  assign Z4r=Y4r; assign Z4i=Y4i;
  cmux c5(Y5r,Y5i,W1r,W1i,Z5r,Z5i);
  cmux c6(Y6r,Y6i,W2r,W2i,Z6r,Z6i);
  cmux c7(Y7r,Y7i,W3r,W3i,Z7r,Z7i);
  
  assign Z8r=Y8r; assign Z8i=Y8i;
  cmux c9(Y9r,Y9i,W2r,W2i,Z9r,Z9i);
  swap c10(Y10r,Y10i,Z10r,Z10i);//THIS IS EQUIVALENT TO MULTIPLYING BY -j
  cmux c11(Y11r,Y11i,W6r,W6i,Z11r,Z11i);
  
  assign Z12r=Y12r; assign Z12i=Y12i;
  cmux c12(Y13r,Y13i,W3r,W3i,Z13r,Z13i);
  cmux c13(Y14r,Y14i,W6r,W6i,Z14r,Z14i);
  cmux c14(Y15r,Y15i,W9r,W9i,Z15r,Z15i);
  
   //DEFINING TEMPORARY WIRES
  wire [31:0] ar,ai,br,bi,cr,ci;
  wire [31:0] er,ei,fr,fi,gr,gi;
  
  //STAGE 2 BUTTERFLY
  bfly b5(X0r,X0i,X4r,X4i,X8r,X8i,X12r,X12i,Z0r,Z4r,Z8r,Z12r); //bfly(X0_r,X0_i,X1_r,X1_i,X2_r,X2_i,X3_r,X3_i,x0_r,x1_r,x2_r,x3_r);
  bfly3 b6(ar,ai,er,ei,Z1r,Z1i,Z5r,Z5i,Z9r,Z9i,Z13r,Z13i);//REST OF THE OUTPUTS ARE FOUND BY USING THE CONJUGATE RELATIONS AMONG OUTPUTS
  bfly3 b7(br,bi,fr,fi,Z2r,Z2i,Z6r,Z6i,Z10r,Z10i,Z14r,Z14i);
  bfly3 b8(cr,ci,gr,gi,Z3r,Z3i,Z7r,Z7i,Z11r,Z11i,Z15r,Z15i);
  
 
  assign X1r = ar;
  assign X1i = ai;
  assign X2r = br;
  assign X2i = bi;
  assign X3r = cr;
  assign X3i = ci;
  //assign X4r = dr;
  //assign X4i = di;
  
  assign X5r = er;
  assign X5i = ei;
  assign X6r = fr;
  assign X6i = fi;
  assign X7r = gr;
  assign X7i = gi;
  
  
  
  conj c1(ar,ai,X15r,X15i);
  conj c2(br,bi,X14r,X14i);
  conj c3(cr,ci,X13r,X13i);
  
  conj cd5(er,ei,X11r,X11i);
  conj cd6(fr,fi,X10r,X10i);
  conj cd7(gr,gi,X9r,X9i);
  
endmodule