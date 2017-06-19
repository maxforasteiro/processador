module program_counter(clock, pc, jump_address, pc_selector, halt);
  input [31:0] jump_address;
  input pc_selector, clock, halt;
  reg [31:0] pc_increment;
  output reg [31:0] pc;
  
  always @ (pc or jump_address or pc_selector)
  begin
    if(pc_selector == 0)
      pc_increment = pc + 1;
    else
      pc_increment = jump_address;
  end

  always @ (posedge clock)
  begin
    if(halt)begin
    end
    else begin
      pc <= pc_increment;
    end
  end

endmodule