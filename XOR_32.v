module XOR_32(result,input1,input2);
input [31:0] input1,input2;
output [31:0] result;

xor xor0(result[0],input1[0],input2[0]);
xor xor1(result[1],input1[1],input2[1]);
xor xor2(result[2],input1[2],input2[2]);
xor xor3(result[3],input1[3],input2[3]);
xor xor4(result[4],input1[4],input2[4]);
xor xor5(result[5],input1[5],input2[5]);
xor xor6(result[6],input1[6],input2[6]);
xor xor7(result[7],input1[7],input2[7]);
xor xor8(result[8],input1[8],input2[8]);
xor xor9(result[9],input1[9],input2[9]);
xor xor10(result[10],input1[10],input2[10]);
xor xor11(result[11],input1[11],input2[11]);
xor xor12(result[12],input1[12],input2[12]);
xor xor13(result[13],input1[13],input2[13]);
xor xor14(result[14],input1[14],input2[14]);
xor xor15(result[15],input1[15],input2[15]);
xor xor16(result[16],input1[16],input2[16]);
xor xor17(result[17],input1[17],input2[17]);
xor xor18(result[18],input1[18],input2[18]);
xor xor19(result[19],input1[19],input2[19]);
xor xor20(result[20],input1[20],input2[20]);
xor xor21(result[21],input1[21],input2[21]);
xor xor22(result[22],input1[22],input2[22]);
xor xor23(result[23],input1[23],input2[23]);
xor xor24(result[24],input1[24],input2[24]);
xor xor25(result[25],input1[25],input2[25]);
xor xor26(result[26],input1[26],input2[26]);
xor xor27(result[27],input1[27],input2[27]);
xor xor28(result[28],input1[28],input2[28]);
xor xor29(result[29],input1[29],input2[29]);
xor xor30(result[30],input1[30],input2[30]);
xor xor31(result[31],input1[31],input2[31]);

endmodule
