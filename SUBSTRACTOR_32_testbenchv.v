`define DELAY 20
module SUBSTRACTOR_32_testbench();
reg [31:0] input1, input2;
wire [31:0] dif;
wire carry_out;

SUBSTRACTOR_32 subs32(dif,carry_out,input1,input2);

initial begin
input1 = 32'b11111111111111111111111111111111; input2 = 32'b11111111111111111111111100000000;
#`DELAY;
input1 = 32'b11111111111111111111111111111111; input2 = 32'b11111111111111111111111111111111;
#`DELAY;
input1 = 32'b11111111111111111111111111111111; input2 = 32'b00000000000000000000000000000000;
#`DELAY;
end
 
 
initial
begin
$monitor("time = %2d, input1 = %32b, input2 = %32b,dif = %32b ", $time, input1, input2, dif);
end 

endmodule