`define DELAY 20
module FULL_ADDER1_testbench(); 
reg input1, input2, carry_in;
wire sum, carry_out;

FULL_ADDER x (sum, carry_out, input1, input2, carry_in);

initial begin
input1 = 1'b0; input2 = 1'b0; carry_in = 1'b1;
#`DELAY;
input1 = 1'b1; input2 = 1'b0; carry_in = 1'b1;
#`DELAY;
input1 = 1'b0; input2 = 1'b1; carry_in = 1'b1;
#`DELAY;
input1 = 1'b1; input2 = 1'b1; carry_in = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, input1 =%1b, input2 = %1b, sum=%1b, carry_out=%1b, carry_in=%1b", $time, input1, input2, sum, carry_out,carry_in);
end
 
endmodule