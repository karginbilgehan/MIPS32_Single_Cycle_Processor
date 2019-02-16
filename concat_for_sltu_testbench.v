`define DELAY 20
module concat_for_sltu_testbench();

reg msb;
wire [31:0]result;

concat_for_sltu f(result,msb);
initial begin
msb = 1'b1;
#`DELAY;
msb = 1'b0;
end
 
 
initial
begin
$monitor("time = %2d, most_significat_bit = %1b result= %32b", $time,msb,result);
end

endmodule 
