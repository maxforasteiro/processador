module mux_2(selector, in1, in2, out);
  input selector;
  input [31:0] in1, in2;
  output reg [31:0] out;
  
  always @ (*) begin
    if(selector == 0)
      out = in1;
    else
      out = in2;
  end
endmodule