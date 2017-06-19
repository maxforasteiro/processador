module bin_to_dec(binary, ten_0, ten_1, ten_2, ten_3, ten_4, ten_5, ten_6, ten_7);
  input [31:0] binary;
  output reg [3:0] ten_0, ten_1, ten_2, ten_3, ten_4, ten_5, ten_6, ten_7;
  
  integer i;
  always @ (binary)
  begin
    ten_0 = 4'd0; ten_1 = 4'd0; ten_2 = 4'd0; ten_3 = 4'd0;
	 ten_4 = 4'd0; ten_5 = 4'd0; ten_6 = 4'd0; ten_7 = 4'd0;
	 
	 for(i=31;i>=0;i=i-1)
	 begin
	   if(ten_7 >= 5)
		  ten_7 = ten_7 + 3;
	   if(ten_6 >= 5)
		  ten_6 = ten_6 + 3;
	   if(ten_5 >= 5)
		  ten_5 = ten_5 + 3;
	   if(ten_4 >= 5)
		  ten_4 = ten_4 + 3;
	   if(ten_3 >= 5)
		  ten_3 = ten_3 + 3;
	   if(ten_2 >= 5)
		  ten_2 = ten_2 + 3;
	   if(ten_1 >= 5)
		  ten_1 = ten_1 + 3;
	   if(ten_0 >= 5)
		  ten_0 = ten_0 + 3;
		  
		ten_7 = ten_7 << 1;
		ten_7[0] = ten_6[3];
		ten_6 = ten_6 << 1;
		ten_6[0] = ten_5[3];
		ten_5 = ten_5 << 1;
		ten_5[0] = ten_4[3];
		ten_4 = ten_4 << 1;
		ten_4[0] = ten_3[3];
		ten_3 = ten_3 << 1;
		ten_3[0] = ten_2[3];
		ten_2 = ten_2 << 1;
		ten_2[0] = ten_1[3];
		ten_1 = ten_1 << 1;
		ten_1[0] = ten_0[3];
		ten_0 = ten_0 << 1;
		ten_0[0] = binary[i];
	 end
  end
endmodule
