module output_data(clock, output_data_in, write_enabled, data_output,
  switches, input_ready, display_0, display_1, display_2, display_3,
  display_4, display_5, display_6, display_7);
  
  input [31:0] output_data_in;
  input clock, write_enabled, input_ready;
  output reg [16:0] data_output;
  
  reg [31:0] display_data;
  input [17:0] switches;
  output wire [6:0] display_0, display_1, display_2, display_3, display_4, display_5, display_6, display_7;
  wire [3:0] ten_0, ten_1, ten_2, ten_3, ten_4, ten_5, ten_6, ten_7;
  
  always @ (posedge clock) begin
    if(write_enabled == 1)
	   display_data = output_data_in;
  end
  
  always @ (posedge input_ready) begin
    data_output = switches;
  end

  bin_to_dec md_conversor(
	.binary(display_data),
	.ten_0(ten_0),
	.ten_1(ten_1),
	.ten_2(ten_2),
	.ten_3(ten_3),
	.ten_4(ten_4),
	.ten_5(ten_5),
	.ten_6(ten_6),
	.ten_7(ten_7));

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
  .binary(ten_3),
  .display(display_3));
  
  bin_to_7seg md_hex_4(
  .binary(ten_4),
  .display(display_4));
  
  bin_to_7seg md_hex_5(
  .binary(ten_5),
  .display(display_5));
  
  bin_to_7seg md_hex_6(
  .binary(ten_6),
  .display(display_6));
  
  bin_to_7seg md_hex_7(
  .binary(ten_7),
  .display(display_7));
  	
endmodule
