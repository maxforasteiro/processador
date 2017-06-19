library verilog;
use verilog.vl_types.all;
entity extende_to_reg_size_vlg_sample_tst is
    port(
        immediate       : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end extende_to_reg_size_vlg_sample_tst;
