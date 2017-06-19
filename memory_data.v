module memory_data(data_in, data_out, memory_address, write_enabled, clock);
  input [31:0] data_in, memory_address;
  input write_enabled, clock;
  output [31:0] data_out;

  reg [31:0] memory[10:0];

  always @ (posedge clock)
  begin
    if(write_enabled) begin
      memory[memory_address] = data_in;
    end
  end
  
  assign data_out = memory[memory_address];
  
endmodule