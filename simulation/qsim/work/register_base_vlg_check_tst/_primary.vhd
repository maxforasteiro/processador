library verilog;
use verilog.vl_types.all;
entity register_base_vlg_check_tst is
    port(
        reg_out1        : in     vl_logic_vector(31 downto 0);
        reg_out2        : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end register_base_vlg_check_tst;
