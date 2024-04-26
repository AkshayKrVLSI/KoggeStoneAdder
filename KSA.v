`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2022 09:46:56 AM
// Design Name: 
// Module Name: KSA
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


module KSA(s,cout,a,b,cin);
input [31:0]a,b;
input cin;
output [31:0]s;
output cout;

wire [31:0]p1,g1,p2,g2,p3,g3,p4,g4,p5,g5;
wire [31:0]ci,pi,gi;

//Pre Calculation of Pi and Gi
    assign pi=a^b;
    assign gi=a&b;

//prefix tree
    //1st stage
    buffer b1(p1[0],g1[0],pi[0],gi[0]);    
    processing c1(p1[1],g1[1],pi[1],gi[1],pi[0],gi[0]);  
    
    buffer b2(p1[2],g1[2],pi[2],gi[2]);  
    processing c2(p1[3],g1[3],pi[3],gi[3],pi[2],gi[2]);    
    
    buffer b3(p1[4],g1[4],pi[4],gi[4]);  
    processing c3(p1[5],g1[5],pi[5],gi[5],pi[4],gi[4]);  
    
    buffer b4(p1[6],g1[6],pi[6],gi[6]);       
    processing c4(p1[7],g1[7],pi[7],gi[7],pi[6],gi[6]);   
    
    buffer b5(p1[8],g1[8],pi[8],gi[8]);      
    processing c5(p1[9],g1[9],pi[9],gi[9],pi[8],gi[8]);  
    
    buffer b6(p1[10],g1[10],pi[10],gi[10]);      
    processing c6(p1[11],g1[11],pi[11],gi[11],pi[10],gi[10]);   
    
    buffer b7(p1[12],g1[12],pi[12],gi[12]);       
    processing c7(p1[13],g1[13],pi[13],gi[13],pi[12],gi[12]);   
    
    buffer b8(p1[14],g1[14],pi[14],gi[14]);       
    processing c8(p1[15],g1[15],pi[15],gi[15],pi[14],gi[14]);   
    
    buffer b9(p1[16],g1[16],pi[16],gi[16]);       
    processing c9(p1[17],g1[17],pi[17],gi[17],pi[16],gi[16]);   
    
    buffer b10(p1[18],g1[18],pi[18],gi[18]);      
    processing c10(p1[19],g1[19],pi[19],gi[19],pi[18],gi[18]);   
    
    buffer b11(p1[20],g1[20],pi[20],gi[20]);       
    processing c11(p1[21],g1[21],pi[21],gi[21],pi[20],gi[20]);   
    
    buffer b12(p1[22],g1[22],pi[22],gi[22]);      
    processing c12(p1[23],g1[23],pi[23],gi[23],pi[22],gi[22]);   
    
    buffer b13(p1[24],g1[24],pi[24],gi[24]);      
    processing c13(p1[25],g1[25],pi[25],gi[25],pi[24],gi[24]);   
    
    buffer b14(p1[26],g1[26],pi[26],gi[26]);      
    processing c14(p1[27],g1[27],pi[27],gi[27],pi[26],gi[26]);   
    
    buffer b15(p1[28],g1[28],pi[28],gi[28]);       
    processing c15(p1[29],g1[29],pi[29],gi[29],pi[28],gi[28]);   
    
    buffer b16(p1[30],g1[30],pi[30],gi[30]);       
    processing c16(p1[31],g1[31],pi[31],gi[31],pi[30],gi[30]);   
    
        //2nd stage
    buffer b17(p2[0],g2[0],p1[0],g1[0]);
    buffer b18(p2[1],g2[1],p1[1],g1[1]);
    processing c17(p2[2],g2[2],p1[2],g1[2],p1[0],g1[0]);
    processing c18(p2[3],g2[3],p1[3],g1[3],p1[1],g1[1]);
    processing c19(p2[4],g2[4],p1[4],g1[4],p1[2],g1[2]);
    processing c20(p2[5],g2[5],p1[5],g1[5],p1[3],g1[3]);
    processing c21(p2[6],g2[6],p1[6],g1[6],p1[4],g1[4]);
    processing c22(p2[7],g2[7],p1[7],g1[7],p1[5],g1[5]);
    processing c23(p2[8],g2[8],p1[8],g1[8],p1[6],g1[6]);
    processing c24(p2[9],g2[9],p1[9],g1[9],p1[7],g1[7]);
    processing c25(p2[10],g2[10],p1[10],g1[10],p1[8],g1[8]);
    processing c26(p2[11],g2[11],p1[11],g1[11],p1[9],g1[9]);
    processing c27(p2[12],g2[12],p1[12],g1[12],p1[10],g1[10]);
    processing c28(p2[13],g2[13],p1[13],g1[13],p1[11],g1[11]);
    processing c29(p2[14],g2[14],p1[14],g1[14],p1[12],g1[12]);
    processing c30(p2[15],g2[15],p1[15],g1[15],p1[13],g1[13]);
    processing c31(p2[16],g2[16],p1[16],g1[16],p1[14],g1[14]);
    processing c32(p2[17],g2[17],p1[17],g1[17],p1[15],g1[15]);
    processing c33(p2[18],g2[18],p1[18],g1[18],p1[16],g1[16]);
    processing c34(p2[19],g2[19],p1[19],g1[19],p1[17],g1[17]);
    processing c35(p2[20],g2[20],p1[20],g1[20],p1[18],g1[18]);
    processing c36(p2[21],g2[21],p1[21],g1[21],p1[19],g1[19]);
    processing c37(p2[22],g2[22],p1[22],g1[22],p1[20],g1[20]);
    processing c38(p2[23],g2[23],p1[23],g1[23],p1[21],g1[21]);
    processing c39(p2[24],g2[24],p1[24],g1[24],p1[22],g1[22]);
    processing c40(p2[25],g2[25],p1[25],g1[25],p1[23],g1[23]);
    processing c41(p2[26],g2[26],p1[26],g1[26],p1[24],g1[24]);
    processing c42(p2[27],g2[27],p1[27],g1[27],p1[25],g1[25]);
    processing c43(p2[28],g2[28],p1[28],g1[28],p1[26],g1[26]);
    processing c44(p2[29],g2[29],p1[29],g1[29],p1[27],g1[27]);
    processing c45(p2[30],g2[30],p1[30],g1[30],p1[28],g1[28]);
    processing c46(p2[31],g2[31],p1[31],g1[31],p1[29],g1[29]);
    
        //  3rd stage
    buffer b19(p3[0],g3[0],p2[0],g2[0]);
    buffer b20(p3[1],g3[1],p2[1],g2[1]);
    buffer b21(p3[2],g3[2],p2[2],g2[2]);
    buffer b22(p3[3],g3[3],p2[3],g2[3]);
    processing c47(p3[4],g3[4],p2[4],g2[4],p2[0],g2[0]);
    processing c48(p3[5],g3[5],p2[5],g2[5],p2[1],g2[1]);
    processing c49(p3[6],g3[6],p2[6],g2[6],p2[2],g2[2]);
    processing c50(p3[7],g3[7],p2[7],g2[7],p2[3],g2[3]);
    processing c51(p3[8],g3[8],p2[8],g2[8],p2[4],g2[4]);
    processing c52(p3[9],g3[9],p2[9],g2[9],p2[5],g2[5]);
    processing c53(p3[10],g3[10],p2[10],g2[10],p2[6],g2[6]);
    processing c54(p3[11],g3[11],p2[11],g2[11],p2[7],g2[7]);
    processing c55(p3[12],g3[12],p2[12],g2[12],p2[8],g2[8]);
    processing c56(p3[13],g3[13],p2[13],g2[13],p2[9],g2[9]);
    processing c57(p3[14],g3[14],p2[14],g2[14],p2[10],g2[10]);
    processing c58(p3[15],g3[15],p2[15],g2[15],p2[11],g2[11]);
    processing c59(p3[16],g3[16],p2[16],g2[16],p2[12],g2[12]);
    processing c60(p3[17],g3[17],p2[17],g2[17],p2[13],g2[13]);
    processing c61(p3[18],g3[18],p2[18],g2[18],p2[14],g2[14]);
    processing c62(p3[19],g3[19],p2[19],g2[19],p2[15],g2[15]);
    processing c63(p3[20],g3[20],p2[20],g2[20],p2[16],g2[16]);
    processing c64(p3[21],g3[21],p2[21],g2[21],p2[17],g2[17]);
    processing c65(p3[22],g3[22],p2[22],g2[22],p2[18],g2[18]);
    processing c66(p3[23],g3[23],p2[23],g2[23],p2[19],g2[19]);
    processing c67(p3[24],g3[24],p2[24],g2[24],p2[20],g2[20]);
    processing c68(p3[25],g3[25],p2[25],g2[25],p2[21],g2[21]);
    processing c69(p3[26],g3[26],p2[26],g2[26],p2[22],g2[22]);
    processing c70(p3[27],g3[27],p2[27],g2[27],p2[23],g2[23]);
    processing c71(p3[28],g3[28],p2[28],g2[28],p2[24],g2[24]);
    processing c72(p3[29],g3[29],p2[29],g2[29],p2[25],g2[25]);
    processing c73(p3[30],g3[30],p2[30],g2[30],p2[26],g2[26]);
    processing c74(p3[31],g3[31],p2[31],g2[31],p2[27],g2[27]);
    
    //4th stage 
    buffer b23(p4[0],g4[0],p3[0],g3[0]);
    buffer b24(p4[1],g4[1],p3[1],g3[1]);
    buffer b25(p4[2],g4[2],p3[2],g3[2]);
    buffer b26(p4[3],g4[3],p3[3],g3[3]);
    buffer b27(p4[4],g4[4],p3[4],g3[4]);
    buffer b28(p4[5],g4[5],p3[5],g3[5]);
    buffer b29(p4[6],g4[6],p3[6],g3[6]);
    buffer b30(p4[7],g4[7],p3[7],g3[7]);
    processing c78(p4[8],g4[8],p3[8],g3[8],p3[0],g3[0]);
    processing c79(p4[9],g4[9],p3[9],g3[9],p3[1],g3[1]);
    processing c80(p4[10],g4[10],p3[10],g3[10],p3[2],g3[2]);
    processing c81(p4[11],g4[11],p3[11],g3[11],p3[3],g3[3]);
    processing c82(p4[12],g4[12],p3[12],g3[12],p3[4],g3[4]);
    processing c83(p4[13],g4[13],p3[13],g3[13],p3[5],g3[5]);
    processing c84(p4[14],g4[14],p3[14],g3[14],p3[6],g3[6]);
    processing c85(p4[15],g4[15],p3[15],g3[15],p3[7],g3[7]);
    
    buffer b31(p4[16],g4[16],p3[16],g3[16]);
    buffer b32(p4[17],g4[17],p3[17],g3[17]);
    buffer b33(p4[18],g4[18],p3[18],g3[18]);
    buffer b34(p4[19],g4[19],p3[19],g3[19]);
    buffer b35(p4[20],g4[20],p3[20],g3[20]);
    buffer b36(p4[21],g4[21],p3[21],g3[21]);
    buffer b37(p4[22],g4[22],p3[22],g3[22]);
    buffer b38(p4[23],g4[23],p3[23],g3[23]);
    processing c86(p4[24],g4[24],p3[24],g3[24],p3[18],g3[18]);
    processing c87(p4[25],g4[25],p3[25],g3[25],p3[19],g3[19]);
    processing c88(p4[26],g4[26],p3[26],g3[26],p3[20],g3[20]);
    processing c89(p4[27],g4[27],p3[27],g3[27],p3[21],g3[21]);
    processing c90(p4[28],g4[28],p3[28],g3[28],p3[22],g3[22]);
    processing c91(p4[29],g4[29],p3[29],g3[29],p3[23],g3[23]);
    processing c92(p4[30],g4[30],p3[30],g3[30],p3[24],g3[24]);
    processing c93(p4[31],g4[31],p3[31],g3[31],p3[25],g3[25]);
    
    //5th stage
    buffer b39(p5[0],g5[0],p4[0],g4[0]);
    buffer b40(p5[1],g5[1],p4[1],g4[1]);
    buffer b41(p5[2],g5[2],p4[2],g4[2]);
    buffer b42(p5[3],g5[3],p4[3],g4[3]);
    buffer b43(p5[4],g5[4],p4[4],g4[4]);
    buffer b44(p5[5],g5[5],p4[5],g4[5]);
    buffer b45(p5[6],g5[6],p4[6],g4[6]);
    buffer b46(p5[7],g5[7],p4[7],g4[7]);
    buffer b47(p5[8],g5[8],p4[8],g4[8]);
    buffer b48(p5[9],g5[9],p4[9],g4[9]);
    buffer b49(p5[10],g5[10],p4[10],g4[10]);
    buffer b50(p5[11],g5[11],p4[11],g4[11]);
    buffer b51(p5[12],g5[12],p4[12],g4[12]);
    buffer b52(p5[13],g5[13],p4[13],g4[13]);
    buffer b53(p5[14],g5[14],p4[14],g4[14]);
    buffer b54(p5[15],g5[15],p4[15],g4[15]);
    processing c94(p5[16],g5[16],p4[16],g4[16],p4[0],g4[0]);
    processing c95(p5[17],g5[17],p4[17],g4[17],p4[1],g4[1]);
    processing c96(p5[18],g5[18],p4[18],g4[18],p4[2],g4[2]);
    processing c97(p5[19],g5[19],p4[19],g4[19],p4[3],g4[3]);
    processing c98(p5[20],g5[20],p4[20],g4[20],p4[4],g4[4]);
    processing c99(p5[21],g5[21],p4[21],g4[21],p4[5],g4[5]);
    processing c100(p5[22],g5[22],p4[22],g4[22],p4[6],g4[6]);
    processing c101(p5[23],g5[23],p4[23],g4[23],p4[7],g4[7]);
    processing c102(p5[24],g5[24],p4[24],g4[24],p4[8],g4[8]);
    processing c103(p5[25],g5[25],p4[25],g4[25],p4[9],g4[9]);
    processing c104(p5[26],g5[26],p4[26],g4[26],p4[10],g4[10]);
    processing c105(p5[27],g5[27],p4[27],g4[27],p4[11],g4[11]);
    processing c106(p5[28],g5[28],p4[28],g4[28],p4[12],g4[12]);
    processing c107(p5[29],g5[29],p4[29],g4[29],p4[13],g4[13]);
    processing c108(p5[30],g5[30],p4[30],g4[30],p4[14],g4[14]);
    processing c109(p5[31],g5[31],p4[31],g4[31],p4[15],g4[15]);


//Carry calculation
    assign ci[0]=g5[0]|(p5[0]&cin);
    assign ci[1]=g5[1]|(p5[1]&cin);
    assign ci[2]=g5[2]|(p5[2]&cin);
    assign ci[3]=g5[3]|(p5[3]&cin);
    assign ci[4]=g5[4]|(p5[4]&cin);
    assign ci[5]=g5[5]|(p5[5]&cin);
    assign ci[6]=g5[6]|(p5[6]&cin);
    assign ci[7]=g5[7]|(p5[7]&cin);
    assign ci[8]=g5[8]|(p5[8]&cin);
    assign ci[9]=g5[9]|(p5[9]&cin);
    assign ci[10]=g5[10]|(p5[10]&cin);
    assign ci[11]=g5[11]|(p5[11]&cin);
    assign ci[12]=g5[12]|(p5[12]&cin);
    assign ci[13]=g5[13]|(p5[13]&cin);
    assign ci[14]=g5[14]|(p5[14]&cin);
    assign ci[15]=g5[15]|(p5[15]&cin);
    assign ci[16]=g5[16]|(p5[16]&cin);
    assign ci[17]=g5[17]|(p5[17]&cin);
    assign ci[18]=g5[18]|(p5[18]&cin);
    assign ci[19]=g5[19]|(p5[19]&cin);
    assign ci[20]=g5[20]|(p5[20]&cin);
    assign ci[21]=g5[21]|(p5[21]&cin);
    assign ci[22]=g5[22]|(p5[22]&cin);
    assign ci[23]=g5[23]|(p5[23]&cin);
    assign ci[24]=g5[24]|(p5[24]&cin);
    assign ci[25]=g5[25]|(p5[25]&cin);
    assign ci[26]=g5[26]|(p5[26]&cin);
    assign ci[27]=g5[27]|(p5[27]&cin);
    assign ci[28]=g5[28]|(p5[28]&cin);
    assign ci[29]=g5[29]|(p5[29]&cin);
    assign ci[30]=g5[30]|(p5[30]&cin);
    assign ci[31]=g5[31]|(p5[31]&cin);
    assign cout=ci[31];

//Generating Sum
    assign s[0]=p5[0]^cin;
    assign s[1]=p5[1]^ci[0];
    assign s[2]=p5[2]^ci[1];
    assign s[3]=p5[3]^ci[2];
    assign s[4]=p5[4]^ci[3];
    assign s[5]=p5[5]^ci[4];
    assign s[6]=p5[6]^ci[5];
    assign s[7]=p5[7]^ci[6];
    assign s[8]=p5[8]^ci[7];
    assign s[9]=p5[9]^ci[8];
    assign s[10]=p5[10]^ci[9];
    assign s[11]=p5[11]^ci[10];
    assign s[12]=p5[12]^ci[11];
    assign s[13]=p5[13]^ci[12];
    assign s[14]=p5[14]^ci[13];
    assign s[15]=p5[15]^ci[14];
    assign s[16]=p5[16]^ci[15];
    assign s[17]=p5[17]^ci[16];
    assign s[18]=p5[18]^ci[17];
    assign s[19]=p5[19]^ci[18];
    assign s[20]=p5[20]^ci[19];
    assign s[21]=p5[21]^ci[20];
    assign s[22]=p5[22]^ci[21];
    assign s[23]=p5[23]^ci[22];
    assign s[24]=p5[24]^ci[23];
    assign s[25]=p5[25]^ci[24];
    assign s[26]=p5[26]^ci[25];
    assign s[27]=p5[27]^ci[26];
    assign s[28]=p5[28]^ci[27];
    assign s[29]=p5[29]^ci[28];
    assign s[30]=p5[30]^ci[29];
    assign s[31]=p5[31]^ci[30];

endmodule
