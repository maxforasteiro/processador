module extender(immediate, extended);
  input [16:0] immediate;
  output reg [31:0] extended;
  
  always @ (*)
  begin
    extended = immediate;
  end
  
endmodule