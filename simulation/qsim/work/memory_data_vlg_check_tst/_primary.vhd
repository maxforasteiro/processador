library verilog;
use verilog.vl_types.all;
entity memory_data_vlg_check_tst is
    port(
        data_out        : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end memory_data_vlg_check_tst;
