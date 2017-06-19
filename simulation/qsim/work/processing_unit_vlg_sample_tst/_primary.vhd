library verilog;
use verilog.vl_types.all;
entity processing_unit_vlg_sample_tst is
    port(
        button_clock    : in     vl_logic;
        clock_50        : in     vl_logic;
        reset           : in     vl_logic;
        switches        : in     vl_logic_vector(17 downto 0);
        sampler_tx      : out    vl_logic
    );
end processing_unit_vlg_sample_tst;
