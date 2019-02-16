module mips_registers( read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk );

	output [31:0] read_data_1, read_data_2;
	input [31:0] write_data;
	input [4:0] read_reg_1, read_reg_2, write_reg;
	input signal_reg_write, clk;
	
	reg [31:0] registers [31:0];
	
	assign read_data_1=registers[read_reg_1];
	assign read_data_2=registers[read_reg_2];
	always @ *
	begin
		if(signal_reg_write==1 && write_reg != 5'b00000)
			begin
				registers[write_reg] <= write_data;
			end
	end
	
endmodule
