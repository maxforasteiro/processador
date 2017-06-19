library verilog;
use verilog.vl_types.all;
entity ALUmodule_vlg_sample_tst is
    port(
        ALUOp           : in     vl_logic_vector(3 downto 0);
        reg_in1         : in     vl_logic_vector(31 downto 0);
        reg_in2         : in     vl_logic_vector(31 downto 0);
        shamt           : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALUmodule_vlg_sample_tst;
