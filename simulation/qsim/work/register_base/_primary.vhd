library verilog;
use verilog.vl_types.all;
entity register_base is
    port(
        register_destiny: in     vl_logic_vector(4 downto 0);
        register_source1: in     vl_logic_vector(4 downto 0);
        register_source2: in     vl_logic_vector(4 downto 0);
        clock           : in     vl_logic;
        write_enabled   : in     vl_logic;
        write_data      : in     vl_logic_vector(31 downto 0);
        register_base_out1: out    vl_logic_vector(31 downto 0);
        register_base_out2: out    vl_logic_vector(31 downto 0)
    );
end register_base;
