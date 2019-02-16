module HALF_ADDER(sum, carry_out, input1, input2);
input input1,input2;
output sum,carry_out;

xor sum_of_digit(sum,input1,input2);
and carry(carry_out,input1,input2);
endmodule
