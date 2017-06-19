library verilog;
use verilog.vl_types.all;
entity instruction_data is
    port(
        clock           : in     vl_logic;
        instruction_address: in     vl_logic_vector(31 downto 0);
        instruction_data_output: out    vl_logic_vector(31 downto 0)
    );
end instruction_data;
