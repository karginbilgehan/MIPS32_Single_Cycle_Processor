module RIGHT_SHIFTER_ARITHMETIC(result,input1,input2);
input [31:0] input1,input2;
output[31:0] result;
wire level1_wire0,level1_wire1,level1_wire2,level1_wire3,level1_wire4,level1_wire5,level1_wire6,level1_wire7,level1_wire8,level1_wire9,level1_wire10,level1_wire11,level1_wire12,level1_wire13,level1_wire14,level1_wire15,level1_wire16,level1_wire17,level1_wire18,level1_wire19,level1_wire20,level1_wire21,level1_wire22,level1_wire23,level1_wire24,level1_wire25,level1_wire26,level1_wire27,level1_wire28,level1_wire29,level1_wire30,level1_wire31;
wire level2_wire0,level2_wire1,level2_wire2,level2_wire3,level2_wire4,level2_wire5,level2_wire6,level2_wire7,level2_wire8,level2_wire9,level2_wire10,level2_wire11,level2_wire12,level2_wire13,level2_wire14,level2_wire15,level2_wire16,level2_wire17,level2_wire18,level2_wire19,level2_wire20,level2_wire21,level2_wire22,level2_wire23,level2_wire24,level2_wire25,level2_wire26,level2_wire27,level2_wire28,level2_wire29,level2_wire30,level2_wire31;
wire level3_wire0,level3_wire1,level3_wire2,level3_wire3,level3_wire4,level3_wire5,level3_wire6,level3_wire7,level3_wire8,level3_wire9,level3_wire10,level3_wire11,level3_wire12,level3_wire13,level3_wire14,level3_wire15,level3_wire16,level3_wire17,level3_wire18,level3_wire19,level3_wire20,level3_wire21,level3_wire22,level3_wire23,level3_wire24,level3_wire25,level3_wire26,level3_wire27,level3_wire28,level3_wire29,level3_wire30,level3_wire31;
wire level4_wire0,level4_wire1,level4_wire2,level4_wire3,level4_wire4,level4_wire5,level4_wire6,level4_wire7,level4_wire8,level4_wire9,level4_wire10,level4_wire11,level4_wire12,level4_wire13,level4_wire14,level4_wire15,level4_wire16,level4_wire17,level4_wire18,level4_wire19,level4_wire20,level4_wire21,level4_wire22,level4_wire23,level4_wire24,level4_wire25,level4_wire26,level4_wire27,level4_wire28,level4_wire29,level4_wire30,level4_wire31;

// for first level
MUX_2 w1(level1_wire0,input1[0],input1[1],input2[0]);
MUX_2 w2(level1_wire1,input1[1],input1[2],input2[0]);
MUX_2 w3(level1_wire2,input1[2],input1[3],input2[0]);
MUX_2 w4(level1_wire3,input1[3],input1[4],input2[0]);
MUX_2 w5(level1_wire4,input1[4],input1[5],input2[0]);
MUX_2 w6(level1_wire5,input1[5],input1[6],input2[0]);
MUX_2 w7(level1_wire6,input1[6],input1[7],input2[0]);
MUX_2 w8(level1_wire7,input1[7],input1[8],input2[0]);
MUX_2 w9(level1_wire8,input1[8],input1[9],input2[0]);
MUX_2 w10(level1_wire9,input1[9],input1[10],input2[0]);
MUX_2 w11(level1_wire10,input1[10],input1[11],input2[0]);
MUX_2 w12(level1_wire11,input1[11],input1[12],input2[0]);
MUX_2 w13(level1_wire12,input1[12],input1[13],input2[0]);
MUX_2 w14(level1_wire13,input1[13],input1[14],input2[0]);
MUX_2 w15(level1_wire14,input1[14],input1[15],input2[0]);
MUX_2 w16(level1_wire15,input1[15],input1[16],input2[0]);
MUX_2 w17(level1_wire16,input1[16],input1[17],input2[0]);
MUX_2 w18(level1_wire17,input1[17],input1[18],input2[0]);
MUX_2 w19(level1_wire18,input1[18],input1[19],input2[0]);
MUX_2 w20(level1_wire19,input1[19],input1[20],input2[0]);
MUX_2 w21(level1_wire20,input1[20],input1[21],input2[0]);
MUX_2 w22(level1_wire21,input1[21],input1[22],input2[0]);
MUX_2 w23(level1_wire22,input1[22],input1[23],input2[0]);
MUX_2 w24(level1_wire23,input1[23],input1[24],input2[0]);
MUX_2 w25(level1_wire24,input1[24],input1[25],input2[0]);
MUX_2 w26(level1_wire25,input1[25],input1[26],input2[0]);
MUX_2 w27(level1_wire26,input1[26],input1[27],input2[0]);
MUX_2 w28(level1_wire27,input1[27],input1[28],input2[0]);
MUX_2 w29(level1_wire28,input1[28],input1[29],input2[0]);
MUX_2 w30(level1_wire29,input1[29],input1[30],input2[0]);
MUX_2 w31(level1_wire30,input1[30],input1[31],input2[0]);
MUX_2 w32(level1_wire31,input1[31],0,input2[0]);

// for second level
MUX_2 a1(level2_wire0,level1_wire0,level1_wire2,input2[1]);
MUX_2 a2(level2_wire1,level1_wire1,level1_wire3,input2[1]);
MUX_2 a3(level2_wire2,level1_wire2,level1_wire4,input2[1]);
MUX_2 a4(level2_wire3,level1_wire3,level1_wire5,input2[1]);
MUX_2 a5(level2_wire4,level1_wire4,level1_wire6,input2[1]);
MUX_2 a6(level2_wire5,level1_wire5,level1_wire7,input2[1]);
MUX_2 a7(level2_wire6,level1_wire6,level1_wire8,input2[1]);
MUX_2 a8(level2_wire7,level1_wire7,level1_wire9,input2[1]);
MUX_2 a9(level2_wire8,level1_wire8,level1_wire10,input2[1]);
MUX_2 a10(level2_wire9,level1_wire9,level1_wire11,input2[1]);
MUX_2 a11(level2_wire10,level1_wire10,level1_wire12,input2[1]);
MUX_2 a12(level2_wire11,level1_wire11,level1_wire13,input2[1]);
MUX_2 a13(level2_wire12,level1_wire12,level1_wire14,input2[1]);
MUX_2 a14(level2_wire13,level1_wire13,level1_wire15,input2[1]);
MUX_2 a15(level2_wire14,level1_wire14,level1_wire16,input2[1]);
MUX_2 a16(level2_wire15,level1_wire15,level1_wire17,input2[1]);
MUX_2 a17(level2_wire16,level1_wire16,level1_wire18,input2[1]);
MUX_2 a18(level2_wire17,level1_wire17,level1_wire19,input2[1]);
MUX_2 a19(level2_wire18,level1_wire18,level1_wire20,input2[1]);
MUX_2 a20(level2_wire19,level1_wire19,level1_wire21,input2[1]);
MUX_2 a21(level2_wire20,level1_wire20,level1_wire22,input2[1]);
MUX_2 a22(level2_wire21,level1_wire21,level1_wire23,input2[1]);
MUX_2 a23(level2_wire22,level1_wire22,level1_wire24,input2[1]);
MUX_2 a24(level2_wire23,level1_wire23,level1_wire25,input2[1]);
MUX_2 a25(level2_wire24,level1_wire24,level1_wire26,input2[1]);
MUX_2 a26(level2_wire25,level1_wire25,level1_wire27,input2[1]);
MUX_2 a27(level2_wire26,level1_wire26,level1_wire28,input2[1]);
MUX_2 a28(level2_wire27,level1_wire27,level1_wire29,input2[1]);
MUX_2 a29(level2_wire28,level1_wire28,level1_wire30,input2[1]);
MUX_2 a30(level2_wire29,level1_wire29,level1_wire31,input2[1]);
MUX_2 a31(level2_wire30,level1_wire30,0,input2[1]);
MUX_2 a32(level2_wire31,level1_wire31,0,input2[1]);

// for third level

MUX_2 b0(level3_wire0,level2_wire0,level2_wire4,input2[2]);
MUX_2 b1(level3_wire1,level2_wire1,level2_wire5,input2[2]);
MUX_2 b2(level3_wire2,level2_wire2,level2_wire6,input2[2]);
MUX_2 b3(level3_wire3,level2_wire3,level2_wire7,input2[2]);
MUX_2 b4(level3_wire4,level2_wire4,level2_wire8,input2[2]);
MUX_2 b5(level3_wire5,level2_wire5,level2_wire9,input2[2]);
MUX_2 b6(level3_wire6,level2_wire6,level2_wire10,input2[2]);
MUX_2 b7(level3_wire7,level2_wire7,level2_wire11,input2[2]);
MUX_2 b8(level3_wire8,level2_wire8,level2_wire12,input2[2]);
MUX_2 b9(level3_wire9,level2_wire9,level2_wire13,input2[2]);
MUX_2 b10(level3_wire10,level2_wire10,level2_wire14,input2[2]);
MUX_2 b11(level3_wire11,level2_wire11,level2_wire15,input2[2]);
MUX_2 b12(level3_wire12,level2_wire12,level2_wire16,input2[2]);
MUX_2 b13(level3_wire13,level2_wire13,level2_wire17,input2[2]);
MUX_2 b14(level3_wire14,level2_wire14,level2_wire18,input2[2]);
MUX_2 b15(level3_wire15,level2_wire15,level2_wire19,input2[2]);
MUX_2 b16(level3_wire16,level2_wire16,level2_wire20,input2[2]);
MUX_2 b17(level3_wire17,level2_wire17,level2_wire21,input2[2]);
MUX_2 b18(level3_wire18,level2_wire18,level2_wire22,input2[2]);
MUX_2 b19(level3_wire19,level2_wire19,level2_wire23,input2[2]);
MUX_2 b20(level3_wire20,level2_wire20,level2_wire24,input2[2]);
MUX_2 b21(level3_wire21,level2_wire21,level2_wire25,input2[2]);
MUX_2 b22(level3_wire22,level2_wire22,level2_wire26,input2[2]);
MUX_2 b23(level3_wire23,level2_wire23,level2_wire27,input2[2]);
MUX_2 b24(level3_wire24,level2_wire24,level2_wire28,input2[2]);
MUX_2 b25(level3_wire25,level2_wire25,level2_wire29,input2[2]);
MUX_2 b26(level3_wire26,level2_wire26,level2_wire30,input2[2]);
MUX_2 b27(level3_wire27,level2_wire27,level2_wire31,input2[2]);
MUX_2 b28(level3_wire28,level2_wire28,0,input2[2]);
MUX_2 b29(level3_wire29,level2_wire29,0,input2[2]);
MUX_2 b30(level3_wire30,level2_wire30,0,input2[2]);
MUX_2 b31(level3_wire31,level2_wire31,0,input2[2]);

//for fourth level

MUX_2 c0(level4_wire0,level3_wire0,level3_wire8,input2[3]);
MUX_2 c1(level4_wire1,level3_wire1,level3_wire9,input2[3]);
MUX_2 c2(level4_wire2,level3_wire2,level3_wire10,input2[3]);
MUX_2 c3(level4_wire3,level3_wire3,level3_wire11,input2[3]);
MUX_2 c4(level4_wire4,level3_wire4,level3_wire12,input2[3]);
MUX_2 c5(level4_wire5,level3_wire5,level3_wire13,input2[3]);
MUX_2 c6(level4_wire6,level3_wire6,level3_wire14,input2[3]);
MUX_2 c7(level4_wire7,level3_wire7,level3_wire15,input2[3]);
MUX_2 c8(level4_wire8,level3_wire8,level3_wire16,input2[3]);
MUX_2 c9(level4_wire9,level3_wire9,level3_wire17,input2[3]);
MUX_2 c10(level4_wire10,level3_wire10,level3_wire18,input2[3]);
MUX_2 c11(level4_wire11,level3_wire11,level3_wire19,input2[3]);
MUX_2 c12(level4_wire12,level3_wire12,level3_wire20,input2[3]);
MUX_2 c13(level4_wire13,level3_wire13,level3_wire21,input2[3]);
MUX_2 c14(level4_wire14,level3_wire14,level3_wire22,input2[3]);
MUX_2 c15(level4_wire15,level3_wire15,level3_wire23,input2[3]);
MUX_2 c16(level4_wire16,level3_wire16,level3_wire24,input2[3]);
MUX_2 c17(level4_wire17,level3_wire17,level3_wire25,input2[3]);
MUX_2 c18(level4_wire18,level3_wire18,level3_wire26,input2[3]);
MUX_2 c19(level4_wire19,level3_wire19,level3_wire27,input2[3]);
MUX_2 c20(level4_wire20,level3_wire20,level3_wire28,input2[3]);
MUX_2 c21(level4_wire21,level3_wire21,level3_wire29,input2[3]);
MUX_2 c22(level4_wire22,level3_wire22,level3_wire30,input2[3]);
MUX_2 c23(level4_wire23,level3_wire23,level3_wire31,input2[3]);
MUX_2 c24(level4_wire24,level3_wire24,0,input2[3]);
MUX_2 c25(level4_wire25,level3_wire25,0,input2[3]);
MUX_2 c26(level4_wire26,level3_wire26,0,input2[3]);
MUX_2 c27(level4_wire27,level3_wire27,0,input2[3]);
MUX_2 c28(level4_wire28,level3_wire28,0,input2[3]);
MUX_2 c29(level4_wire29,level3_wire29,0,input2[3]);
MUX_2 c30(level4_wire30,level3_wire30,0,input2[3]);
MUX_2 c31(level4_wire31,level3_wire31,0,input2[3]);

//for fifth level
MUX_2 d0(result[0],level4_wire0,level4_wire16,input2[4]);
MUX_2 d1(result[1],level4_wire1,level4_wire17,input2[4]);
MUX_2 d2(result[2],level4_wire2,level4_wire18,input2[4]);
MUX_2 d3(result[3],level4_wire3,level4_wire19,input2[4]);
MUX_2 d4(result[4],level4_wire4,level4_wire20,input2[4]);
MUX_2 d5(result[5],level4_wire5,level4_wire21,input2[4]);
MUX_2 d6(result[6],level4_wire6,level4_wire22,input2[4]);
MUX_2 d7(result[7],level4_wire7,level4_wire23,input2[4]);
MUX_2 d8(result[8],level4_wire8,level4_wire24,input2[4]);
MUX_2 d9(result[9],level4_wire9,level4_wire25,input2[4]);
MUX_2 d10(result[10],level4_wire10,level4_wire26,input2[4]);
MUX_2 d11(result[11],level4_wire11,level4_wire27,input2[4]);
MUX_2 d12(result[12],level4_wire12,level4_wire28,input2[4]);
MUX_2 d13(result[13],level4_wire13,level4_wire29,input2[4]);
MUX_2 d14(result[14],level4_wire14,level4_wire30,input2[4]);
MUX_2 d15(result[15],level4_wire15,level4_wire31,input2[4]);
MUX_2 d16(result[16],level4_wire16,0,input2[4]);
MUX_2 d17(result[17],level4_wire17,0,input2[4]);
MUX_2 d18(result[18],level4_wire18,0,input2[4]);
MUX_2 d19(result[19],level4_wire19,0,input2[4]);
MUX_2 d20(result[20],level4_wire20,0,input2[4]);
MUX_2 d21(result[21],level4_wire21,0,input2[4]);
MUX_2 d22(result[22],level4_wire22,0,input2[4]);
MUX_2 d23(result[23],level4_wire23,0,input2[4]);
MUX_2 d24(result[24],level4_wire24,0,input2[4]);
MUX_2 d25(result[25],level4_wire25,0,input2[4]);
MUX_2 d26(result[26],level4_wire26,0,input2[4]);
MUX_2 d27(result[27],level4_wire27,0,input2[4]);
MUX_2 d28(result[28],level4_wire28,0,input2[4]);
MUX_2 d29(result[29],level4_wire29,0,input2[4]);
MUX_2 d30(result[30],level4_wire30,0,input2[4]);
MUX_2 d31(result[31],level4_wire31,0,input2[4]);

endmodule
