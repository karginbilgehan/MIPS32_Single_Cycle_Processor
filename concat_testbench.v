`define DELAY 20
module concat_testbench();

reg [4:0]shamt;
wire [31:0]result;

concat f(result,shamt);
initial begin
shamt = 5'b10001;
#`DELAY;
shamt = 5'b11111;
end
 
 
initial
begin
$monitor("time = %2d, shamt = %5b result= %32b", $time,shamt,result);
end

endmodule 
