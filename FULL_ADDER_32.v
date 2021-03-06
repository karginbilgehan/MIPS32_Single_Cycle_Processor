module FULL_ADDER_32(sum,carry_out,input1,input2,carry_in_0);
input [31:0] input1,input2;
input carry_in_0;
output [31:0] sum;
output carry_out;
wire carry_in_1,carry_in_2,carry_in_3,carry_in_4,carry_in_5,carry_in_6,carry_in_7,carry_in_8,carry_in_9,carry_in_10,carry_in_11,carry_in_12;
wire carry_in_13,carry_in_14,carry_in_15,carry_in_16,carry_in_17,carry_in_18,carry_in_19,carry_in_20,carry_in_21,carry_in_22;
wire carry_in_23,carry_in_24,carry_in_25,carry_in_26,carry_in_27,carry_in_28,carry_in_29,carry_in_30,carry_in_31;

FULL_ADDER add0(sum[0],carry_in_1,input1[0],input2[0],carry_in_0);
FULL_ADDER add1(sum[1],carry_in_2,input1[1],input2[1],carry_in_1);
FULL_ADDER add2(sum[2],carry_in_3,input1[2],input2[2],carry_in_2);
FULL_ADDER add3(sum[3],carry_in_4,input1[3],input2[3],carry_in_3);
FULL_ADDER add4(sum[4],carry_in_5,input1[4],input2[4],carry_in_4);
FULL_ADDER add5(sum[5],carry_in_6,input1[5],input2[5],carry_in_5);
FULL_ADDER add6(sum[6],carry_in_7,input1[5],input2[6],carry_in_6);
FULL_ADDER add7(sum[7],carry_in_8,input1[7],input2[7],carry_in_7);
FULL_ADDER add8(sum[8],carry_in_9,input1[8],input2[8],carry_in_8);
FULL_ADDER add9(sum[9],carry_in_10,input1[9],input2[9],carry_in_9);
FULL_ADDER add10(sum[10],carry_in_11,input1[10],input2[10],carry_in_10);
FULL_ADDER add11(sum[11],carry_in_12,input1[11],input2[11],carry_in_11);
FULL_ADDER add12(sum[12],carry_in_13,input1[12],input2[12],carry_in_12);
FULL_ADDER add13(sum[13],carry_in_14,input1[13],input2[13],carry_in_13);
FULL_ADDER add14(sum[14],carry_in_15,input1[14],input2[14],carry_in_14);
FULL_ADDER add15(sum[15],carry_in_16,input1[15],input2[15],carry_in_15);
FULL_ADDER add16(sum[16],carry_in_17,input1[16],input2[16],carry_in_16);
FULL_ADDER add17(sum[17],carry_in_18,input1[17],input2[17],carry_in_17);
FULL_ADDER add18(sum[18],carry_in_19,input1[18],input2[18],carry_in_18);
FULL_ADDER add19(sum[19],carry_in_20,input1[19],input2[19],carry_in_19);
FULL_ADDER add20(sum[20],carry_in_21,input1[20],input2[20],carry_in_20);
FULL_ADDER add21(sum[21],carry_in_22,input1[21],input2[21],carry_in_21);
FULL_ADDER add22(sum[22],carry_in_23,input1[22],input2[22],carry_in_22);
FULL_ADDER add23(sum[23],carry_in_24,input1[23],input2[23],carry_in_23);
FULL_ADDER add24(sum[24],carry_in_25,input1[24],input2[24],carry_in_24);
FULL_ADDER add25(sum[25],carry_in_26,input1[25],input2[25],carry_in_25);
FULL_ADDER add26(sum[26],carry_in_27,input1[26],input2[26],carry_in_26);
FULL_ADDER add27(sum[27],carry_in_28,input1[27],input2[27],carry_in_27);
FULL_ADDER add28(sum[28],carry_in_29,input1[28],input2[28],carry_in_28);
FULL_ADDER add29(sum[29],carry_in_30,input1[29],input2[29],carry_in_29);
FULL_ADDER add30(sum[30],carry_in_31,input1[30],input2[30],carry_in_30);
FULL_ADDER add31(sum[31],carry_out,input1[31],input2[31],carry_in_31);
endmodule
