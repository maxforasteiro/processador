library verilog;
use verilog.vl_types.all;
entity program_counter_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        halt            : in     vl_logic;
        jump_address    : in     vl_logic_vector(31 downto 0);
        pc_selector     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end program_counter_vlg_sample_tst;
