`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2016 15:58:30
// Design Name: 
// Module Name: conjugate
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

/*THIS MODULE FINDS THE CONJUGATE OF A COMPLEX NUMBER*/
module conj(ar,ai,br,bi);
    input [31:0] ar,ai;
    output [31:0] br,bi;
    wire [31:0] d;
    assign br=ar;
    assign d={~ai[31],ai[30:0]};
    assign bi=(ai==32'b0)? 32'b0 : d ;//TO AVOID -0
endmodule
