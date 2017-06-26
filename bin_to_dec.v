module bin_to_dec(binary, ten_0, ten_1, ten_2, signal);
  input [31:0] binary;
  output reg [3:0] ten_0, ten_1, ten_2, signal;
  reg [31:0] converted;
  
  
  integer i;
  always @ (binary)
  begin
    ten_0 = 4'd0; ten_1 = 4'd0; ten_2 = 4'd0; signal = 4'd0;
	 converted = binary;
	 if(converted[31] == 1)
	 begin
	   converted = ~binary + 1;
		signal = 4'b1010;
	 end
	 
	 for(i=31;i>=0;i=i-1)
	 begin
	   if(ten_2 >= 5)
		  ten_2 = ten_2 + 3;
	   if(ten_1 >= 5)
		  ten_1 = ten_1 + 3;
	   if(ten_0 >= 5)
		  ten_0 = ten_0 + 3;
		  
		ten_2 = ten_2 << 1;
		ten_2[0] = ten_1[3];
		ten_1 = ten_1 << 1;
		ten_1[0] = ten_0[3];
		ten_0 = ten_0 << 1;
		ten_0[0] = converted[i];
	 end
  end
endmodule
