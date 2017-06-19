module control_unit(opcode,
  pc_selector,
  halt,
  register_destiny_selector,
  register_write_enabled,
  alu_input2_selector,
  aluop_selector,
  memory_write_enabled,
  output_write_enabled,
  alu_mem_output_selector,
  zero_alu,
  reset);
  
  input [4:0] opcode;
  input zero_alu, reset;
  output reg pc_selector, halt, register_destiny_selector, register_write_enabled, alu_input2_selector;
  output reg memory_write_enabled, output_write_enabled;
  output reg [1:0] alu_mem_output_selector;
  output reg [3:0] aluop_selector;
  
  always @ (opcode) begin
    case(opcode)
	   5'b00000: begin //add
		  pc_selector               = 1'b0; //select pc+1
		  halt                      = 1'b0; //don't stop the program
		  register_destiny_selector = 1'b0; //select the right Rs
		  register_write_enabled    = 1'b1; //enable the reg write
		  alu_input2_selector       = 1'b0; //select the right alu input
		  memory_write_enabled      = 1'b0; //enable the mem write
		  output_write_enabled      = 1'b0; //enable the output mem write
		  alu_mem_output_selector   = 2'h0; //select the right output to be written on reg
		  aluop_selector            = 4'h0; //select the add op on alu
		end
		5'b00001: begin //addi
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b1;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b1;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h0;
		end
		5'b00010: begin //sub
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h1;
		end
		5'b00011: begin //subi
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b1;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b1;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h1;
		end
		5'b00100: begin //nop
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b0;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h0;
		end
		5'b00101: begin //halt
		  //tem que pensar o que o processador tem que fazer (acredito que seja assim)
		  pc_selector               = 1'b0;
		  halt                      = reset ? 1'b1 : 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b0;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h0;
		end
		5'b00110: begin //jump
		  pc_selector               = 1'b1;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b0;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h0;
		end
		5'b00111: begin //branch equal
		  pc_selector               = zero_alu == 1'b1 ? 1'b1 : 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b0;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h1;
		end
		5'b01000: begin //branch not equal
		  pc_selector               = zero_alu == 1'b0 ? 1'b1 : 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b0;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h1;
		end
		5'b01001: begin //slt
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h2;
		end
		5'b01010: begin //load word
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b1;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b1;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h1;
		  aluop_selector            = 4'h0;
		end
		5'b01011: begin //load immediate
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b1;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b1;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h0;
		end
		5'b01100: begin //in
		  pc_selector               = 1'b0;
		  halt                      = reset ? 1 : 0;
		  register_destiny_selector = 1'b1;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h2;
		  aluop_selector            = 4'h0;
		end
		5'b01101: begin //out
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b0;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b1;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h0;
		end
		5'b01110: begin //store word
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b0;
		  alu_input2_selector       = 1'b1;
		  memory_write_enabled      = 1'b1;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h0;
		end
		5'b01111: begin //and
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h4;
		end
		5'b10000: begin //andi
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b1;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b1;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h4;
		end
		5'b10001: begin //or
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h5;
		end
		5'b10010: begin //ori
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b1;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b1;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h5;
		end
		5'b10011: begin //not
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h3;
		end
		5'b10100: begin //xor
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h6;
		end
		5'b10101: begin //xori
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b1;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b1;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h6;
		end
		5'b10110: begin //sll
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h7;
		end
		5'b10111: begin //srl
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b1;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h8;
		end
		default: begin
		  pc_selector               = 1'b0;
		  halt                      = 1'b0;
		  register_destiny_selector = 1'b0;
		  register_write_enabled    = 1'b0;
		  alu_input2_selector       = 1'b0;
		  memory_write_enabled      = 1'b0;
		  output_write_enabled      = 1'b0;
		  alu_mem_output_selector   = 2'h0;
		  aluop_selector            = 4'h0;
		end
	 endcase
  end
endmodule