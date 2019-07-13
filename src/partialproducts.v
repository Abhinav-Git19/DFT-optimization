`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2016 11:51:59
// Design Name: 
// Module Name: partialproducts
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



  // MODULE FOR GENERATION OF PARTIAL PRODUCTS USING AND GATES

module PARTIALPRODUCTS(input [3:0]x, input [3:0]y, output pp00,pp01,pp02,pp03,output pp10,pp11,pp12,pp13,pp20,pp21,pp22,pp23,pp30,pp31,pp32,pp33);
  and (pp00,x[0],y[0]),(pp01,x[0],y[1]),(pp02,x[0],y[2]),(pp03,x[0],y[3]),(pp10,x[1],y[0]),(pp11,x[1],y[1]),(pp12,x[1],y[2]),(pp13,x[1],y[3]),(pp20,x[2],y[0]),(pp21,x[2],y[1]),(pp22,x[2],y[2]),(pp23,x[2],y[3]),(pp30,x[3],y[0]),(pp31,x[3],y[1]),(pp32,x[3],y[2]),(pp33,x[3],y[3]);
endmodule
