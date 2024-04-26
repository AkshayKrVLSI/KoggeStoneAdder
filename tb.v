`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2023 01:01:51 PM
// Design Name: 
// Module Name: tb
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


module tb;
reg [31:0]a,b;
reg cin;
wire [31:0]s;
wire cout;

KSA KSA1(s,cout,a,b,cin);
initial begin
    a=32'd1; b=32'd2; cin=1'b0;
    #5 a=32'd100;
    #5 b=32'd200;
end
endmodule
