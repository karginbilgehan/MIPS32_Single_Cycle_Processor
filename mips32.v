module mips32(instruction,result,clk);

input [31:0] instruction;
output [31:0] result;
input clk;
wire [2:0] select_bits;
wire [31:0] read_data_1, read_data_2;
wire carry_Out_forAdd, carry_Out_forSub;
wire [31:0] for_shift_operation, for_shift_operation_2,for_concatenate,for_sltu_operation,for_sltu_concatenate;
wire signal_reg_write;
wire msb_bit;

control_unit control(select_bits,instruction[5:0]);//to determine select bits
mips_registers register(read_data_1,read_data_2,for_sltu_operation,instruction[25:21],instruction[20:16],instruction[15:11],1,clk);//to read and write instruction
concat conc(for_concatenate,instruction[10:6]);//it is for sll and srl operations. If operations are sll or srl shamt bits is concatenated by 0 and extended 32 bits. 


//it is for shift operation. When f5 came "0", that means alu select shift operation(first mux)
MUX_2 m0(for_shift_operation[0],read_data_2[0],read_data_1[0],instruction[5]);
MUX_2 m1(for_shift_operation[1],read_data_2[1],read_data_1[1],instruction[5]);
MUX_2 m2(for_shift_operation[2],read_data_2[2],read_data_1[2],instruction[5]);
MUX_2 m3(for_shift_operation[3],read_data_2[3],read_data_1[3],instruction[5]);
MUX_2 m4(for_shift_operation[4],read_data_2[4],read_data_1[4],instruction[5]);
MUX_2 m5(for_shift_operation[5],read_data_2[5],read_data_1[5],instruction[5]);
MUX_2 m6(for_shift_operation[6],read_data_2[6],read_data_1[6],instruction[5]);
MUX_2 m7(for_shift_operation[7],read_data_2[7],read_data_1[7],instruction[5]);
MUX_2 m8(for_shift_operation[8],read_data_2[8],read_data_1[8],instruction[5]);
MUX_2 m9(for_shift_operation[9],read_data_2[9],read_data_1[9],instruction[5]);
MUX_2 m10(for_shift_operation[10],read_data_2[10],read_data_1[10],instruction[5]);
MUX_2 m11(for_shift_operation[11],read_data_2[11],read_data_1[11],instruction[5]);
MUX_2 m12(for_shift_operation[12],read_data_2[12],read_data_1[12],instruction[5]);
MUX_2 m13(for_shift_operation[13],read_data_2[13],read_data_1[13],instruction[5]);
MUX_2 m14(for_shift_operation[14],read_data_2[14],read_data_1[14],instruction[5]);
MUX_2 m15(for_shift_operation[15],read_data_2[15],read_data_1[15],instruction[5]);
MUX_2 m16(for_shift_operation[16],read_data_2[16],read_data_1[16],instruction[5]);
MUX_2 m17(for_shift_operation[17],read_data_2[17],read_data_1[17],instruction[5]);
MUX_2 m18(for_shift_operation[18],read_data_2[18],read_data_1[18],instruction[5]);
MUX_2 m19(for_shift_operation[19],read_data_2[19],read_data_1[19],instruction[5]);
MUX_2 m20(for_shift_operation[20],read_data_2[20],read_data_1[20],instruction[5]);
MUX_2 m21(for_shift_operation[21],read_data_2[21],read_data_1[21],instruction[5]);
MUX_2 m22(for_shift_operation[22],read_data_2[22],read_data_1[22],instruction[5]);
MUX_2 m23(for_shift_operation[23],read_data_2[23],read_data_1[23],instruction[5]);
MUX_2 m24(for_shift_operation[24],read_data_2[24],read_data_1[24],instruction[5]);
MUX_2 m25(for_shift_operation[25],read_data_2[25],read_data_1[25],instruction[5]);
MUX_2 m26(for_shift_operation[26],read_data_2[26],read_data_1[26],instruction[5]);
MUX_2 m27(for_shift_operation[27],read_data_2[27],read_data_1[27],instruction[5]);
MUX_2 m28(for_shift_operation[28],read_data_2[28],read_data_1[28],instruction[5]);
MUX_2 m29(for_shift_operation[29],read_data_2[29],read_data_1[29],instruction[5]);
MUX_2 m30(for_shift_operation[30],read_data_2[30],read_data_1[30],instruction[5]);
MUX_2 m31(for_shift_operation[31],read_data_2[31],read_data_1[31],instruction[5]);

//it is for shift operation. When f5 came "0", that means alu select shift operation(second mux) 
MUX_2 a0(for_shift_operation_2[0],for_concatenate[0],read_data_2[0],instruction[5]);
MUX_2 a1(for_shift_operation_2[1],for_concatenate[1],read_data_2[1],instruction[5]);
MUX_2 a2(for_shift_operation_2[2],for_concatenate[2],read_data_2[2],instruction[5]);
MUX_2 a3(for_shift_operation_2[3],for_concatenate[3],read_data_2[3],instruction[5]);
MUX_2 a4(for_shift_operation_2[4],for_concatenate[4],read_data_2[4],instruction[5]);
MUX_2 a5(for_shift_operation_2[5],for_concatenate[5],read_data_2[5],instruction[5]);
MUX_2 a6(for_shift_operation_2[6],for_concatenate[6],read_data_2[6],instruction[5]);
MUX_2 a7(for_shift_operation_2[7],for_concatenate[7],read_data_2[7],instruction[5]);
MUX_2 a8(for_shift_operation_2[8],for_concatenate[8],read_data_2[8],instruction[5]);
MUX_2 a9(for_shift_operation_2[9],for_concatenate[9],read_data_2[9],instruction[5]);
MUX_2 a10(for_shift_operation_2[10],for_concatenate[10],read_data_2[10],instruction[5]);
MUX_2 a11(for_shift_operation_2[11],for_concatenate[11],read_data_2[11],instruction[5]);
MUX_2 a12(for_shift_operation_2[12],for_concatenate[12],read_data_2[12],instruction[5]);
MUX_2 a13(for_shift_operation_2[13],for_concatenate[13],read_data_2[13],instruction[5]);
MUX_2 a14(for_shift_operation_2[14],for_concatenate[14],read_data_2[14],instruction[5]);
MUX_2 a15(for_shift_operation_2[15],for_concatenate[15],read_data_2[15],instruction[5]);
MUX_2 a16(for_shift_operation_2[16],for_concatenate[16],read_data_2[16],instruction[5]);
MUX_2 a17(for_shift_operation_2[17],for_concatenate[17],read_data_2[17],instruction[5]);
MUX_2 a18(for_shift_operation_2[18],for_concatenate[18],read_data_2[18],instruction[5]);
MUX_2 a19(for_shift_operation_2[19],for_concatenate[19],read_data_2[19],instruction[5]);
MUX_2 a20(for_shift_operation_2[20],for_concatenate[20],read_data_2[20],instruction[5]);
MUX_2 a21(for_shift_operation_2[21],for_concatenate[21],read_data_2[21],instruction[5]);
MUX_2 a22(for_shift_operation_2[22],for_concatenate[22],read_data_2[22],instruction[5]);
MUX_2 a23(for_shift_operation_2[23],for_concatenate[23],read_data_2[23],instruction[5]);
MUX_2 a24(for_shift_operation_2[24],for_concatenate[24],read_data_2[24],instruction[5]);
MUX_2 a25(for_shift_operation_2[25],for_concatenate[25],read_data_2[25],instruction[5]);
MUX_2 a26(for_shift_operation_2[26],for_concatenate[26],read_data_2[26],instruction[5]);
MUX_2 a27(for_shift_operation_2[27],for_concatenate[27],read_data_2[27],instruction[5]);
MUX_2 a28(for_shift_operation_2[28],for_concatenate[28],read_data_2[28],instruction[5]);
MUX_2 a29(for_shift_operation_2[29],for_concatenate[29],read_data_2[29],instruction[5]);
MUX_2 a30(for_shift_operation_2[30],for_concatenate[30],read_data_2[30],instruction[5]);
MUX_2 a31(for_shift_operation_2[31],for_concatenate[31],read_data_2[31],instruction[5]);



ALU_32 alu_unit(result, carry_Out_forAdd, carry_Out_forSub,for_shift_operation,for_shift_operation_2,select_bits,0);//it is for alu operations
concat_for_sltu c1(for_sltu_concatenate,result[31]);//it is for sltu instruction. If instruction is sltu, most significant bit concatenated by 0.


//It is for write data. First entry of mux is standart output of alu, Second entry of mux is the most important bit of the result is concataneted with 0.
//And this mux result goes to mips_register as write data. 
MUX_2 b0(for_sltu_operation[0],result[0],for_sltu_concatenate[0],instruction[3]);
MUX_2 b1(for_sltu_operation[1],result[1],for_sltu_concatenate[1],instruction[3]);
MUX_2 b2(for_sltu_operation[2],result[2],for_sltu_concatenate[2],instruction[3]);
MUX_2 b3(for_sltu_operation[3],result[3],for_sltu_concatenate[3],instruction[3]);
MUX_2 b4(for_sltu_operation[4],result[4],for_sltu_concatenate[4],instruction[3]);
MUX_2 b5(for_sltu_operation[5],result[5],for_sltu_concatenate[5],instruction[3]);
MUX_2 b6(for_sltu_operation[6],result[6],for_sltu_concatenate[6],instruction[3]);
MUX_2 b7(for_sltu_operation[7],result[7],for_sltu_concatenate[7],instruction[3]);
MUX_2 b8(for_sltu_operation[8],result[8],for_sltu_concatenate[8],instruction[3]);
MUX_2 b9(for_sltu_operation[9],result[9],for_sltu_concatenate[9],instruction[3]);
MUX_2 b10(for_sltu_operation[10],result[10],for_sltu_concatenate[10],instruction[3]);
MUX_2 b11(for_sltu_operation[11],result[11],for_sltu_concatenate[11],instruction[3]);
MUX_2 b12(for_sltu_operation[12],result[12],for_sltu_concatenate[12],instruction[3]);
MUX_2 b13(for_sltu_operation[13],result[13],for_sltu_concatenate[13],instruction[3]);
MUX_2 b14(for_sltu_operation[14],result[14],for_sltu_concatenate[14],instruction[3]);
MUX_2 b15(for_sltu_operation[15],result[15],for_sltu_concatenate[15],instruction[3]);
MUX_2 b16(for_sltu_operation[16],result[16],for_sltu_concatenate[16],instruction[3]);
MUX_2 b17(for_sltu_operation[17],result[17],for_sltu_concatenate[17],instruction[3]);
MUX_2 b18(for_sltu_operation[18],result[18],for_sltu_concatenate[18],instruction[3]);
MUX_2 b19(for_sltu_operation[19],result[19],for_sltu_concatenate[19],instruction[3]);
MUX_2 b20(for_sltu_operation[20],result[20],for_sltu_concatenate[20],instruction[3]);
MUX_2 b21(for_sltu_operation[21],result[21],for_sltu_concatenate[21],instruction[3]);
MUX_2 b22(for_sltu_operation[22],result[22],for_sltu_concatenate[22],instruction[3]);
MUX_2 b23(for_sltu_operation[23],result[23],for_sltu_concatenate[23],instruction[3]);
MUX_2 b24(for_sltu_operation[24],result[24],for_sltu_concatenate[24],instruction[3]);
MUX_2 b25(for_sltu_operation[25],result[25],for_sltu_concatenate[25],instruction[3]);
MUX_2 b26(for_sltu_operation[26],result[26],for_sltu_concatenate[26],instruction[3]);
MUX_2 b27(for_sltu_operation[27],result[27],for_sltu_concatenate[27],instruction[3]);
MUX_2 b28(for_sltu_operation[28],result[28],for_sltu_concatenate[28],instruction[3]);
MUX_2 b29(for_sltu_operation[29],result[29],for_sltu_concatenate[29],instruction[3]);
MUX_2 b30(for_sltu_operation[30],result[30],for_sltu_concatenate[30],instruction[3]);
MUX_2 b31(for_sltu_operation[31],result[31],for_sltu_concatenate[31],instruction[3]);



//this module use just structural verilog
//Check page 17 from lecture6 slides

//Needs alu32 module(from hw1), mips_register module(completely finished from TA) and
//control unit part(you need to design) 

//mips32 has to work correctly for 11 instruction.
//alu32 design has to stay same(8:1 selection in order hw2)

//for srl instruction, you have to add 1 mux in sra module in alu32 (if sra use msb, if srl use 0)
//after this addition, if select bits == 101, alu32 can work both sra and srl.

//for srl,srl,sra alu32 use A,B. 
//for srl,srl,sra use rt and shamt. 
// A = $rt, B = shamt(need to extended with 0).
//for other instructions, 
// A = $rt, B = $rs 


endmodule
