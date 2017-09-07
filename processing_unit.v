module processing_unit(button_clock, clock_50, switches, display_0,
  display_1, display_2, display_3, display_4,
  display_5, display_6, display_7, reset, flag_write);
  
  input reset, button_clock, clock_50;
  input [17:0] switches;
  output wire [6:0] display_0, display_1, display_2, display_3, display_4, display_5, display_6, display_7;
  output wire flag_write;
  wire clocks;
  wire [1:0] alu_mem_output_selector;
  wire pc_selector, halt, register_destiny_selector, register_write_enabled;
  wire alu_input2_selector, memory_write_enabled, output_write_enabled;
  wire [3:0] aluop_selector;
  wire [31:0] pc;
  wire [31:0] jump_address, signal_extended, alu_input2, memory_data_output, output_data_output;
  wire zero_alu;
  wire [31:0] register_write_data, register_output1, register_output2, instruction, alu_output;
  wire [5:0] register_destiny;
  wire [4:0] opcode_bin_dec_0, opcode_bin_dec_1, pc_bin_dec_0, pc_bin_dec_1;
  
  assign flag_write = halt;
  
  frequency_divider md_clock(
  .clk(clock_50),
  .clk_out(clocks));
  
  bin_to_dec md_opcode_converter(
  .binary(instruction[31:27]),
  .ten_0(opcode_bin_dec_0),
  .ten_1(opcode_bin_dec_1),
  .ten_2(),
  .signal());
  
  bin_to_7seg md_opcode_presenter(
  .binary(opcode_bin_dec_0),
  .display(display_4));
  
  bin_to_7seg(
  .binary(opcode_bin_dec_1),
  .display(display_5));
  
  bin_to_dec md_pc_converter(
  .binary(pc),
  .ten_0(pc_bin_dec_0),
  .ten_1(pc_bin_dec_1),
  .ten_2(),
  .signal());
  
  bin_to_7seg md_pc_presenter(
  .binary(pc_bin_dec_0),
  .display(display_6));
  
  bin_to_7seg(
  .binary(pc_bin_dec_1),
  .display(display_7));
  
  control_unit md_control_unit(
  .opcode(instruction[31:27]),
  .pc_selector(pc_selector),
  .halt(halt),
  .register_destiny_selector(register_destiny_selector),
  .register_write_enabled(register_write_enabled),
  .alu_input2_selector(alu_input2_selector),
  .aluop_selector(aluop_selector),
  .memory_write_enabled(memory_write_enabled),
  .output_write_enabled(output_write_enabled),
  .alu_mem_output_selector(alu_mem_output_selector),
  .zero_alu(zero_alu),
  .reset(reset));
  
  program_counter md_pc(
  .clock(clocks),
  .pc(pc),
  .jump_address(signal_extended),
  .pc_selector(pc_selector),
  .halt(halt));
  
  instruction_data md_instruction_data(
  .clock(clocks),
  .instruction_address(pc),
  .instruction_data_output(instruction));
  
  extender md_extender(
  .immediate(instruction[16:0]),
  .extended(signal_extended));
  
  mux_2 md_mux_register_destiny(
  .selector(register_destiny_selector),
  .in1(instruction[16:12]),//reg_destiny
  .in2(instruction[26:22]),//reg_source2
  .out(register_destiny));
  
  register_base md_register_base(
  .register_destiny(register_destiny),
  .register_source1(instruction[21:17]),
  .register_source2(instruction[26:22]),
  .clock(clocks),
  .write_enabled(register_write_enabled),
  .write_data(register_write_data),
  .register_base_out1(register_output1),
  .register_base_out2(register_output2));
  
  mux_2 md_mux_alu_input2(
  .selector(alu_input2_selector),
  .in1(register_output2),
  .in2(signal_extended),
  .out(alu_input2));
  
  alu md_alu(
  .aluop_selector(aluop_selector),
  .shamt(instruction[11:7]),
  .data_in1(register_output1),
  .data_in2(alu_input2),
  .data_out(alu_output),
  .zero(zero_alu));
  
  memory_data md_memory_data(
  .data_in(register_output1),
  .data_out(memory_data_output),
  .memory_address(alu_output),
  .write_enabled(memory_write_enabled),
  .clock(clocks));
  
  output_data md_output_data(
  .clock(clocks),
  .output_data_in(register_output2),
  .write_enabled(output_write_enabled),
  .data_output(output_data_output),
  .switches(switches),
  .input_ready(reset),
  .display_0(display_0),
  .display_1(display_1),
  .display_2(display_2),
  .display_3(display_3));
  
  mux_4 md_alu_mem_output(
  .selector(alu_mem_output_selector),
  .in1(alu_output),
  .in2(memory_data_output),
  .in3(output_data_output),
  .in4(0),
  .out(register_write_data));
  
endmodule
