library verilog;
use verilog.vl_types.all;
entity program_counter is
    port(
        clock           : in     vl_logic;
        pc              : out    vl_logic_vector(31 downto 0);
        jump_address    : in     vl_logic_vector(31 downto 0);
        pc_selector     : in     vl_logic;
        halt            : in     vl_logic
    );
end program_counter;
