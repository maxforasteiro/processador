library verilog;
use verilog.vl_types.all;
entity register_base_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reg_destiny     : in     vl_logic_vector(4 downto 0);
        reg_source1     : in     vl_logic_vector(4 downto 0);
        reg_source2     : in     vl_logic_vector(4 downto 0);
        write_data      : in     vl_logic_vector(31 downto 0);
        write_reg       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end register_base_vlg_sample_tst;
