`define DELAY 20
module FULL_ADDER_testbench();
reg [31:0] input1, input2;
reg carry_in;
wire [31:0] sum;
wire carry_out;

FULL_ADDER_32 adder32(sum,carry_out,input1,input2,carry_in);

initial begin
input1 = 32'b01011010110101110110110101101011; input2 = 32'b00110000110101100100111101100001; carry_in = 1'b0;
#`DELAY;
input1 = 32'b11111111111111111111111111111111; input2 = 32'b00000000000000000000000000000000; carry_in = 1'b1;
#`DELAY;
input1 = 32'b11111111111111111111111111111111; input2 = 32'b11111111111111111111111111111111; carry_in = 1'b0;
#`DELAY;
input1 = 32'b11111111111111111111111111111111; input2 = 32'b11111111111111111111111111111111; carry_in = 1'b1;
#`DELAY;
end
 
 
initial
begin
$monitor("time = %2d, input1 = %32b, input2 = %32b, carry_in = %1b, sum = %32b, carry_out = %1b", $time, input1, input2, carry_in, sum, carry_out);
end 

endmodule
