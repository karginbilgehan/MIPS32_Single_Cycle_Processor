module control_unit(select_bits_ALU, function_code);

input [5:0] function_code;
output [2:0] select_bits_ALU;

wire op0,op1,op2,op3,op4,op5,op6;//for gate's operations

//this block is necessary for select's bits
//it is for S2
or tempor0(op0,function_code[5],function_code[0]);//f5+f0
not tempnot0(op1,op0);//'(f5+f0)
or forSelect2(select_bits_ALU[2],function_code[1],op1);//s2= f1 + '(f5+f0)

//it is for s1
not tempnot1(op2,function_code[1]);//'(f1)
xor forSelect1(select_bits_ALU[1],op2,function_code[2]);//s1='(f1) xor f2

//it is for s0
and tempand0(op3,function_code[2],function_code[0]);//f2.f0
not tempnot2(op4,function_code[5]);//'(f5)
not tempnot3(op5,function_code[0]);//'(f0)
and tempand1(op6,op4,op5,function_code[1]);//('f5.'f0.f1)
or forSelect0(select_bits_ALU[0],op6,op3);//f2.f0 + ('f5.'f0.f1)
//Select's bits over


endmodule
