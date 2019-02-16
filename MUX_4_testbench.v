`define DELAY 20
module MUX_4_testbench();
reg input0,input1,input2,input3;
reg [1:0] select;
wire result;

MUX_4 f(result,select,input0,input1,input2,input3);
initial begin
input0 = 1'b0; input1 = 1'b1; input2 = 1'b1; input3 = 1'b1; select=2'b00;
#`DELAY;
input0 = 1'b0; input1 = 1'b1; input2 = 1'b1; input3 = 1'b1; select=2'b01;
#`DELAY;
input0 = 1'b0; input1 = 1'b1; input2 = 1'b1; input3 = 1'b1; select=2'b10;
#`DELAY;
input0 = 1'b0; input1 = 1'b1; input2 = 1'b1; input3 = 1'b1; select=2'b11;
end
 
 
initial
begin
$monitor("time = %2d, input0 = %1d, input1= %1d, input2= %1d, input3= %1d result= %1d, select=%2d", $time,input0,input1,input2,input3, result, select);
end 

endmodule

