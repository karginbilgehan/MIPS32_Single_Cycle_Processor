`define DELAY 20
module mips32_testbench(); 
reg [31:0] instruction;
wire [31:0] result;
reg clk,clk2;
reg [7:0] index;
reg [31:0] testInstruction [9:0];


mips32 test_mips(instruction,result,clk);

always
begin
	#5 clk=~clk;
end

always
begin
	#15 clk2=~clk2;
end


initial begin
	clk=0;
	clk2=0;
	$readmemb(".//InstructionTest.txt",testInstruction);
	$readmemb(".//register.txt",test_mips.register.registers);
	instruction=32'd0;
	index=-1;
end

always @(posedge clk2)
begin
	instruction<=testInstruction[index];
end

always @(negedge clk2)
begin
	$display("Instructions = %32b", instruction);
	
	
	$display("result = %32b", test_mips.for_sltu_operation);
	
	index<=index+1;
	
	if(index == 8'd9)
		begin
			$writememb(".//register.txt",test_mips.register.registers);
			$display("%d test completed \n",index+1);
			$finish;
		end

end
endmodule
