module register_base(register_destiny, register_source1, register_source2, clock, write_enabled, write_data, register_base_out1, register_base_out2);
  input [4:0] register_destiny, register_source1, register_source2;
  input clock, write_enabled;
  input [31:0] write_data;
  output [31:0] register_base_out1, register_base_out2;

  reg [31:0] register_database [31:0];
  always @ (posedge clock)
  begin
    register_database[0] = 32'b0;
    if(write_enabled==1) begin
      register_database[register_destiny] = write_data;
    end
  end
  
  assign register_base_out1 = register_database[register_source1];
  assign register_base_out2 = register_database[register_source2];
  
endmodule