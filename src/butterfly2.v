`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2016 16:15:03
// Design Name: 
// Module Name: butterfly2
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


module bfly2(X0_r,X0_i,X1_r,X1_i,X2_r,X2_i,x0_r,x0_i,x1_r,x1_i,x2_r,x2_i,x3_r,x3_i); //3 outputs, complex inputs
  
    input [31:0] x0_r,x0_i,x1_r,x1_i,x2_r,x2_i,x3_r,x3_i;
    output [31:0] X0_r,X0_i,X1_r,X1_i,X2_r,X2_i;
    
    //The intermediate a & A's variable
    wire [31:0] a0_r,a0_i,a1_r,a1_i,a2_r,a2_i,a3_r,a3_i;
    
    //a's transofromation
    //4 real additions and 4 real subtractions
    
    fpadder adr1(x0_r,x2_r,a0_r);
    fpadder adi1(x0_i,x2_i,a0_i);
    
    fpadder adr2(x1_r,x3_r,a1_r);
    fpadder adi2(x1_i,x3_i,a1_i);
    
    
    
  
    fpadder subr1(x0_r,{~x2_r[31],x2_r[30:0]},a2_r);
    fpadder subi1(x0_i,{~x2_i[31],x2_i[30:0]},a2_i);
    
   fpadder subr2(x1_r,{~x3_r[31],x3_r[30:0]},a3_r);
   fpadder subi2(x1_i,{~x3_i[31],x3_i[30:0]},a3_i);
   // assign a3_i=32'b0;
    
    wire [31:0]A3_r;
    wire [31:0]A3_i;
    //swap real and imaginary of a3
    swap s1(a3_r,a3_i,A3_r, A3_i); 

    
    //X
    fpadder adr3(a0_r,a1_r,X0_r);
    fpadder adi3(a0_i,a1_i,X0_i);
    
    fpadder adr4(a2_r,A3_r,X1_r);
    fpadder adi4(a2_i,A3_i,X1_i);
    
    
    fpadder subr3(a0_r,{~a1_r[31],a1_r[30:0]},X2_r);
    fpadder subi3(a0_i,{~a1_i[31],a1_i[30:0]},X2_i);
 
  endmodule



