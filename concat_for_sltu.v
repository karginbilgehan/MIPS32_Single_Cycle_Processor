module concat_for_sltu(extend_reg,msb);
output [31:0]extend_reg;
input msb;

and and0(extend_reg[0],msb,1);
and and1(extend_reg[1],0,0);
and and2(extend_reg[2],0,0);
and and3(extend_reg[3],0,0);
and and4(extend_reg[4],0,0);
and and5(extend_reg[5],0,0);
and and6(extend_reg[6],0,0);
and and7(extend_reg[7],0,0);
and and8(extend_reg[8],0,0);
and and9(extend_reg[9],0,0);
and and10(extend_reg[10],0,0);
and and11(extend_reg[11],0,0);
and and12(extend_reg[12],0,0);
and and13(extend_reg[13],0,0);
and and14(extend_reg[14],0,0);
and and15(extend_reg[15],0,0);
and and16(extend_reg[16],0,0);
and and17(extend_reg[17],0,0);
and and18(extend_reg[18],0,0);
and and19(extend_reg[19],0,0);
and and20(extend_reg[20],0,0);
and and21(extend_reg[21],0,0);
and and22(extend_reg[22],0,0);
and and23(extend_reg[23],0,0);
and and24(extend_reg[24],0,0);
and and25(extend_reg[25],0,0);
and and26(extend_reg[26],0,0);
and and27(extend_reg[27],0,0);
and and28(extend_reg[28],0,0);
and and29(extend_reg[29],0,0);
and and30(extend_reg[30],0,0);
and and31(extend_reg[31],0,0);


endmodule
