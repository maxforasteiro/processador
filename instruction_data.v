module instruction_data(clock, instruction_address, instruction_data_output);
  input clock;
  input [31:0] instruction_address;
  output [31:0] instruction_data_output;
  reg [31:0] instruction_ram [30:0];
  integer first_load = 0;
  
  always @ (posedge clock) begin
    if(first_load == 0) begin
		
		instruction_ram[0] = 32'b00100_000000000000000000000000000;
		instruction_ram[1] = 32'b01011_11101_00000_00000000000000001;
		instruction_ram[2] = 32'b01011_11100_00000_00000000000000010;
		//read which program
		instruction_ram[3] = 32'b01100_11110_0000000000000000000000;
		instruction_ram[4] = 32'b00100_000000000000000000000000000;
		instruction_ram[5] = 32'b00111_11110_11101_00000000001100100; //branch to program 1
		instruction_ram[6] = 32'b00111_11110_11100_00000000011001000; //branch to program 2
		//*****************PROGRAM 0*********************//
		//Fibonnaci program to the chosen number
		//puts the output on display
		
		instruction_ram[7] = 32'b01011_00001_00000_00000000000000000;
		instruction_ram[8] = 32'b01011_00010_00000_00000000000000001;
		instruction_ram[9] = 32'b01100_00011_0000000000000000000000;
		instruction_ram[10] = 32'b00100_000000000000000000000000000;
		instruction_ram[11] = 32'b01011_00100_00000_00000000000000000;
		instruction_ram[12] = 32'b01011_01010_00000_00000000000000000;
		instruction_ram[13] = 32'b00000_00010_00001_01010000000000000;
		instruction_ram[14] = 32'b00001_00001_00010_00000000000000000;
		instruction_ram[15] = 32'b00001_00010_01010_00000000000000000;
		instruction_ram[16] = 32'b00001_00100_00100_00000000000000001;
		instruction_ram[17] = 32'b00100_000000000000000000000000000;
		instruction_ram[18] = 32'b01000_00100_00011_00000000000001101;
		instruction_ram[19] = 32'b00100_000000000000000000000000000;
		instruction_ram[20] = 32'b01101_00010_0000000000000000000000;
		instruction_ram[21] = 32'b00110_00000_0000000000000000000000;
		//end of program 0

		
		first_load = 1;
    end
  end
  
  assign instruction_data_output = instruction_ram[instruction_address];
endmodule