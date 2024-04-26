`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2022 07:47:04 AM
// Design Name: 
// Module Name: blackcell
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


module blackcell(pout,gout,pin1,gin1,pin2,gin2);
input pin1,pin2,gin1,gin2;
output pout,gout;
    assign gout=gin1|(pin1&gin2);
    assign pout=pin1&pin2;
endmodule
