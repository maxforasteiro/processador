module alu(aluop_selector, shamt, data_in1, data_in2, data_out, zero);
  input [3:0] aluop_selector;
  input [4:0] shamt;
  input [31:0] data_in1, data_in2;
  output reg [31:0] data_out;
  output zero;

  always @ (aluop_selector or data_in1 or data_in2 or shamt)
  begin
    case(aluop_selector[3:0])
      4'b0000: data_out <= data_in1 + data_in2;  //add
      4'b0001: data_out <= data_in1 - data_in2;  //sub
      4'b0010: data_out <= data_in1 < data_in2 ? 1 : 0;  //slt
      4'b0011: data_out <= ~data_in1; //not
      4'b0100: data_out <= data_in1 & data_in2; //and
      4'b0101: data_out <= data_in1 | data_in2; //or
      4'b0110: data_out <= data_in1 ^ data_in2; //xor
      4'b0111: data_out <= data_in1 << shamt; //sll
      4'b1000: data_out <= data_in1 >> shamt; //srl
		default: data_out <= 0;
    endcase
  end

  assign zero = (data_out == 0 ? 1'b1 : 1'b0);
endmodule