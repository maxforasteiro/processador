library verilog;
use verilog.vl_types.all;
entity extende_to_reg_size is
    port(
        immediate       : in     vl_logic_vector(15 downto 0);
        extended        : out    vl_logic_vector(31 downto 0)
    );
end extende_to_reg_size;
