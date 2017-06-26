module output_data(clock, output_data_in, write_enabled, data_output,
  switches, input_ready, display_0, display_1, display_2, display_3);
  
  input [31:0] output_data_in;
  input clock, write_enabled, input_ready;
  output reg [16:0] data_output;
  
  reg [31:0] display_data;
  input [17:0] switches;
  output wire [6:0] display_0, display_1, display_2, display_3;
  wire [3:0] ten_0, ten_1, ten_2, signal;
  
  always @ (posedge clock) begin
    if(write_enabled == 1)
	   display_data = output_data_in;
  end
  
  always @ (input_ready or switches or clock) begin
    data_output = switches;
  end

  bin_to_dec md_conversor(
	.binary(display_data),
	.ten_0(ten_0),
	.ten_1(ten_1),
	.ten_2(ten_2),
	.signal(signal));

  bin_to_7seg md_hex_0(
  .binary(ten_0),
  .display(display_0));
  
  bin_to_7seg md_hex_1(
  .binary(ten_1),
  .display(display_1));
  
  bin_to_7seg md_hex_2(
  .binary(ten_2),
  .display(display_2));
  
  bin_to_7seg md_hex_3(
  .binary(signal),
  .display(display_3));
  
endmodule
