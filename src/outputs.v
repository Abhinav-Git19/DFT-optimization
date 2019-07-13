`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2016 10:50:40
// Design Name: 
// Module Name: outputs
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


module output_set(outp0,outp1,outp2,outp3,outp4,outp5,outp6,outp7,X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i,k);
    input [2:0] k;
    input [31:0] X0r,X0i,X1r,X1i,X2r,X2i,X3r,X3i,X4r,X4i,X5r,X5i,X6r,X6i,X7r,X7i,X8r,X8i,X9r,X9i,X10r,X10i,X11r,X11i,X12r,X12i,X13r,X13i,X14r,X14i,X15r,X15i;
    output outp0,outp1,outp2,outp3,outp4,outp5,outp6,outp7;
    reg outp0,outp1,outp2,outp3,outp4,outp5,outp6,outp7;
    
    always@(*)
      begin
        outp0 = 1'b0;
        outp1 = 1'b0;
        outp2 = 1'b0;
        outp3 = 1'b0;
        outp4 = 1'b0;
        outp5 = 1'b0;
        outp6 = 1'b0;
        outp7 = 1'b0;
        
      if(k == 3'b000)
        begin
            if(X0r == 32'b0 & X0i == 32'b0 & X1r == 32'b0 & X1i == 32'b0 & X2r == 32'b0 & X2i == 32'b0 & X3r == 32'b0 & X3i == 32'b0 & X4r == 32'b0 & X4i == 32'b0 & X5r == 32'b0 & X5i == 32'b0 & X6r == 32'b0 & X6i == 32'b0 & X7r == 32'b0 & X7i == 32'b0 & X8r == 32'b0 & X8i == 32'b0 & X9r == 32'b0 & X9i == 32'b0 & X10r == 32'b0 & X10i == 32'b0 & X11r == 32'b0 & X11i == 32'b0 & X12r == 32'b0 & X12i == 32'b0 & X13r == 32'b0 & X13i == 32'b0 & X14r == 32'b0 & X14i == 32'b0 & X15r == 32'b0 & X15i == 32'b0)
              outp0 = 1'b1;
          else
            outp0 = 1'b0;     
        end  
      else if(k == 3'b001)
        begin
            if(X0r == 32'b01000001100000000000000000000000 & X0i == 32'b0 & X1r == 32'b0 & X1i == 32'b0 & X2r == 32'b0 & X2i == 32'b0 & X3r == 32'b0 & X3i == 32'b0 & X4r == 32'b0 & X4i == 32'b0 & X5r == 32'b0 & X5i == 32'b0 & X6r == 32'b0 & X6i == 32'b0 & X7r == 32'b0 & X7i == 32'b0 & X8r == 32'b0 & X8i == 32'b0 & X9r == 32'b0 & X9i == 32'b0 & X10r == 32'b0 & X10i == 32'b0 & X11r == 32'b0 & X11i == 32'b0 & X12r == 32'b0 & X12i == 32'b0 & X13r == 32'b0 & X13i == 32'b0 & X14r == 32'b0 & X14i == 32'b0 & X15r == 32'b0 & X15i == 32'b0)
              outp1 = 1'b1;
          else
            outp1 = 1'b0;     
        end  
      else if(k == 3'b010)
        begin
            if(X0r == 32'b01000010000000000000000000000000 & X0i == 32'b0 & X1r == 32'b0 & X1i == 32'b0 & X2r == 32'b0 & X2i == 32'b0 & X3r == 32'b0 & X3i == 32'b0 & X4r == 32'b0 & X4i == 32'b0 & X5r == 32'b0 & X5i == 32'b0 & X6r == 32'b0 & X6i == 32'b0 & X7r == 32'b0 & X7i == 32'b0 & X8r == 32'b0 & X8i == 32'b0 & X9r == 32'b0 & X9i == 32'b0 & X10r == 32'b0 & X10i == 32'b0 & X11r == 32'b0 & X11i == 32'b0 & X12r == 32'b0 & X12i == 32'b0 & X13r == 32'b0 & X13i == 32'b0 & X14r == 32'b0 & X14i == 32'b0 & X15r == 32'b0 & X15i == 32'b0)
              outp2 = 1'b1;
          else
            outp2 = 1'b0;     
        end 
      else if(k == 3'b011)
        begin
            if(X0r == 32'b01000010010000000000000000000000 & X0i == 32'b0 & X1r == 32'b0 & X1i == 32'b0 & X2r == 32'b0 & X2i == 32'b0 & X3r == 32'b0 & X3i == 32'b0 & X4r == 32'b0 & X4i == 32'b0 & X5r == 32'b0 & X5i == 32'b0 & X6r == 32'b0 & X6i == 32'b0 & X7r == 32'b0 & X7i == 32'b0 & X8r == 32'b0 & X8i == 32'b0 & X9r == 32'b0 & X9i == 32'b0 & X10r == 32'b0 & X10i == 32'b0 & X11r == 32'b0 & X11i == 32'b0 & X12r == 32'b0 & X12i == 32'b0 & X13r == 32'b0 & X13i == 32'b0 & X14r == 32'b0 & X14i == 32'b0 & X15r == 32'b0 & X15i == 32'b0)
              outp3 = 1'b1;
          else
            outp3 = 1'b0;     
        end 
      else if(k == 3'b100)
        begin
            if(X0r == 32'b01000010100000000000000000000000 & X0i == 32'b0 & X1r == 32'b0 & X1i == 32'b0 & X2r == 32'b0 & X2i == 32'b0 & X3r == 32'b0 & X3i == 32'b0 & X4r == 32'b0 & X4i == 32'b0 & X5r == 32'b0 & X5i == 32'b0 & X6r == 32'b0 & X6i == 32'b0 & X7r == 32'b0 & X7i == 32'b0 & X8r == 32'b0 & X8i == 32'b0 & X9r == 32'b0 & X9i == 32'b0 & X10r == 32'b0 & X10i == 32'b0 & X11r == 32'b0 & X11i == 32'b0 & X12r == 32'b0 & X12i == 32'b0 & X13r == 32'b0 & X13i == 32'b0 & X14r == 32'b0 & X14i == 32'b0 & X15r == 32'b0 & X15i == 32'b0)
              outp4 = 1'b1;
          else
            outp4 = 1'b0;     
        end 
        else if(k == 3'b101)
        begin
            if(X0r == 32'b01000010101000000000000000000000 & X0i == 32'b0 & X1r == 32'b0 & X1i == 32'b0 & X2r == 32'b0 & X2i == 32'b0 & X3r == 32'b0 & X3i == 32'b0 & X4r == 32'b0 & X4i == 32'b0 & X5r == 32'b0 & X5i == 32'b0 & X6r == 32'b0 & X6i == 32'b0 & X7r == 32'b0 & X7i == 32'b0 & X8r == 32'b0 & X8i == 32'b0 & X9r == 32'b0 & X9i == 32'b0 & X10r == 32'b0 & X10i == 32'b0 & X11r == 32'b0 & X11i == 32'b0 & X12r == 32'b0 & X12i == 32'b0 & X13r == 32'b0 & X13i == 32'b0 & X14r == 32'b0 & X14i == 32'b0 & X15r == 32'b0 & X15i == 32'b0)
              outp5 = 1'b1;
          else
            outp5 = 1'b0;     
        end 
        else if(k == 3'b110)
        begin //check
            if(X0r == 32'b01000010111100000000000000000000 & X0i == 32'b0 & X1r == 32'b11000001000000000000000000000000  & X2r == 32'b11000001000000000000000000000000 &  X3r == 32'b11000001000000000000000000000000 &  X4r == 32'b11000001000000000000000000000000 & X5r == 32'b11000001000000000000000000000000 & X6r == 32'b11000001000000000000000000000000 &  X7r == 32'b11000001000000000000000000000000 &  X8r == 32'b11000001000000000000000000000000 & X8i == 32'b0 & X9r == 32'b11000001000000000000000000000000 & X10r == 32'b11000001000000000000000000000000 & X11r == 32'b11000001000000000000000000000000 & X12r == 32'b11000001000000000000000000000000 & X13r == 32'b11000001000000000000000000000000 & X14r == 32'b11000001000000000000000000000000 &  X15r == 32'b11000001000000000000000000000000)
              outp6 = 1'b1;
          else
            outp6 = 1'b0;     
        end 
        else if(k == 3'b111)
        begin
            if(X0r == 32'b01000010110000000000000000000000 & X0i == 32'b0 & X1r == 32'b0 & X1i == 32'b0 & X2r == 32'b0 & X2i == 32'b0 & X3r == 32'b0 & X3i == 32'b0 & X4r == 32'b0 & X4i == 32'b0 & X5r == 32'b0 & X5i == 32'b0 & X6r == 32'b0 & X6i == 32'b0 & X7r == 32'b0 & X7i == 32'b0 & X8r == 32'b0 & X8i == 32'b0 & X9r == 32'b0 & X9i == 32'b0 & X10r == 32'b0 & X10i == 32'b0 & X11r == 32'b0 & X11i == 32'b0 & X12r == 32'b0 & X12i == 32'b0 & X13r == 32'b0 & X13i == 32'b0 & X14r == 32'b0 & X14i == 32'b0 & X15r == 32'b0 & X15i == 32'b0)
              outp7 = 1'b1;
          else
            outp7 = 1'b0;     
        end 
      end
    
    
    
    
    
    
endmodule
