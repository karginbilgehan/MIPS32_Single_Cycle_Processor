module MUX_2(result,input1,input2,select);

input input1,input2,select;
output result;
wire select_not, for_select_input1, for_select_input2;

not s1(select_not,select);
and o2(for_select_input2,select,input2);
and o1(for_select_input1,select_not,input1);
or res(result,for_select_input1,for_select_input2);

endmodule
