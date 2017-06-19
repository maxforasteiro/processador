library verilog;
use verilog.vl_types.all;
entity extender is
    port(
        immediate       : in     vl_logic_vector(16 downto 0);
        extended        : out    vl_logic_vector(31 downto 0)
    );
end extender;
