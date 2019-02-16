module FULL_ADDER(sum, carry_out, input1, input2, carry_in);
input input1,input2,carry_in;
output sum, carry_out;
wire temp_for_sum, fisrt_carry_out, second_carry_out;

HALF_ADDER first_sum(temp_sum, first_carry_out, input1, input2);
HALF_ADDER second_sum(sum, second_carry_out, temp_sum, carry_in);

or last_carry_out(carry_out, second_carry_out, first_carry_out);

endmodule 