module SUBSTRACTOR_32(dif,carry_out,input1,input2);
input [31:0] input1,input2;
output carry_out;
output [31:0] dif;
wire [31:0] not_for_input2;

not not0(not_for_input2[0],input2[0]);
not not1(not_for_input2[1],input2[1]);
not not2(not_for_input2[2],input2[2]);
not not3(not_for_input2[3],input2[3]);
not not4(not_for_input2[4],input2[4]);
not not5(not_for_input2[5],input2[5]);
not not6(not_for_input2[6],input2[6]);
not not7(not_for_input2[7],input2[7]);
not not8(not_for_input2[8],input2[8]);
not not9(not_for_input2[9],input2[9]);
not not10(not_for_input2[10],input2[10]);
not not11(not_for_input2[11],input2[11]);
not not12(not_for_input2[12],input2[12]);
not not13(not_for_input2[13],input2[13]);
not not14(not_for_input2[14],input2[14]);
not not15(not_for_input2[15],input2[15]);
not not16(not_for_input2[16],input2[16]);
not not17(not_for_input2[17],input2[17]);
not not18(not_for_input2[18],input2[18]);
not not19(not_for_input2[19],input2[19]);
not not20(not_for_input2[20],input2[20]);
not not21(not_for_input2[21],input2[21]);
not not22(not_for_input2[22],input2[22]);
not not23(not_for_input2[23],input2[23]);
not not24(not_for_input2[24],input2[24]);
not not25(not_for_input2[25],input2[25]);
not not26(not_for_input2[26],input2[26]);
not not27(not_for_input2[27],input2[27]);
not not28(not_for_input2[28],input2[28]);
not not29(not_for_input2[29],input2[29]);
not not30(not_for_input2[30],input2[30]);
not not31(not_for_input2[31],input2[31]);


FULL_ADDER_32 subs(dif,carry_out,input1,not_for_input2,1);
endmodule
