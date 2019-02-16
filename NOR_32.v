module NOR_32(result,input1,input2);
input [31:0] input1,input2;
output [31:0] result;

nor nor0(result[0],input1[0],input2[0]);
nor nor1(result[1],input1[1],input2[1]);
nor nor2(result[2],input1[2],input2[2]);
nor nor3(result[3],input1[3],input2[3]);
nor nor4(result[4],input1[4],input2[4]);
nor nor5(result[5],input1[5],input2[5]);
nor nor6(result[6],input1[6],input2[6]);
nor nor7(result[7],input1[7],input2[7]);
nor nor8(result[8],input1[8],input2[8]);
nor nor9(result[9],input1[9],input2[9]);
nor nor10(result[10],input1[10],input2[10]);
nor nor11(result[11],input1[11],input2[11]);
nor nor12(result[12],input1[12],input2[12]);
nor nor13(result[13],input1[13],input2[13]);
nor nor14(result[14],input1[14],input2[14]);
nor nor15(result[15],input1[15],input2[15]);
nor nor16(result[16],input1[16],input2[16]);
nor nor17(result[17],input1[17],input2[17]);
nor nor18(result[18],input1[18],input2[18]);
nor nor19(result[19],input1[19],input2[19]);
nor nor20(result[20],input1[20],input2[20]);
nor nor21(result[21],input1[21],input2[21]);
nor nor22(result[22],input1[22],input2[22]);
nor nor23(result[23],input1[23],input2[23]);
nor nor24(result[24],input1[24],input2[24]);
nor nor25(result[25],input1[25],input2[25]);
nor nor26(result[26],input1[26],input2[26]);
nor nor27(result[27],input1[27],input2[27]);
nor nor28(result[28],input1[28],input2[28]);
nor nor29(result[29],input1[29],input2[29]);
nor nor30(result[30],input1[30],input2[30]);
nor nor31(result[31],input1[31],input2[31]);


endmodule
