library verilog;
use verilog.vl_types.all;
entity processing_unit_vlg_check_tst is
    port(
        display_0       : in     vl_logic_vector(6 downto 0);
        display_1       : in     vl_logic_vector(6 downto 0);
        display_2       : in     vl_logic_vector(6 downto 0);
        display_3       : in     vl_logic_vector(6 downto 0);
        display_4       : in     vl_logic_vector(6 downto 0);
        display_5       : in     vl_logic_vector(6 downto 0);
        display_6       : in     vl_logic_vector(6 downto 0);
        display_7       : in     vl_logic_vector(6 downto 0);
        test0           : in     vl_logic_vector(31 downto 0);
        test1           : in     vl_logic_vector(31 downto 0);
        test2           : in     vl_logic_vector(31 downto 0);
        test3           : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end processing_unit_vlg_check_tst;
