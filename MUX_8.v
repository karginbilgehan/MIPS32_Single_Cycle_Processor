module MUX_8(result,select,input0,input1,input2,input3,input4,input5,input6,input7);

input input0,input1,input2,input3,input4,input5,input6,input7;
input [2:0] select;
output result;
wire for_mux1,for_mux2;

MUX_4 r1(for_mux1, select[1:0], input0, input1, input2, input3);
MUX_4 r2(for_mux2, select[1:0], input4, input5, input6, input7);
MUX_2 res(result,for_mux1,for_mux2,select[2]);

endmodule
