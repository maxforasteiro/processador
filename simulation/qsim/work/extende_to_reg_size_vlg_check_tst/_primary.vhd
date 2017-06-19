library verilog;
use verilog.vl_types.all;
entity extende_to_reg_size_vlg_check_tst is
    port(
        extended        : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end extende_to_reg_size_vlg_check_tst;
