library verilog;
use verilog.vl_types.all;
entity ALU_module is
    port(
        ALUOp           : in     vl_logic_vector(3 downto 0);
        shamt           : in     vl_logic_vector(4 downto 0);
        reg_in1         : in     vl_logic_vector(31 downto 0);
        reg_in2         : in     vl_logic_vector(31 downto 0);
        reg_out         : out    vl_logic_vector(31 downto 0);
        zero            : out    vl_logic
    );
end ALU_module;
