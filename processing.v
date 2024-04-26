`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2023 10:36:05 PM
// Design Name: 
// Module Name: processing
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


module processing(pout,gout,pin1,gin1,pin2,gin2);
input pin1,pin2,gin1,gin2;
output pout,gout;
    assign gout=gin1|(pin1&gin2);
    assign pout=pin1&pin2;
endmodule
