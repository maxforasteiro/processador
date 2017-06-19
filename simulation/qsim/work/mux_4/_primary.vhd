library verilog;
use verilog.vl_types.all;
entity mux_4 is
    port(
        selector        : in     vl_logic_vector(1 downto 0);
        in1             : in     vl_logic_vector(31 downto 0);
        in2             : in     vl_logic_vector(31 downto 0);
        in3             : in     vl_logic_vector(31 downto 0);
        in4             : in     vl_logic_vector(31 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end mux_4;
