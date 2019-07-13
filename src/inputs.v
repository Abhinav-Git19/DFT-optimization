`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2016 10:25:07
// Design Name: 
// Module Name: inputs
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


module input_set(k,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
    input [2:0] k;
    output [31:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
    reg [31:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
    
    always@(*)
      begin
      if(k == 3'b000)
        begin
             x0 = 32'b00000000000000000000000000000000;     //0
             x1 = 32'b0;     //0
             x2 = 32'b0;     //0
             x3 = 32'b0;     //0
             x4 = 32'b0;     //0
             x5 = 32'b0;     //0 
             x6 = 32'b0;     //0  
             x7 = 32'b0;     //0
             x8 = 32'b0;     //0
             x9 = 32'b0;     //0
             x10 = 32'b0;    //0
             x11 = 32'b0;    //0     
             x12 = 32'b0;    //0
             x13 = 32'b0;    //0
             x14 = 32'b0;    //0
             x15 = 32'b0;    //0
          end
        else if(k == 3'b001)
        begin
             x0 = 32'b00111111100000000000000000000000;     //1
             x1 = 32'b00111111100000000000000000000000;     //1
             x2 = 32'b00111111100000000000000000000000;     //1
             x3 = 32'b00111111100000000000000000000000;     //1
             x4 = 32'b00111111100000000000000000000000;     //1
             x5 = 32'b00111111100000000000000000000000;     //1
             x6 = 32'b00111111100000000000000000000000;     //1
             x7 = 32'b00111111100000000000000000000000;     //1
             x8 = 32'b00111111100000000000000000000000;     //1
             x9 = 32'b00111111100000000000000000000000;     //1
             x10 = 32'b00111111100000000000000000000000;     //1
             x11= 32'b00111111100000000000000000000000;     //1
             x12 = 32'b00111111100000000000000000000000;     //1
             x13= 32'b00111111100000000000000000000000;     //1
             x14= 32'b00111111100000000000000000000000;     //1
             x15 = 32'b00111111100000000000000000000000;     //1
          end 
        else  if(k == 3'b010)
        begin
             x0 = 32'b01000000000000000000000000000000;         //2's
                     x1 = 32'b01000000000000000000000000000000;
                     x2 = 32'b01000000000000000000000000000000;
                     x3 = 32'b01000000000000000000000000000000;
                     x4 = 32'b01000000000000000000000000000000;
                     x5 = 32'b01000000000000000000000000000000;
                     x6 = 32'b01000000000000000000000000000000;
                     x7 = 32'b01000000000000000000000000000000;
                     x8 = 32'b01000000000000000000000000000000;
                     x9 = 32'b01000000000000000000000000000000;
                     x10 = 32'b01000000000000000000000000000000;
                     x11 = 32'b01000000000000000000000000000000;
                     x12 = 32'b01000000000000000000000000000000;
                     x13= 32'b01000000000000000000000000000000;
                     x14 = 32'b01000000000000000000000000000000;
                     x15= 32'b01000000000000000000000000000000;
          end
        else  if(k == 3'b011)
        begin
                    x0 = 32'b01000000010000000000000000000000;     //3
                     x1 = 32'b01000000010000000000000000000000;     //3
                     x2 = 32'b01000000010000000000000000000000;     //3
                     x3 = 32'b01000000010000000000000000000000;     //3
                     x4 = 32'b01000000010000000000000000000000;     //3
                     x5 = 32'b01000000010000000000000000000000;     //3
                     x6 = 32'b01000000010000000000000000000000;     //3
                     x7 = 32'b01000000010000000000000000000000;     //3
                     x8 = 32'b01000000010000000000000000000000;     //3
                     x9 = 32'b01000000010000000000000000000000;     //3
                     x10 = 32'b01000000010000000000000000000000;    //3
                     x11 = 32'b01000000010000000000000000000000;    //3     
                     x12 = 32'b01000000010000000000000000000000;    //3
                     x13 = 32'b01000000010000000000000000000000;    //3
                     x14 = 32'b01000000010000000000000000000000;    //3
                     x15 = 32'b01000000010000000000000000000000;    //3
                     
          end
         else if(k == 3'b100)
        begin
             x0 = 32'b01000000100000000000000000000000;         //4
             x1 = 32'b01000000100000000000000000000000;         //4
             x2 = 32'b01000000100000000000000000000000;
             x3 = 32'b01000000100000000000000000000000;
             x4 = 32'b01000000100000000000000000000000;
             x5 = 32'b01000000100000000000000000000000;
             x6 = 32'b01000000100000000000000000000000;
             x7 = 32'b01000000100000000000000000000000;
             x8 = 32'b01000000100000000000000000000000;     //4
             x9 = 32'b01000000100000000000000000000000;     //4
             x10 = 32'b01000000100000000000000000000000;     //4
             x11= 32'b01000000100000000000000000000000;     //4
             x12 = 32'b01000000100000000000000000000000;     //4
             x13= 32'b01000000100000000000000000000000;     //4
             x14= 32'b01000000100000000000000000000000;     //4
             x15 = 32'b01000000100000000000000000000000;     //4
          end
         else if(k == 3'b101)
        begin
                     x0 = 32'b01000000101000000000000000000000;         //5
                     x1 = 32'b01000000101000000000000000000000;         //5
                     x2 = 32'b01000000101000000000000000000000;
                     x3 = 32'b01000000101000000000000000000000;
                     x4 = 32'b01000000101000000000000000000000;
                     x5 = 32'b01000000101000000000000000000000;
                     x6 = 32'b01000000101000000000000000000000;
                     x7 = 32'b01000000101000000000000000000000;
                     x8 = 32'b01000000101000000000000000000000;     //5
                     x9 = 32'b01000000101000000000000000000000;     //5
                     x10 = 32'b01000000101000000000000000000000;     //5
                     x11= 32'b01000000101000000000000000000000;     //5
                     x12 = 32'b01000000101000000000000000000000;     //5
                     x13= 32'b01000000101000000000000000000000;     //5
                     x14= 32'b01000000101000000000000000000000;     //5
                     x15 = 32'b01000000101000000000000000000000;     //5
          end
         else if(k == 3'b110)
        begin
                     x7 = 32'b01000000111000000000000000000000;     //7
                     x6 = 32'b01000000110000000000000000000000;     //6
                     x5 = 32'b01000000101000000000000000000000;     //5
                     x4 = 32'b01000000100000000000000000000000;     //4
                     x3 = 32'b01000000010000000000000000000000;     //3
                     x2 = 32'b01000000000000000000000000000000;     //2 
                     x1 = 32'b00111111100000000000000000000000;     //1  
                     x0 = 32'b00000000000000000000000000000000;     //0
                     x8 = 32'b01000001000000000000000000000000;     //8
                     x9 = 32'b01000001000100000000000000000000;     //9
                     x10 = 32'b01000001001000000000000000000000;    //10
                     x11 = 32'b01000001001100000000000000000000;    //11     
                     x12 = 32'b01000001010000000000000000000000;    //12
                     x13 = 32'b01000001010100000000000000000000;    //13
                     x14 = 32'b01000001011000000000000000000000;    //14
                     x15 = 32'b01000001011100000000000000000000;    //15
          end
         else if(k == 3'b111)
        begin
            x0 = 32'b01000000110000000000000000000000;     //6
                     x1 = 32'b01000000110000000000000000000000;     //6
                     x2 = 32'b01000000110000000000000000000000;     //6
                     x3 = 32'b01000000110000000000000000000000;     //6
                     x4 = 32'b01000000110000000000000000000000;     //6
                     x5 = 32'b01000000110000000000000000000000;     //6
                     x6 = 32'b01000000110000000000000000000000;     //6
                     x7 = 32'b01000000110000000000000000000000;     //6
                     x8 = 32'b01000000110000000000000000000000;     //6
                     x9 = 32'b01000000110000000000000000000000;     //6
                     x10 = 32'b01000000110000000000000000000000;     //6
                     x11= 32'b01000000110000000000000000000000;     //6
                     x12 = 32'b01000000110000000000000000000000;     //6
                     x13= 32'b01000000110000000000000000000000;     //6
                     x14= 32'b01000000110000000000000000000000;     //
                     x15 = 32'b01000000110000000000000000000000;     //6
          end
        end
endmodule