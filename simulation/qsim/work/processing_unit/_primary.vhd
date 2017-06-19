library verilog;
use verilog.vl_types.all;
entity processing_unit is
    port(
        button_clock    : in     vl_logic;
        clock_50        : in     vl_logic;
        switches        : in     vl_logic_vector(17 downto 0);
        display_0       : out    vl_logic_vector(6 downto 0);
        display_1       : out    vl_logic_vector(6 downto 0);
        display_2       : out    vl_logic_vector(6 downto 0);
        display_3       : out    vl_logic_vector(6 downto 0);
        display_4       : out    vl_logic_vector(6 downto 0);
        display_5       : out    vl_logic_vector(6 downto 0);
        display_6       : out    vl_logic_vector(6 downto 0);
        display_7       : out    vl_logic_vector(6 downto 0);
        reset           : in     vl_logic;
        test0           : out    vl_logic_vector(31 downto 0);
        test1           : out    vl_logic_vector(31 downto 0);
        test2           : out    vl_logic_vector(31 downto 0);
        test3           : out    vl_logic_vector(31 downto 0)
    );
end processing_unit;
