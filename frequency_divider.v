module frequency_divider(clk, clk_out);
  input clk;
  output clk_out;
   
  parameter nDiv = 25;
  reg[nDiv:0] freq;
   
  always@(posedge clk)
  begin   
    freq <= freq + 1;
  end
       
  assign clk_out = freq[nDiv];
endmodule
