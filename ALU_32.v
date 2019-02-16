module ALU_32(result,carry_out_forAddO,carry_out_forSubO,input1,input2,select,carry_in);
input [31:0] input1,input2;
input [3:0] select;
input carry_in;
output carry_out_forAddO, carry_out_forSubO;
output[31:0] result;
wire [31:0] forAnd,forOr,forXor,forNor,forAdd,forSub,forShiftRight,forShiftLeft;


AND_32 andres(forAnd,input1,input2);
OR_32 orres(forOr,input1,input2);
XOR_32 xorres(forXor,input1,input2);
NOR_32 norres(forNor,input1,input2);
FULL_ADDER_32 addres(forAdd,carry_out_forAddO,input1,input2,carry_in);
SUBSTRACTOR_32 subres(forSub,carry_out_forSubO,input1,input2);
LEFT_SHIFTER leftres(forShiftLeft,input1,input2);
RIGHT_SHIFTER_ARITHMETIC rightres(forShiftRight,input1,input2);

MUX_8 res0(result[0],select,forAnd[0],forOr[0],forAdd[0],forXor[0],forSub[0],forShiftRight[0],forShiftLeft[0],forNor[0]);
MUX_8 res1(result[1],select,forAnd[1],forOr[1],forAdd[1],forXor[1],forSub[1],forShiftRight[1],forShiftLeft[1],forNor[1]);
MUX_8 res2(result[2],select,forAnd[2],forOr[2],forAdd[2],forXor[2],forSub[2],forShiftRight[2],forShiftLeft[2],forNor[2]);
MUX_8 res3(result[3],select,forAnd[3],forOr[3],forAdd[3],forXor[3],forSub[3],forShiftRight[3],forShiftLeft[3],forNor[3]);
MUX_8 res4(result[4],select,forAnd[4],forOr[4],forAdd[4],forXor[4],forSub[4],forShiftRight[4],forShiftLeft[4],forNor[4]);
MUX_8 res5(result[5],select,forAnd[5],forOr[5],forAdd[5],forXor[5],forSub[5],forShiftRight[5],forShiftLeft[5],forNor[5]);
MUX_8 res6(result[6],select,forAnd[6],forOr[6],forAdd[6],forXor[6],forSub[6],forShiftRight[6],forShiftLeft[6],forNor[6]);
MUX_8 res7(result[7],select,forAnd[7],forOr[7],forAdd[7],forXor[7],forSub[7],forShiftRight[7],forShiftLeft[7],forNor[7]);
MUX_8 res8(result[8],select,forAnd[8],forOr[8],forAdd[8],forXor[8],forSub[8],forShiftRight[8],forShiftLeft[8],forNor[8]);
MUX_8 res9(result[9],select,forAnd[9],forOr[9],forAdd[9],forXor[9],forSub[9],forShiftRight[9],forShiftLeft[9],forNor[9]);
MUX_8 res10(result[10],select,forAnd[10],forOr[10],forAdd[10],forXor[10],forSub[10],forShiftRight[10],forShiftLeft[10],forNor[10]);
MUX_8 res11(result[11],select,forAnd[11],forOr[11],forAdd[11],forXor[11],forSub[11],forShiftRight[11],forShiftLeft[11],forNor[11]);
MUX_8 res12(result[12],select,forAnd[12],forOr[12],forAdd[12],forXor[12],forSub[12],forShiftRight[12],forShiftLeft[12],forNor[12]);
MUX_8 res13(result[13],select,forAnd[13],forOr[13],forAdd[13],forXor[13],forSub[13],forShiftRight[13],forShiftLeft[13],forNor[13]);
MUX_8 res14(result[14],select,forAnd[14],forOr[14],forAdd[14],forXor[14],forSub[14],forShiftRight[14],forShiftLeft[14],forNor[14]);
MUX_8 res15(result[15],select,forAnd[15],forOr[15],forAdd[15],forXor[15],forSub[15],forShiftRight[15],forShiftLeft[15],forNor[15]);
MUX_8 res16(result[16],select,forAnd[16],forOr[16],forAdd[16],forXor[16],forSub[16],forShiftRight[16],forShiftLeft[16],forNor[16]);
MUX_8 res17(result[17],select,forAnd[17],forOr[17],forAdd[17],forXor[17],forSub[17],forShiftRight[17],forShiftLeft[17],forNor[17]);
MUX_8 res18(result[18],select,forAnd[18],forOr[18],forAdd[18],forXor[18],forSub[18],forShiftRight[18],forShiftLeft[18],forNor[18]);
MUX_8 res19(result[19],select,forAnd[19],forOr[19],forAdd[19],forXor[19],forSub[19],forShiftRight[19],forShiftLeft[19],forNor[19]);
MUX_8 res20(result[20],select,forAnd[20],forOr[20],forAdd[20],forXor[20],forSub[20],forShiftRight[20],forShiftLeft[20],forNor[20]);
MUX_8 res21(result[21],select,forAnd[21],forOr[21],forAdd[21],forXor[21],forSub[21],forShiftRight[21],forShiftLeft[21],forNor[21]);
MUX_8 res22(result[22],select,forAnd[22],forOr[22],forAdd[22],forXor[22],forSub[22],forShiftRight[22],forShiftLeft[22],forNor[22]);
MUX_8 res23(result[23],select,forAnd[23],forOr[23],forAdd[23],forXor[23],forSub[23],forShiftRight[23],forShiftLeft[23],forNor[23]);
MUX_8 res24(result[24],select,forAnd[24],forOr[24],forAdd[24],forXor[24],forSub[24],forShiftRight[24],forShiftLeft[24],forNor[24]);
MUX_8 res25(result[25],select,forAnd[25],forOr[25],forAdd[25],forXor[25],forSub[25],forShiftRight[25],forShiftLeft[25],forNor[25]);
MUX_8 res26(result[26],select,forAnd[26],forOr[26],forAdd[26],forXor[26],forSub[26],forShiftRight[26],forShiftLeft[26],forNor[26]);
MUX_8 res27(result[27],select,forAnd[27],forOr[27],forAdd[27],forXor[27],forSub[27],forShiftRight[27],forShiftLeft[27],forNor[27]);
MUX_8 res28(result[28],select,forAnd[28],forOr[28],forAdd[28],forXor[28],forSub[28],forShiftRight[28],forShiftLeft[28],forNor[28]);
MUX_8 res29(result[29],select,forAnd[29],forOr[29],forAdd[29],forXor[29],forSub[29],forShiftRight[29],forShiftLeft[29],forNor[29]);
MUX_8 res30(result[30],select,forAnd[30],forOr[30],forAdd[30],forXor[30],forSub[30],forShiftRight[30],forShiftLeft[30],forNor[30]);
MUX_8 res31(result[31],select,forAnd[31],forOr[31],forAdd[31],forXor[31],forSub[31],forShiftRight[31],forShiftLeft[31],forNor[31]);
endmodule

