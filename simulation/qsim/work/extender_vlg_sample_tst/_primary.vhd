library verilog;
use verilog.vl_types.all;
entity extender_vlg_sample_tst is
    port(
        immediate       : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end extender_vlg_sample_tst;
