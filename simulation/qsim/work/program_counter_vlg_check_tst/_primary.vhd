library verilog;
use verilog.vl_types.all;
entity program_counter_vlg_check_tst is
    port(
        pc              : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end program_counter_vlg_check_tst;
