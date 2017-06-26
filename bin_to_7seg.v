module bin_to_7seg(binary, display);

  input [3:0] binary;
  reg [6:0] aux;
  output wire [6:0] display;
  
  always @ (*)
  begin
    case(binary)
	   4'B0000:
		  aux = 7'B1000000;
		4'B0001:
		  aux = 7'B1111001;
		4'B0010:
		  aux = 7'B0100100;
		4'B0011:
		  aux = 7'B0110000;
		4'B0100:
		  aux = 7'B0011001;
		4'B0101:
		  aux = 7'B0010010;
		4'B0110:
		  aux = 7'B0000010;
		4'B0111:
		  aux = 7'B1111000;
		4'B1000:
		  aux = 7'B0000000;
		4'B1001:
		  aux = 7'B0010000;
		default:
		  aux = 7'B0111111;
	 endcase
  end
  
  assign display = aux;
endmodule
