module concat(extend_data,shamt);
output [31:0] extend_data;
input [4:0] shamt;

and and0(extend_data[0],shamt[0],1);
and and1(extend_data[1],shamt[1],1);
and and2(extend_data[2],shamt[2],1);
and and3(extend_data[3],shamt[3],1);
and and4(extend_data[4],shamt[4],1);
and and5(extend_data[5],0,0);
and and6(extend_data[6],0,0);
and and7(extend_data[7],0,0);
and and8(extend_data[8],0,0);
and and9(extend_data[9],0,0);
and and10(extend_data[10],0,0);
and and11(extend_data[11],0,0);
and and12(extend_data[12],0,0);
and and13(extend_data[13],0,0);
and and14(extend_data[14],0,0);
and and15(extend_data[15],0,0);
and and16(extend_data[16],0,0);
and and17(extend_data[17],0,0);
and and18(extend_data[18],0,0);
and and19(extend_data[19],0,0);
and and20(extend_data[20],0,0);
and and21(extend_data[21],0,0);
and and22(extend_data[22],0,0);
and and23(extend_data[23],0,0);
and and24(extend_data[24],0,0);
and and25(extend_data[25],0,0);
and and26(extend_data[26],0,0);
and and27(extend_data[27],0,0);
and and28(extend_data[28],0,0);
and and29(extend_data[29],0,0);
and and30(extend_data[30],0,0);
and and31(extend_data[31],0,0);


endmodule
