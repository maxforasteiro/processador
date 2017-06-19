library verilog;
use verilog.vl_types.all;
entity memory_data_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        data_in         : in     vl_logic_vector(31 downto 0);
        memory_address  : in     vl_logic_vector(31 downto 0);
        write_enabled   : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end memory_data_vlg_sample_tst;
