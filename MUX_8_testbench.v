`define DELAY 20
module MUX_8_testbench();
reg input0,input1,input2,input3,input4,input5,input6,input7;
reg [2:0] select;
wire result;

MUX_8 f(result,select,input0,input1,input2,input3,input4,input5,input6,input7);
initial begin
input0 = 1'b0; input1 = 1'b0; input2 = 1'b0; input3 = 1'b0; input4 = 1'b1; input5 = 1'b1; input6 = 1'b1; input7 = 1'b1; select=3'b000;
#`DELAY;
input0 = 1'b0; input1 = 1'b0; input2 = 1'b0; input3 = 1'b0; input4 = 1'b1; input5 = 1'b1; input6 = 1'b1; input7 = 1'b1; select=3'b001;
#`DELAY;
input0 = 1'b0; input1 = 1'b0; input2 = 1'b0; input3 = 1'b0; input4 = 1'b1; input5 = 1'b1; input6 = 1'b1; input7 = 1'b1; select=3'b010;
#`DELAY;
input0 = 1'b0; input1 = 1'b0; input2 = 1'b0; input3 = 1'b0; input4 = 1'b1; input5 = 1'b1; input6 = 1'b1; input7 = 1'b1; select=3'b011;
#`DELAY;
input0 = 1'b0; input1 = 1'b0; input2 = 1'b0; input3 = 1'b0; input4 = 1'b1; input5 = 1'b1; input6 = 1'b1; input7 = 1'b1; select=3'b100;
#`DELAY;
input0 = 1'b0; input1 = 1'b0; input2 = 1'b0; input3 = 1'b0; input4 = 1'b1; input5 = 1'b1; input6 = 1'b1; input7 = 1'b1; select=3'b101;
#`DELAY;
input0 = 1'b0; input1 = 1'b0; input2 = 1'b0; input3 = 1'b0; input4 = 1'b1; input5 = 1'b1; input6 = 1'b1; input7 = 1'b1; select=3'b110;
#`DELAY;
input0 = 1'b0; input1 = 1'b0; input2 = 1'b0; input3 = 1'b0; input4 = 1'b1; input5 = 1'b1; input6 = 1'b1; input7 = 1'b1; select=3'b111;
end
 
 
initial
begin
$monitor("time = %2d,input0= %1d, input1= %1d, input2= %1d, input3= %1d, input4= %1d, input5= %1d, input6= %1d, input7= %1d,result= %1d, select=%3d", $time, input0,input1,input2,input3,input4,input5,input6,input7,result, select);
end 

endmodule
