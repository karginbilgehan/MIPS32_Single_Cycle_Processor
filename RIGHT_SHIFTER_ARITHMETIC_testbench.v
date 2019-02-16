`define DELAY 20
module RIGHT_SHIFTER_ARITHMETIC_testbench();
reg [31:0] input1, input2;
wire [31:0] result;

RIGHT_SHIFTER_ARITHMETIC f(result,input1,input2);
initial begin
input1 = 32'b10000000000000001000000000000000; input2 = 32'b00000000000000000000000000001000;
#`DELAY;
input1 = 32'b10000001000000000000000000111000; input2 = 32'b00000000000000000000000000010101;
#`DELAY;
input1 = 32'b10000000000000000000000000000000; input2 = 32'b00000000000000000000000000011111;
#`DELAY;
end
 
initial
begin
$monitor("time = %2d, input1 = %32b, input2 = %32b,result = %32b", $time, input1, input2,result);
end
 

endmodule
