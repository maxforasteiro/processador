library verilog;
use verilog.vl_types.all;
entity memory_data is
    port(
        data_in         : in     vl_logic_vector(31 downto 0);
        data_out        : out    vl_logic_vector(31 downto 0);
        memory_address  : in     vl_logic_vector(31 downto 0);
        write_enabled   : in     vl_logic;
        clock           : in     vl_logic
    );
end memory_data;
