`define DELAY 20
module MUX_2_testbench();
reg input1,input2,select;
wire result;

MUX_2 f(result,input1,input2,select);
initial begin
input1 = 1'b1; input2 = 1'b0; select=1'b0;
#`DELAY;
input1 = 1'b1; input2 = 1'b0; select=1'b1;
end
 
 
initial
begin
$monitor("time = %2d, result= %1d, input1=%1d, input2=%1d, select=%1d", $time, result,input1,input2, select);
end

endmodule 