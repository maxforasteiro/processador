-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/09/2017 15:43:58"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUmodule IS
    PORT (
	ALUOp : IN std_logic_vector(3 DOWNTO 0);
	shamt : IN std_logic_vector(4 DOWNTO 0);
	reg_in1 : IN std_logic_vector(31 DOWNTO 0);
	reg_in2 : IN std_logic_vector(31 DOWNTO 0);
	reg_out : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic
	);
END ALUmodule;

-- Design Ports Information
-- reg_out[0]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[6]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[8]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[9]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[10]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[11]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[12]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[13]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[14]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[15]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[16]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[17]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[18]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[19]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[20]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[21]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[22]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[23]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[24]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[25]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[26]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[27]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[28]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[29]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[30]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_out[31]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[2]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[31]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[30]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[30]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[29]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[29]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[28]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[28]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[27]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[27]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[26]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[26]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[25]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[25]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[24]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[24]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[23]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[22]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[22]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[21]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[21]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[20]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[20]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[19]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[19]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[18]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[18]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[17]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[17]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[16]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[16]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[15]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[15]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[14]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[12]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[11]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[11]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[10]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[9]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[8]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[6]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[3]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in1[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_in2[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUmodule IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALUOp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_shamt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_reg_in1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_reg_in2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_reg_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL \Mux32~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg_out[0]~output_o\ : std_logic;
SIGNAL \reg_out[1]~output_o\ : std_logic;
SIGNAL \reg_out[2]~output_o\ : std_logic;
SIGNAL \reg_out[3]~output_o\ : std_logic;
SIGNAL \reg_out[4]~output_o\ : std_logic;
SIGNAL \reg_out[5]~output_o\ : std_logic;
SIGNAL \reg_out[6]~output_o\ : std_logic;
SIGNAL \reg_out[7]~output_o\ : std_logic;
SIGNAL \reg_out[8]~output_o\ : std_logic;
SIGNAL \reg_out[9]~output_o\ : std_logic;
SIGNAL \reg_out[10]~output_o\ : std_logic;
SIGNAL \reg_out[11]~output_o\ : std_logic;
SIGNAL \reg_out[12]~output_o\ : std_logic;
SIGNAL \reg_out[13]~output_o\ : std_logic;
SIGNAL \reg_out[14]~output_o\ : std_logic;
SIGNAL \reg_out[15]~output_o\ : std_logic;
SIGNAL \reg_out[16]~output_o\ : std_logic;
SIGNAL \reg_out[17]~output_o\ : std_logic;
SIGNAL \reg_out[18]~output_o\ : std_logic;
SIGNAL \reg_out[19]~output_o\ : std_logic;
SIGNAL \reg_out[20]~output_o\ : std_logic;
SIGNAL \reg_out[21]~output_o\ : std_logic;
SIGNAL \reg_out[22]~output_o\ : std_logic;
SIGNAL \reg_out[23]~output_o\ : std_logic;
SIGNAL \reg_out[24]~output_o\ : std_logic;
SIGNAL \reg_out[25]~output_o\ : std_logic;
SIGNAL \reg_out[26]~output_o\ : std_logic;
SIGNAL \reg_out[27]~output_o\ : std_logic;
SIGNAL \reg_out[28]~output_o\ : std_logic;
SIGNAL \reg_out[29]~output_o\ : std_logic;
SIGNAL \reg_out[30]~output_o\ : std_logic;
SIGNAL \reg_out[31]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \ALUOp[3]~input_o\ : std_logic;
SIGNAL \reg_in1[6]~input_o\ : std_logic;
SIGNAL \shamt[0]~input_o\ : std_logic;
SIGNAL \shamt[1]~input_o\ : std_logic;
SIGNAL \reg_in1[7]~input_o\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \reg_in1[5]~input_o\ : std_logic;
SIGNAL \reg_in1[4]~input_o\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \shamt[2]~input_o\ : std_logic;
SIGNAL \reg_in1[1]~input_o\ : std_logic;
SIGNAL \reg_in1[0]~input_o\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \reg_in1[3]~input_o\ : std_logic;
SIGNAL \reg_in1[2]~input_o\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \shamt[4]~input_o\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \shamt[3]~input_o\ : std_logic;
SIGNAL \reg_in1[18]~input_o\ : std_logic;
SIGNAL \reg_in1[16]~input_o\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \reg_in1[19]~input_o\ : std_logic;
SIGNAL \reg_in1[17]~input_o\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \reg_in1[20]~input_o\ : std_logic;
SIGNAL \reg_in1[22]~input_o\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \reg_in1[21]~input_o\ : std_logic;
SIGNAL \reg_in1[23]~input_o\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \reg_in1[8]~input_o\ : std_logic;
SIGNAL \reg_in1[10]~input_o\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \reg_in1[11]~input_o\ : std_logic;
SIGNAL \reg_in1[9]~input_o\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \reg_in1[15]~input_o\ : std_logic;
SIGNAL \reg_in1[13]~input_o\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \reg_in1[12]~input_o\ : std_logic;
SIGNAL \reg_in1[14]~input_o\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \reg_in1[25]~input_o\ : std_logic;
SIGNAL \reg_in1[27]~input_o\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \reg_in1[24]~input_o\ : std_logic;
SIGNAL \reg_in1[26]~input_o\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \reg_in1[31]~input_o\ : std_logic;
SIGNAL \reg_in1[30]~input_o\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \reg_in1[29]~input_o\ : std_logic;
SIGNAL \reg_in1[28]~input_o\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \ALUOp[0]~input_o\ : std_logic;
SIGNAL \reg_in2[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \ALUOp[1]~input_o\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \reg_in2[31]~input_o\ : std_logic;
SIGNAL \reg_in2[30]~input_o\ : std_logic;
SIGNAL \reg_in2[29]~input_o\ : std_logic;
SIGNAL \reg_in2[28]~input_o\ : std_logic;
SIGNAL \reg_in2[27]~input_o\ : std_logic;
SIGNAL \reg_in2[26]~input_o\ : std_logic;
SIGNAL \reg_in2[25]~input_o\ : std_logic;
SIGNAL \reg_in2[24]~input_o\ : std_logic;
SIGNAL \reg_in2[23]~input_o\ : std_logic;
SIGNAL \reg_in2[22]~input_o\ : std_logic;
SIGNAL \reg_in2[21]~input_o\ : std_logic;
SIGNAL \reg_in2[20]~input_o\ : std_logic;
SIGNAL \reg_in2[19]~input_o\ : std_logic;
SIGNAL \reg_in2[18]~input_o\ : std_logic;
SIGNAL \reg_in2[17]~input_o\ : std_logic;
SIGNAL \reg_in2[16]~input_o\ : std_logic;
SIGNAL \reg_in2[15]~input_o\ : std_logic;
SIGNAL \reg_in2[14]~input_o\ : std_logic;
SIGNAL \reg_in2[13]~input_o\ : std_logic;
SIGNAL \reg_in2[12]~input_o\ : std_logic;
SIGNAL \reg_in2[11]~input_o\ : std_logic;
SIGNAL \reg_in2[10]~input_o\ : std_logic;
SIGNAL \reg_in2[9]~input_o\ : std_logic;
SIGNAL \reg_in2[8]~input_o\ : std_logic;
SIGNAL \reg_in2[7]~input_o\ : std_logic;
SIGNAL \reg_in2[6]~input_o\ : std_logic;
SIGNAL \reg_in2[5]~input_o\ : std_logic;
SIGNAL \reg_in2[4]~input_o\ : std_logic;
SIGNAL \reg_in2[3]~input_o\ : std_logic;
SIGNAL \reg_in2[2]~input_o\ : std_logic;
SIGNAL \reg_in2[1]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \ALUOp[2]~input_o\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~0clkctrl_outclk\ : std_logic;
SIGNAL \reg_out[0]$latch~combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Mux1~10_combout\ : std_logic;
SIGNAL \Mux1~11_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \reg_out[1]$latch~combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~103_combout\ : std_logic;
SIGNAL \reg_out~0_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \reg_out[2]$latch~combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \reg_out~1_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \reg_out[3]$latch~combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \reg_out~2_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \ShiftRight0~76_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~combout\ : std_logic;
SIGNAL \reg_out[4]$latch~combout\ : std_logic;
SIGNAL \reg_out~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~104_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \ShiftRight0~77_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \ShiftRight0~78_combout\ : std_logic;
SIGNAL \ShiftRight0~79_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux5~combout\ : std_logic;
SIGNAL \reg_out[5]$latch~combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \reg_out~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \ShiftRight0~81_combout\ : std_logic;
SIGNAL \ShiftRight0~82_combout\ : std_logic;
SIGNAL \ShiftRight0~80_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~combout\ : std_logic;
SIGNAL \reg_out[6]$latch~combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~84_combout\ : std_logic;
SIGNAL \ShiftRight0~85_combout\ : std_logic;
SIGNAL \ShiftRight0~86_combout\ : std_logic;
SIGNAL \ShiftRight0~83_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \reg_out~5_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~combout\ : std_logic;
SIGNAL \reg_out[7]$latch~combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \reg_out~6_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \ShiftRight0~87_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \reg_out[8]$latch~combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \ShiftRight0~88_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \reg_out~7_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \reg_out[9]$latch~combout\ : std_logic;
SIGNAL \reg_out~8_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \ShiftRight0~89_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \reg_out[10]$latch~combout\ : std_logic;
SIGNAL \ShiftRight0~90_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \reg_out~9_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \reg_out[11]$latch~combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \ShiftRight0~91_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \reg_out~10_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \reg_out[12]$latch~combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \reg_out~11_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \ShiftRight0~93_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \reg_out[13]$latch~combout\ : std_logic;
SIGNAL \ShiftRight0~94_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \reg_out~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \reg_out[14]$latch~combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \ShiftRight0~92_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \reg_out~13_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \reg_out[15]$latch~combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~11_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~10_combout\ : std_logic;
SIGNAL \reg_out[16]$latch~combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \reg_out~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~72_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~105_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \reg_out[17]$latch~combout\ : std_logic;
SIGNAL \Mux18~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ShiftLeft0~74_combout\ : std_logic;
SIGNAL \ShiftLeft0~75_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux18~8_combout\ : std_logic;
SIGNAL \Mux18~9_combout\ : std_logic;
SIGNAL \Mux18~11_combout\ : std_logic;
SIGNAL \reg_out[18]$latch~combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ShiftLeft0~78_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \reg_out~15_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \reg_out[19]$latch~combout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ShiftLeft0~80_combout\ : std_logic;
SIGNAL \ShiftLeft0~81_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \Mux20~10_combout\ : std_logic;
SIGNAL \reg_out[20]$latch~combout\ : std_logic;
SIGNAL \ShiftLeft0~82_combout\ : std_logic;
SIGNAL \ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ShiftLeft0~84_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \reg_out[21]$latch~combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Mux22~10_combout\ : std_logic;
SIGNAL \Mux22~11_combout\ : std_logic;
SIGNAL \Mux22~12_combout\ : std_logic;
SIGNAL \Mux22~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ShiftLeft0~87_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~9_combout\ : std_logic;
SIGNAL \Mux22~16_combout\ : std_logic;
SIGNAL \Mux22~13_combout\ : std_logic;
SIGNAL \Mux22~14_combout\ : std_logic;
SIGNAL \Mux22~17_combout\ : std_logic;
SIGNAL \reg_out[22]$latch~combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ShiftLeft0~90_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~10_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \Mux23~11_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \Mux23~12_combout\ : std_logic;
SIGNAL \reg_out[23]$latch~combout\ : std_logic;
SIGNAL \ShiftLeft0~91_combout\ : std_logic;
SIGNAL \ShiftLeft0~92_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Mux24~combout\ : std_logic;
SIGNAL \reg_out[24]$latch~combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~93_combout\ : std_logic;
SIGNAL \ShiftLeft0~94_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Mux25~combout\ : std_logic;
SIGNAL \reg_out[25]$latch~combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \ShiftLeft0~96_combout\ : std_logic;
SIGNAL \ShiftLeft0~95_combout\ : std_logic;
SIGNAL \ShiftLeft0~97_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~combout\ : std_logic;
SIGNAL \reg_out[26]$latch~combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \ShiftLeft0~98_combout\ : std_logic;
SIGNAL \ShiftLeft0~99_combout\ : std_logic;
SIGNAL \ShiftLeft0~100_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~combout\ : std_logic;
SIGNAL \reg_out[27]$latch~combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~101_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Mux29~10_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \reg_out[28]$latch~combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~102_combout\ : std_logic;
SIGNAL \Mux29~11_combout\ : std_logic;
SIGNAL \Mux29~12_combout\ : std_logic;
SIGNAL \Mux29~13_combout\ : std_logic;
SIGNAL \Mux29~14_combout\ : std_logic;
SIGNAL \Mux29~15_combout\ : std_logic;
SIGNAL \Mux29~16_combout\ : std_logic;
SIGNAL \Mux29~24_combout\ : std_logic;
SIGNAL \Mux29~17_combout\ : std_logic;
SIGNAL \Mux29~19_combout\ : std_logic;
SIGNAL \Mux29~18_combout\ : std_logic;
SIGNAL \Mux29~20_combout\ : std_logic;
SIGNAL \Mux29~21_combout\ : std_logic;
SIGNAL \Mux29~22_combout\ : std_logic;
SIGNAL \Mux29~25_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~88\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Mux29~23_combout\ : std_logic;
SIGNAL \reg_out[29]$latch~combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \Mux30~10_combout\ : std_logic;
SIGNAL \reg_out[30]$latch~combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \Mux31~12_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \Mux31~10_combout\ : std_logic;
SIGNAL \Mux31~11_combout\ : std_logic;
SIGNAL \reg_out[31]$latch~combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;

BEGIN

ww_ALUOp <= ALUOp;
ww_shamt <= shamt;
ww_reg_in1 <= reg_in1;
ww_reg_in2 <= reg_in2;
reg_out <= ww_reg_out;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux32~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux32~0_combout\);

-- Location: IOOBUF_X9_Y73_N2
\reg_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\reg_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[1]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\reg_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\reg_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\reg_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[4]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\reg_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[5]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\reg_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[6]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\reg_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[7]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\reg_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[8]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\reg_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[9]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[9]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\reg_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[10]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[10]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\reg_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[11]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[11]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\reg_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[12]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[12]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\reg_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[13]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[13]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\reg_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[14]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[14]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\reg_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[15]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[15]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\reg_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[16]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[16]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\reg_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[17]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[17]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\reg_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[18]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[18]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\reg_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[19]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[19]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\reg_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[20]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[20]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\reg_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[21]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[21]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\reg_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[22]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[22]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\reg_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[23]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[23]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\reg_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[24]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[24]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\reg_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[25]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[25]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\reg_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[26]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[26]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\reg_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[27]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[27]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\reg_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[28]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[28]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\reg_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[29]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[29]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\reg_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[30]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[30]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\reg_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_out[31]$latch~combout\,
	devoe => ww_devoe,
	o => \reg_out[31]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~10_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOIBUF_X58_Y73_N15
\ALUOp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(3),
	o => \ALUOp[3]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\reg_in1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(6),
	o => \reg_in1[6]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\shamt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(0),
	o => \shamt[0]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\shamt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(1),
	o => \shamt[1]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\reg_in1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(7),
	o => \reg_in1[7]~input_o\);

-- Location: LCCOMB_X50_Y72_N6
\ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & ((\reg_in1[7]~input_o\))) # (!\shamt[0]~input_o\ & (\reg_in1[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[6]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[7]~input_o\,
	combout => \ShiftRight0~19_combout\);

-- Location: IOIBUF_X38_Y73_N8
\reg_in1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(5),
	o => \reg_in1[5]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\reg_in1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(4),
	o => \reg_in1[4]~input_o\);

-- Location: LCCOMB_X50_Y72_N12
\ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\shamt[0]~input_o\ & (\reg_in1[5]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[5]~input_o\,
	datad => \reg_in1[4]~input_o\,
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X50_Y72_N30
\ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\ShiftRight0~19_combout\) # ((!\shamt[1]~input_o\ & \ShiftRight0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~19_combout\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftRight0~20_combout\,
	combout => \ShiftRight0~21_combout\);

-- Location: IOIBUF_X0_Y36_N22
\shamt[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(2),
	o => \shamt[2]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\reg_in1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(1),
	o => \reg_in1[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\reg_in1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(0),
	o => \reg_in1[0]~input_o\);

-- Location: LCCOMB_X47_Y69_N24
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (!\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & (\reg_in1[1]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[1]~input_o\,
	datab => \reg_in1[0]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \Mux0~8_combout\);

-- Location: IOIBUF_X33_Y73_N8
\reg_in1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(3),
	o => \reg_in1[3]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\reg_in1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(2),
	o => \reg_in1[2]~input_o\);

-- Location: LCCOMB_X47_Y69_N10
\ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\shamt[0]~input_o\ & (\reg_in1[3]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \reg_in1[3]~input_o\,
	datad => \reg_in1[2]~input_o\,
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X47_Y69_N20
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (!\shamt[2]~input_o\ & ((\Mux0~8_combout\) # ((\shamt[1]~input_o\ & \ShiftRight0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \Mux0~8_combout\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftRight0~18_combout\,
	combout => \Mux0~9_combout\);

-- Location: IOIBUF_X45_Y73_N8
\shamt[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(4),
	o => \shamt[4]~input_o\);

-- Location: LCCOMB_X47_Y72_N10
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (!\shamt[4]~input_o\ & ((\Mux0~9_combout\) # ((\ShiftRight0~21_combout\ & \shamt[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \Mux0~9_combout\,
	datac => \shamt[4]~input_o\,
	datad => \shamt[2]~input_o\,
	combout => \Mux0~10_combout\);

-- Location: IOIBUF_X45_Y73_N1
\shamt[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(3),
	o => \shamt[3]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\reg_in1[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(18),
	o => \reg_in1[18]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\reg_in1[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(16),
	o => \reg_in1[16]~input_o\);

-- Location: LCCOMB_X46_Y72_N14
\ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (\shamt[1]~input_o\ & (\reg_in1[18]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[18]~input_o\,
	datac => \reg_in1[16]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~26_combout\);

-- Location: IOIBUF_X31_Y73_N8
\reg_in1[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(19),
	o => \reg_in1[19]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\reg_in1[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(17),
	o => \reg_in1[17]~input_o\);

-- Location: LCCOMB_X43_Y72_N28
\ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (\shamt[1]~input_o\ & (\reg_in1[19]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[19]~input_o\,
	datac => \reg_in1[17]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~25_combout\);

-- Location: LCCOMB_X46_Y72_N12
\ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~25_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~26_combout\,
	datac => \ShiftRight0~25_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~27_combout\);

-- Location: IOIBUF_X35_Y73_N22
\reg_in1[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(20),
	o => \reg_in1[20]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\reg_in1[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(22),
	o => \reg_in1[22]~input_o\);

-- Location: LCCOMB_X46_Y72_N16
\ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[22]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[20]~input_o\,
	datab => \reg_in1[22]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~23_combout\);

-- Location: IOIBUF_X38_Y73_N22
\reg_in1[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(21),
	o => \reg_in1[21]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\reg_in1[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(23),
	o => \reg_in1[23]~input_o\);

-- Location: LCCOMB_X47_Y72_N4
\ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[23]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datac => \reg_in1[21]~input_o\,
	datad => \reg_in1[23]~input_o\,
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X47_Y72_N2
\ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~22_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \ShiftRight0~23_combout\,
	datac => \ShiftRight0~22_combout\,
	combout => \ShiftRight0~24_combout\);

-- Location: LCCOMB_X47_Y72_N20
\ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~24_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~24_combout\,
	combout => \ShiftRight0~28_combout\);

-- Location: LCCOMB_X47_Y72_N30
\Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (!\shamt[3]~input_o\ & ((\Mux0~10_combout\) # ((\shamt[4]~input_o\ & \ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => \shamt[4]~input_o\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftRight0~28_combout\,
	combout => \Mux0~11_combout\);

-- Location: IOIBUF_X52_Y73_N15
\reg_in1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(8),
	o => \reg_in1[8]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\reg_in1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(10),
	o => \reg_in1[10]~input_o\);

-- Location: LCCOMB_X46_Y70_N10
\ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[10]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[8]~input_o\,
	datab => \reg_in1[10]~input_o\,
	datac => \shamt[1]~input_o\,
	combout => \ShiftRight0~15_combout\);

-- Location: IOIBUF_X60_Y73_N8
\reg_in1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(11),
	o => \reg_in1[11]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\reg_in1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(9),
	o => \reg_in1[9]~input_o\);

-- Location: LCCOMB_X46_Y70_N4
\ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (\shamt[1]~input_o\ & (\reg_in1[11]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[11]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[9]~input_o\,
	combout => \ShiftRight0~14_combout\);

-- Location: LCCOMB_X46_Y70_N24
\ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~14_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \ShiftRight0~14_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~16_combout\);

-- Location: IOIBUF_X33_Y73_N1
\reg_in1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(15),
	o => \reg_in1[15]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\reg_in1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(13),
	o => \reg_in1[13]~input_o\);

-- Location: LCCOMB_X45_Y72_N16
\ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (\shamt[1]~input_o\ & (\reg_in1[15]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[15]~input_o\,
	datac => \reg_in1[13]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~11_combout\);

-- Location: IOIBUF_X29_Y73_N1
\reg_in1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(12),
	o => \reg_in1[12]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\reg_in1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(14),
	o => \reg_in1[14]~input_o\);

-- Location: LCCOMB_X45_Y72_N14
\ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[14]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[12]~input_o\,
	datac => \reg_in1[14]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X46_Y72_N22
\ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~11_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~11_combout\,
	datab => \shamt[0]~input_o\,
	datad => \ShiftRight0~12_combout\,
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X47_Y72_N28
\ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~13_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~16_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~13_combout\,
	combout => \ShiftRight0~17_combout\);

-- Location: IOIBUF_X40_Y73_N1
\reg_in1[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(25),
	o => \reg_in1[25]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\reg_in1[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(27),
	o => \reg_in1[27]~input_o\);

-- Location: LCCOMB_X47_Y70_N2
\ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[27]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[25]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[27]~input_o\,
	combout => \ShiftRight0~7_combout\);

-- Location: IOIBUF_X52_Y73_N1
\reg_in1[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(24),
	o => \reg_in1[24]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\reg_in1[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(26),
	o => \reg_in1[26]~input_o\);

-- Location: LCCOMB_X47_Y70_N0
\ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[26]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[24]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[26]~input_o\,
	combout => \ShiftRight0~8_combout\);

-- Location: LCCOMB_X46_Y72_N24
\ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~7_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~7_combout\,
	datab => \ShiftRight0~8_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~9_combout\);

-- Location: IOIBUF_X54_Y73_N1
\reg_in1[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(31),
	o => \reg_in1[31]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\reg_in1[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(30),
	o => \reg_in1[30]~input_o\);

-- Location: LCCOMB_X53_Y70_N26
\ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\shamt[0]~input_o\ & (\reg_in1[31]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[31]~input_o\,
	datad => \reg_in1[30]~input_o\,
	combout => \ShiftRight0~5_combout\);

-- Location: IOIBUF_X52_Y0_N15
\reg_in1[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(29),
	o => \reg_in1[29]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\reg_in1[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in1(28),
	o => \reg_in1[28]~input_o\);

-- Location: LCCOMB_X53_Y70_N28
\ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (!\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & (\reg_in1[29]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[29]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[28]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X53_Y70_N4
\ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\ShiftRight0~4_combout\) # ((\ShiftRight0~5_combout\ & \shamt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftRight0~4_combout\,
	combout => \ShiftRight0~6_combout\);

-- Location: LCCOMB_X48_Y72_N16
\ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~6_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \ShiftRight0~9_combout\,
	datad => \ShiftRight0~6_combout\,
	combout => \ShiftRight0~10_combout\);

-- Location: LCCOMB_X48_Y72_N26
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\shamt[3]~input_o\ & ((\shamt[4]~input_o\ & ((\ShiftRight0~10_combout\))) # (!\shamt[4]~input_o\ & (\ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datab => \ShiftRight0~17_combout\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftRight0~10_combout\,
	combout => \Mux0~7_combout\);

-- Location: IOIBUF_X49_Y73_N22
\ALUOp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(0),
	o => \ALUOp[0]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\reg_in2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(0),
	o => \reg_in2[0]~input_o\);

-- Location: LCCOMB_X49_Y72_N10
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \reg_in2[0]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[0]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X49_Y72_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUOp[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X49_Y72_N18
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\reg_in1[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\reg_in1[0]~input_o\ & (!\Add0~2_cout\)))) # (!\Add0~0_combout\ & ((\reg_in1[0]~input_o\ & (!\Add0~2_cout\)) # (!\reg_in1[0]~input_o\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & (!\reg_in1[0]~input_o\ & !\Add0~2_cout\)) # (!\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\reg_in1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \reg_in1[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: IOIBUF_X49_Y73_N15
\ALUOp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(1),
	o => \ALUOp[1]~input_o\);

-- Location: LCCOMB_X48_Y72_N28
\Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (\ALUOp[1]~input_o\ & (\ALUOp[0]~input_o\ & ((!\reg_in1[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & (((\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datab => \Add0~3_combout\,
	datac => \ALUOp[1]~input_o\,
	datad => \reg_in1[0]~input_o\,
	combout => \Mux0~14_combout\);

-- Location: IOIBUF_X23_Y73_N8
\reg_in2[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(31),
	o => \reg_in2[31]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\reg_in2[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(30),
	o => \reg_in2[30]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\reg_in2[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(29),
	o => \reg_in2[29]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\reg_in2[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(28),
	o => \reg_in2[28]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\reg_in2[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(27),
	o => \reg_in2[27]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\reg_in2[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(26),
	o => \reg_in2[26]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\reg_in2[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(25),
	o => \reg_in2[25]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\reg_in2[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(24),
	o => \reg_in2[24]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\reg_in2[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(23),
	o => \reg_in2[23]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\reg_in2[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(22),
	o => \reg_in2[22]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\reg_in2[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(21),
	o => \reg_in2[21]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\reg_in2[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(20),
	o => \reg_in2[20]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\reg_in2[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(19),
	o => \reg_in2[19]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\reg_in2[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(18),
	o => \reg_in2[18]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\reg_in2[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(17),
	o => \reg_in2[17]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\reg_in2[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(16),
	o => \reg_in2[16]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\reg_in2[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(15),
	o => \reg_in2[15]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\reg_in2[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(14),
	o => \reg_in2[14]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\reg_in2[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(13),
	o => \reg_in2[13]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\reg_in2[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(12),
	o => \reg_in2[12]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\reg_in2[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(11),
	o => \reg_in2[11]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\reg_in2[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(10),
	o => \reg_in2[10]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\reg_in2[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(9),
	o => \reg_in2[9]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\reg_in2[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(8),
	o => \reg_in2[8]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\reg_in2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(7),
	o => \reg_in2[7]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\reg_in2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(6),
	o => \reg_in2[6]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\reg_in2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(5),
	o => \reg_in2[5]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\reg_in2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(4),
	o => \reg_in2[4]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\reg_in2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(3),
	o => \reg_in2[3]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\reg_in2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(2),
	o => \reg_in2[2]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\reg_in2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reg_in2(1),
	o => \reg_in2[1]~input_o\);

-- Location: LCCOMB_X52_Y70_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\reg_in1[0]~input_o\ & \reg_in2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[0]~input_o\,
	datab => \reg_in2[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X52_Y70_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\reg_in1[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\reg_in2[1]~input_o\))) # (!\reg_in1[1]~input_o\ & (!\reg_in2[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[1]~input_o\,
	datab => \reg_in2[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X52_Y70_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\reg_in1[2]~input_o\ & (\reg_in2[2]~input_o\ & !\LessThan0~3_cout\)) # (!\reg_in1[2]~input_o\ & ((\reg_in2[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[2]~input_o\,
	datab => \reg_in2[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X52_Y70_N6
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\reg_in1[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\reg_in2[3]~input_o\))) # (!\reg_in1[3]~input_o\ & (!\reg_in2[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[3]~input_o\,
	datab => \reg_in2[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X52_Y70_N8
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\reg_in2[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\reg_in1[4]~input_o\))) # (!\reg_in2[4]~input_o\ & (!\reg_in1[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[4]~input_o\,
	datab => \reg_in1[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X52_Y70_N10
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\reg_in2[5]~input_o\ & (\reg_in1[5]~input_o\ & !\LessThan0~9_cout\)) # (!\reg_in2[5]~input_o\ & ((\reg_in1[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[5]~input_o\,
	datab => \reg_in1[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X52_Y70_N12
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\reg_in2[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\reg_in1[6]~input_o\))) # (!\reg_in2[6]~input_o\ & (!\reg_in1[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[6]~input_o\,
	datab => \reg_in1[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X52_Y70_N14
\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\reg_in1[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\reg_in2[7]~input_o\))) # (!\reg_in1[7]~input_o\ & (!\reg_in2[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[7]~input_o\,
	datab => \reg_in2[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X52_Y70_N16
\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\reg_in1[8]~input_o\ & (\reg_in2[8]~input_o\ & !\LessThan0~15_cout\)) # (!\reg_in1[8]~input_o\ & ((\reg_in2[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[8]~input_o\,
	datab => \reg_in2[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X52_Y70_N18
\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\reg_in2[9]~input_o\ & (\reg_in1[9]~input_o\ & !\LessThan0~17_cout\)) # (!\reg_in2[9]~input_o\ & ((\reg_in1[9]~input_o\) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[9]~input_o\,
	datab => \reg_in1[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X52_Y70_N20
\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\reg_in1[10]~input_o\ & (\reg_in2[10]~input_o\ & !\LessThan0~19_cout\)) # (!\reg_in1[10]~input_o\ & ((\reg_in2[10]~input_o\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[10]~input_o\,
	datab => \reg_in2[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X52_Y70_N22
\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\reg_in1[11]~input_o\ & ((!\LessThan0~21_cout\) # (!\reg_in2[11]~input_o\))) # (!\reg_in1[11]~input_o\ & (!\reg_in2[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[11]~input_o\,
	datab => \reg_in2[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X52_Y70_N24
\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\reg_in2[12]~input_o\ & ((!\LessThan0~23_cout\) # (!\reg_in1[12]~input_o\))) # (!\reg_in2[12]~input_o\ & (!\reg_in1[12]~input_o\ & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[12]~input_o\,
	datab => \reg_in1[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X52_Y70_N26
\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\reg_in1[13]~input_o\ & ((!\LessThan0~25_cout\) # (!\reg_in2[13]~input_o\))) # (!\reg_in1[13]~input_o\ & (!\reg_in2[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[13]~input_o\,
	datab => \reg_in2[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X52_Y70_N28
\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\reg_in1[14]~input_o\ & (\reg_in2[14]~input_o\ & !\LessThan0~27_cout\)) # (!\reg_in1[14]~input_o\ & ((\reg_in2[14]~input_o\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[14]~input_o\,
	datab => \reg_in2[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X52_Y70_N30
\LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\reg_in2[15]~input_o\ & (\reg_in1[15]~input_o\ & !\LessThan0~29_cout\)) # (!\reg_in2[15]~input_o\ & ((\reg_in1[15]~input_o\) # (!\LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[15]~input_o\,
	datab => \reg_in1[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X52_Y69_N0
\LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\reg_in1[16]~input_o\ & (\reg_in2[16]~input_o\ & !\LessThan0~31_cout\)) # (!\reg_in1[16]~input_o\ & ((\reg_in2[16]~input_o\) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[16]~input_o\,
	datab => \reg_in2[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X52_Y69_N2
\LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\reg_in2[17]~input_o\ & (\reg_in1[17]~input_o\ & !\LessThan0~33_cout\)) # (!\reg_in2[17]~input_o\ & ((\reg_in1[17]~input_o\) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[17]~input_o\,
	datab => \reg_in1[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X52_Y69_N4
\LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\reg_in2[18]~input_o\ & ((!\LessThan0~35_cout\) # (!\reg_in1[18]~input_o\))) # (!\reg_in2[18]~input_o\ & (!\reg_in1[18]~input_o\ & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[18]~input_o\,
	datab => \reg_in1[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X52_Y69_N6
\LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\reg_in1[19]~input_o\ & ((!\LessThan0~37_cout\) # (!\reg_in2[19]~input_o\))) # (!\reg_in1[19]~input_o\ & (!\reg_in2[19]~input_o\ & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[19]~input_o\,
	datab => \reg_in2[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X52_Y69_N8
\LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\reg_in1[20]~input_o\ & (\reg_in2[20]~input_o\ & !\LessThan0~39_cout\)) # (!\reg_in1[20]~input_o\ & ((\reg_in2[20]~input_o\) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[20]~input_o\,
	datab => \reg_in2[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X52_Y69_N10
\LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\reg_in1[21]~input_o\ & ((!\LessThan0~41_cout\) # (!\reg_in2[21]~input_o\))) # (!\reg_in1[21]~input_o\ & (!\reg_in2[21]~input_o\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[21]~input_o\,
	datab => \reg_in2[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X52_Y69_N12
\LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\reg_in2[22]~input_o\ & ((!\LessThan0~43_cout\) # (!\reg_in1[22]~input_o\))) # (!\reg_in2[22]~input_o\ & (!\reg_in1[22]~input_o\ & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[22]~input_o\,
	datab => \reg_in1[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X52_Y69_N14
\LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\reg_in2[23]~input_o\ & (\reg_in1[23]~input_o\ & !\LessThan0~45_cout\)) # (!\reg_in2[23]~input_o\ & ((\reg_in1[23]~input_o\) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[23]~input_o\,
	datab => \reg_in1[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X52_Y69_N16
\LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\reg_in2[24]~input_o\ & ((!\LessThan0~47_cout\) # (!\reg_in1[24]~input_o\))) # (!\reg_in2[24]~input_o\ & (!\reg_in1[24]~input_o\ & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[24]~input_o\,
	datab => \reg_in1[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X52_Y69_N18
\LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\reg_in1[25]~input_o\ & ((!\LessThan0~49_cout\) # (!\reg_in2[25]~input_o\))) # (!\reg_in1[25]~input_o\ & (!\reg_in2[25]~input_o\ & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[25]~input_o\,
	datab => \reg_in2[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X52_Y69_N20
\LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\reg_in1[26]~input_o\ & (\reg_in2[26]~input_o\ & !\LessThan0~51_cout\)) # (!\reg_in1[26]~input_o\ & ((\reg_in2[26]~input_o\) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[26]~input_o\,
	datab => \reg_in2[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X52_Y69_N22
\LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\reg_in2[27]~input_o\ & (\reg_in1[27]~input_o\ & !\LessThan0~53_cout\)) # (!\reg_in2[27]~input_o\ & ((\reg_in1[27]~input_o\) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[27]~input_o\,
	datab => \reg_in1[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X52_Y69_N24
\LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\reg_in1[28]~input_o\ & (\reg_in2[28]~input_o\ & !\LessThan0~55_cout\)) # (!\reg_in1[28]~input_o\ & ((\reg_in2[28]~input_o\) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[28]~input_o\,
	datab => \reg_in2[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X52_Y69_N26
\LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\reg_in1[29]~input_o\ & ((!\LessThan0~57_cout\) # (!\reg_in2[29]~input_o\))) # (!\reg_in1[29]~input_o\ & (!\reg_in2[29]~input_o\ & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[29]~input_o\,
	datab => \reg_in2[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X52_Y69_N28
\LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\reg_in1[30]~input_o\ & (\reg_in2[30]~input_o\ & !\LessThan0~59_cout\)) # (!\reg_in1[30]~input_o\ & ((\reg_in2[30]~input_o\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[30]~input_o\,
	datab => \reg_in2[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X52_Y69_N30
\LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\reg_in2[31]~input_o\ & ((\LessThan0~61_cout\) # (!\reg_in1[31]~input_o\))) # (!\reg_in2[31]~input_o\ & (\LessThan0~61_cout\ & !\reg_in1[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[31]~input_o\,
	datad => \reg_in1[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X48_Y72_N24
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~14_combout\) # ((!\ALUOp[0]~input_o\ & (\ALUOp[1]~input_o\ & \LessThan0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~14_combout\,
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \LessThan0~62_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X48_Y72_N8
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\ALUOp[1]~input_o\ & \ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X49_Y72_N8
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\reg_in2[0]~input_o\ & (\ALUOp[1]~input_o\ $ (((\ALUOp[0]~input_o\) # (\reg_in1[0]~input_o\))))) # (!\reg_in2[0]~input_o\ & (\reg_in1[0]~input_o\ & (\ALUOp[0]~input_o\ $ (\ALUOp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \reg_in2[0]~input_o\,
	datad => \reg_in1[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X53_Y69_N12
\ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (!\shamt[2]~input_o\ & !\shamt[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \shamt[1]~input_o\,
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X48_Y72_N30
\ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\ShiftLeft0~6_combout\ & (\reg_in1[0]~input_o\ & (!\shamt[3]~input_o\ & !\shamt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~6_combout\,
	datab => \reg_in1[0]~input_o\,
	datac => \shamt[3]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X48_Y72_N10
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\ & (!\Mux0~2_combout\ & (\ShiftLeft0~7_combout\ & !\shamt[4]~input_o\))) # (!\Mux0~3_combout\ & (\Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~2_combout\,
	datac => \ShiftLeft0~7_combout\,
	datad => \shamt[4]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: IOIBUF_X54_Y73_N8
\ALUOp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(2),
	o => \ALUOp[2]~input_o\);

-- Location: LCCOMB_X48_Y72_N14
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (!\ALUOp[3]~input_o\ & ((\ALUOp[2]~input_o\ & ((\Mux0~4_combout\))) # (!\ALUOp[2]~input_o\ & (\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \Mux0~4_combout\,
	datac => \ALUOp[2]~input_o\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X48_Y72_N20
\Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\Mux0~6_combout\) # ((\ALUOp[3]~input_o\ & ((\Mux0~11_combout\) # (\Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \Mux0~11_combout\,
	datac => \Mux0~7_combout\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X55_Y72_N6
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\ALUOp[3]~input_o\ & ((\ALUOp[2]~input_o\) # ((\ALUOp[1]~input_o\) # (\ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[2]~input_o\,
	datab => \ALUOp[3]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: CLKCTRL_G13
\Mux32~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux32~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux32~0clkctrl_outclk\);

-- Location: LCCOMB_X48_Y72_N18
\reg_out[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[0]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & ((\reg_out[0]$latch~combout\))) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & (\Mux0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~12_combout\,
	datac => \Mux32~0clkctrl_outclk\,
	datad => \reg_out[0]$latch~combout\,
	combout => \reg_out[0]$latch~combout\);

-- Location: LCCOMB_X49_Y72_N12
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \reg_in2[1]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X49_Y72_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Add0~5_combout\ $ (\reg_in1[1]~input_o\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Add0~5_combout\ & ((\reg_in1[1]~input_o\) # (!\Add0~4\))) # (!\Add0~5_combout\ & (\reg_in1[1]~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \reg_in1[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X48_Y68_N24
\Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\ALUOp[1]~input_o\ & (!\reg_in1[1]~input_o\ & (\ALUOp[0]~input_o\))) # (!\ALUOp[1]~input_o\ & (((\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[1]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \Add0~6_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X47_Y69_N2
\ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\shamt[0]~input_o\ & (\reg_in1[0]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \reg_in1[0]~input_o\,
	datac => \reg_in1[1]~input_o\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X48_Y68_N28
\ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (!\shamt[4]~input_o\ & (!\shamt[3]~input_o\ & (\ShiftLeft0~8_combout\ & \ShiftLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftLeft0~8_combout\,
	datad => \ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X48_Y68_N16
\Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~10_combout\ = (\ALUOp[1]~input_o\ & ((\ALUOp[0]~input_o\ & ((\ShiftLeft0~9_combout\))) # (!\ALUOp[0]~input_o\ & (\reg_in1[1]~input_o\)))) # (!\ALUOp[1]~input_o\ & (\reg_in1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[1]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \ShiftLeft0~9_combout\,
	combout => \Mux1~10_combout\);

-- Location: LCCOMB_X48_Y68_N14
\Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~11_combout\ = (\Mux1~10_combout\ & ((\ALUOp[0]~input_o\) # (\ALUOp[1]~input_o\ $ (\reg_in2[1]~input_o\)))) # (!\Mux1~10_combout\ & (\reg_in2[1]~input_o\ & (\ALUOp[0]~input_o\ $ (\ALUOp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~10_combout\,
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \reg_in2[1]~input_o\,
	combout => \Mux1~11_combout\);

-- Location: LCCOMB_X48_Y68_N22
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\ALUOp[3]~input_o\ & ((\ALUOp[2]~input_o\ & ((\Mux1~11_combout\))) # (!\ALUOp[2]~input_o\ & (\Mux1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~9_combout\,
	datab => \Mux1~11_combout\,
	datac => \ALUOp[2]~input_o\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X46_Y72_N26
\ShiftRight0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (\shamt[1]~input_o\ & (\reg_in1[24]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[24]~input_o\,
	datab => \reg_in1[22]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~43_combout\);

-- Location: LCCOMB_X46_Y72_N8
\ShiftRight0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~43_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~43_combout\,
	datab => \shamt[0]~input_o\,
	datad => \ShiftRight0~22_combout\,
	combout => \ShiftRight0~44_combout\);

-- Location: LCCOMB_X46_Y72_N18
\ShiftRight0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\shamt[1]~input_o\ & (\reg_in1[20]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[20]~input_o\,
	datab => \reg_in1[18]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~45_combout\);

-- Location: LCCOMB_X46_Y72_N4
\ShiftRight0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~45_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[0]~input_o\,
	datac => \ShiftRight0~25_combout\,
	datad => \ShiftRight0~45_combout\,
	combout => \ShiftRight0~46_combout\);

-- Location: LCCOMB_X45_Y69_N16
\ShiftRight0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~44_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftRight0~44_combout\,
	datad => \ShiftRight0~46_combout\,
	combout => \ShiftRight0~47_combout\);

-- Location: LCCOMB_X46_Y69_N30
\ShiftRight0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (\shamt[0]~input_o\ & (\reg_in1[4]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[4]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[3]~input_o\,
	combout => \ShiftRight0~39_combout\);

-- Location: LCCOMB_X46_Y69_N28
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (!\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & (\reg_in1[2]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[2]~input_o\,
	datab => \reg_in1[1]~input_o\,
	datac => \shamt[0]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X46_Y69_N12
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (!\shamt[2]~input_o\ & ((\Mux1~4_combout\) # ((\ShiftRight0~39_combout\ & \shamt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~39_combout\,
	datab => \Mux1~4_combout\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X50_Y72_N14
\ShiftRight0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (\shamt[0]~input_o\ & ((\reg_in1[6]~input_o\))) # (!\shamt[0]~input_o\ & (\reg_in1[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[5]~input_o\,
	datac => \reg_in1[6]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~41_combout\);

-- Location: LCCOMB_X50_Y72_N16
\ShiftRight0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & (\reg_in1[8]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[8]~input_o\,
	datad => \reg_in1[7]~input_o\,
	combout => \ShiftRight0~40_combout\);

-- Location: LCCOMB_X50_Y72_N28
\ShiftRight0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (\ShiftRight0~40_combout\) # ((!\shamt[1]~input_o\ & \ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \ShiftRight0~41_combout\,
	datad => \ShiftRight0~40_combout\,
	combout => \ShiftRight0~42_combout\);

-- Location: LCCOMB_X45_Y69_N2
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (!\shamt[4]~input_o\ & ((\Mux1~5_combout\) # ((\shamt[2]~input_o\ & \ShiftRight0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \Mux1~5_combout\,
	datac => \shamt[4]~input_o\,
	datad => \ShiftRight0~42_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X45_Y69_N30
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (!\shamt[3]~input_o\ & ((\Mux1~6_combout\) # ((\shamt[4]~input_o\ & \ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datab => \ShiftRight0~47_combout\,
	datac => \shamt[3]~input_o\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X45_Y72_N8
\ShiftRight0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (\shamt[1]~input_o\ & (\reg_in1[16]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[16]~input_o\,
	datac => \reg_in1[14]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~34_combout\);

-- Location: LCCOMB_X45_Y72_N26
\ShiftRight0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~34_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~34_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight0~11_combout\,
	combout => \ShiftRight0~35_combout\);

-- Location: LCCOMB_X45_Y72_N4
\ShiftRight0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[12]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[10]~input_o\,
	datac => \reg_in1[12]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~36_combout\);

-- Location: LCCOMB_X46_Y70_N22
\ShiftRight0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~36_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~14_combout\,
	datac => \ShiftRight0~36_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~37_combout\);

-- Location: LCCOMB_X45_Y69_N6
\ShiftRight0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~35_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftRight0~35_combout\,
	datac => \ShiftRight0~37_combout\,
	combout => \ShiftRight0~38_combout\);

-- Location: LCCOMB_X53_Y70_N6
\ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (!\shamt[0]~input_o\ & ((\shamt[1]~input_o\ & ((\reg_in1[31]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[29]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \reg_in1[31]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~29_combout\);

-- Location: LCCOMB_X53_Y70_N16
\ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (\ShiftRight0~29_combout\) # ((\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & \reg_in1[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~29_combout\,
	datab => \shamt[0]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[30]~input_o\,
	combout => \ShiftRight0~30_combout\);

-- Location: LCCOMB_X53_Y70_N10
\ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[28]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[26]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[28]~input_o\,
	combout => \ShiftRight0~31_combout\);

-- Location: LCCOMB_X47_Y70_N30
\ShiftRight0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~31_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \ShiftRight0~7_combout\,
	datad => \ShiftRight0~31_combout\,
	combout => \ShiftRight0~32_combout\);

-- Location: LCCOMB_X45_Y69_N8
\ShiftRight0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~30_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftRight0~30_combout\,
	datac => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~33_combout\);

-- Location: LCCOMB_X45_Y69_N28
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\shamt[3]~input_o\ & ((\shamt[4]~input_o\ & ((\ShiftRight0~33_combout\))) # (!\shamt[4]~input_o\ & (\ShiftRight0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datab => \ShiftRight0~33_combout\,
	datac => \shamt[4]~input_o\,
	datad => \shamt[3]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X48_Y68_N20
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux1~2_combout\) # ((\ALUOp[3]~input_o\ & ((\Mux1~7_combout\) # (\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \ALUOp[3]~input_o\,
	datac => \Mux1~7_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X48_Y68_N4
\reg_out[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[1]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & ((\reg_out[1]$latch~combout\))) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & (\Mux1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~8_combout\,
	datac => \reg_out[1]$latch~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[1]$latch~combout\);

-- Location: LCCOMB_X53_Y70_N24
\ShiftRight0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (\shamt[1]~input_o\ & (\reg_in1[29]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[29]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[27]~input_o\,
	combout => \ShiftRight0~48_combout\);

-- Location: LCCOMB_X53_Y70_N22
\ShiftRight0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~48_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~31_combout\,
	datab => \shamt[0]~input_o\,
	datad => \ShiftRight0~48_combout\,
	combout => \ShiftRight0~49_combout\);

-- Location: LCCOMB_X53_Y69_N26
\ShiftRight0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~5_combout\ & (!\shamt[1]~input_o\))) # (!\shamt[2]~input_o\ & (((\ShiftRight0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \shamt[1]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~49_combout\,
	combout => \ShiftRight0~50_combout\);

-- Location: LCCOMB_X43_Y72_N14
\ShiftRight0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[21]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[19]~input_o\,
	datac => \reg_in1[21]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~53_combout\);

-- Location: LCCOMB_X46_Y72_N2
\ShiftRight0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~53_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~53_combout\,
	datab => \shamt[0]~input_o\,
	datad => \ShiftRight0~45_combout\,
	combout => \ShiftRight0~54_combout\);

-- Location: LCCOMB_X46_Y72_N10
\ShiftRight0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[25]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[23]~input_o\,
	datab => \reg_in1[25]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~51_combout\);

-- Location: LCCOMB_X46_Y72_N20
\ShiftRight0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~51_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datac => \ShiftRight0~43_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~52_combout\);

-- Location: LCCOMB_X46_Y72_N0
\ShiftRight0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~52_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~54_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~52_combout\,
	combout => \ShiftRight0~55_combout\);

-- Location: LCCOMB_X50_Y68_N4
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\shamt[3]~input_o\ & (\ShiftRight0~50_combout\)) # (!\shamt[3]~input_o\ & ((\ShiftRight0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[3]~input_o\,
	datac => \ShiftRight0~50_combout\,
	datad => \ShiftRight0~55_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X49_Y72_N14
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \reg_in2[2]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[2]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X49_Y72_N22
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\reg_in1[2]~input_o\ & ((\Add0~8_combout\ & (\Add0~7\ & VCC)) # (!\Add0~8_combout\ & (!\Add0~7\)))) # (!\reg_in1[2]~input_o\ & ((\Add0~8_combout\ & (!\Add0~7\)) # (!\Add0~8_combout\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\reg_in1[2]~input_o\ & (!\Add0~8_combout\ & !\Add0~7\)) # (!\reg_in1[2]~input_o\ & ((!\Add0~7\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[2]~input_o\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X52_Y72_N14
\Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (!\ALUOp[2]~input_o\ & !\ALUOp[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUOp[2]~input_o\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X45_Y69_N12
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (!\ALUOp[3]~input_o\ & ((\ALUOp[2]~input_o\) # (!\ALUOp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUOp[2]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X48_Y71_N24
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\ALUOp[1]~input_o\ & ((!\ALUOp[0]~input_o\) # (!\shamt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X49_Y68_N10
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in1[2]~input_o\ & ((\reg_in2[2]~input_o\) # (\ALUOp[0]~input_o\))) # (!\reg_in1[2]~input_o\ & (\reg_in2[2]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \reg_in1[2]~input_o\,
	datac => \reg_in2[2]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X47_Y69_N14
\ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (!\shamt[0]~input_o\ & ((\shamt[1]~input_o\ & ((\reg_in1[0]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[2]~input_o\,
	datab => \reg_in1[0]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X46_Y69_N10
\ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\ShiftLeft0~11_combout\) # ((\shamt[0]~input_o\ & (\reg_in1[1]~input_o\ & !\shamt[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \reg_in1[1]~input_o\,
	datac => \ShiftLeft0~11_combout\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X46_Y68_N2
\ShiftLeft0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~103_combout\ = (!\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & \ShiftLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \shamt[2]~input_o\,
	datad => \ShiftLeft0~12_combout\,
	combout => \ShiftLeft0~103_combout\);

-- Location: LCCOMB_X49_Y68_N20
\reg_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~0_combout\ = \reg_in2[2]~input_o\ $ (\reg_in1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[2]~input_o\,
	datad => \reg_in1[2]~input_o\,
	combout => \reg_out~0_combout\);

-- Location: LCCOMB_X49_Y68_N24
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~4_combout\ & ((\Mux2~5_combout\ & ((\reg_out~0_combout\))) # (!\Mux2~5_combout\ & (\ShiftLeft0~103_combout\)))) # (!\Mux2~4_combout\ & (\Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \Mux2~5_combout\,
	datac => \ShiftLeft0~103_combout\,
	datad => \reg_out~0_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X47_Y69_N0
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\shamt[3]~input_o\) # ((\shamt[1]~input_o\ & !\shamt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[1]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[3]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X46_Y70_N20
\ShiftRight0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (!\shamt[0]~input_o\ & ((\shamt[1]~input_o\ & (\reg_in1[8]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[8]~input_o\,
	datab => \reg_in1[6]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~56_combout\);

-- Location: LCCOMB_X46_Y70_N30
\ShiftRight0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[9]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[7]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[9]~input_o\,
	combout => \ShiftRight0~57_combout\);

-- Location: LCCOMB_X46_Y70_N28
\ShiftRight0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (\ShiftRight0~56_combout\) # ((\shamt[0]~input_o\ & \ShiftRight0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \ShiftRight0~56_combout\,
	datac => \ShiftRight0~57_combout\,
	combout => \ShiftRight0~58_combout\);

-- Location: LCCOMB_X53_Y71_N20
\ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (!\shamt[2]~input_o\ & !\shamt[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X47_Y69_N22
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux2~1_combout\ & (((!\ShiftLeft0~10_combout\)))) # (!\Mux2~1_combout\ & ((\ShiftLeft0~10_combout\ & (\ShiftRight0~18_combout\)) # (!\ShiftLeft0~10_combout\ & ((\ShiftRight0~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~18_combout\,
	datab => \Mux2~1_combout\,
	datac => \ShiftRight0~58_combout\,
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X45_Y72_N18
\ShiftRight0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[13]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[11]~input_o\,
	datac => \reg_in1[13]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~61_combout\);

-- Location: LCCOMB_X47_Y72_N6
\ShiftRight0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~61_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datac => \ShiftRight0~36_combout\,
	datad => \ShiftRight0~61_combout\,
	combout => \ShiftRight0~62_combout\);

-- Location: LCCOMB_X43_Y72_N20
\ShiftRight0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[17]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[15]~input_o\,
	datac => \reg_in1[17]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftRight0~59_combout\);

-- Location: LCCOMB_X47_Y72_N8
\ShiftRight0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~59_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~59_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight0~34_combout\,
	combout => \ShiftRight0~60_combout\);

-- Location: LCCOMB_X47_Y72_N16
\ShiftRight0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~60_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~62_combout\,
	datab => \ShiftRight0~60_combout\,
	datac => \shamt[2]~input_o\,
	combout => \ShiftRight0~63_combout\);

-- Location: LCCOMB_X47_Y69_N8
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~1_combout\ & ((\Mux2~2_combout\ & ((\ShiftRight0~63_combout\))) # (!\Mux2~2_combout\ & (\ShiftRight0~20_combout\)))) # (!\Mux2~1_combout\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~20_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux2~2_combout\,
	datad => \ShiftRight0~63_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X50_Y68_N18
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux0~13_combout\ & (\Mux16~2_combout\)) # (!\Mux0~13_combout\ & ((\Mux16~2_combout\ & (\Mux2~6_combout\)) # (!\Mux16~2_combout\ & ((\Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~13_combout\,
	datab => \Mux16~2_combout\,
	datac => \Mux2~6_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X52_Y72_N4
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\ALUOp[3]~input_o\ & (!\ALUOp[2]~input_o\ & ((\ALUOp[0]~input_o\) # (!\ALUOp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X50_Y68_N16
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~7_combout\ & ((\Add0~9_combout\) # ((!\Mux2~0_combout\)))) # (!\Mux2~7_combout\ & (((\Mux2~0_combout\ & !\reg_in1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \Mux2~7_combout\,
	datac => \Mux2~0_combout\,
	datad => \reg_in1[2]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X50_Y68_N2
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\ALUOp[3]~input_o\ & ((\shamt[4]~input_o\ & (\Mux18~4_combout\)) # (!\shamt[4]~input_o\ & ((\Mux2~8_combout\))))) # (!\ALUOp[3]~input_o\ & (((\Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \Mux18~4_combout\,
	datac => \Mux2~8_combout\,
	datad => \shamt[4]~input_o\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X50_Y68_N20
\reg_out[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[2]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[2]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[2]$latch~combout\,
	datac => \Mux2~9_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[2]$latch~combout\);

-- Location: LCCOMB_X46_Y70_N18
\ShiftRight0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~15_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datac => \ShiftRight0~57_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~70_combout\);

-- Location: LCCOMB_X46_Y69_N8
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux2~1_combout\ & (((!\ShiftLeft0~10_combout\)))) # (!\Mux2~1_combout\ & ((\ShiftLeft0~10_combout\ & ((\ShiftRight0~39_combout\))) # (!\ShiftLeft0~10_combout\ & (\ShiftRight0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~70_combout\,
	datab => \Mux2~1_combout\,
	datac => \ShiftRight0~39_combout\,
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X45_Y72_N24
\ShiftRight0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (\shamt[0]~input_o\ & (\ShiftRight0~12_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftRight0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~12_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight0~61_combout\,
	combout => \ShiftRight0~72_combout\);

-- Location: LCCOMB_X47_Y72_N18
\ShiftRight0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~26_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~59_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight0~26_combout\,
	combout => \ShiftRight0~71_combout\);

-- Location: LCCOMB_X47_Y68_N20
\ShiftRight0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~71_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \ShiftRight0~72_combout\,
	datad => \ShiftRight0~71_combout\,
	combout => \ShiftRight0~73_combout\);

-- Location: LCCOMB_X46_Y69_N6
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\ShiftRight0~73_combout\) # (!\Mux2~1_combout\)))) # (!\Mux3~0_combout\ & (\ShiftRight0~41_combout\ & (\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~41_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux2~1_combout\,
	datad => \ShiftRight0~73_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X50_Y69_N24
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in2[3]~input_o\ & ((\reg_in1[3]~input_o\) # (\ALUOp[0]~input_o\))) # (!\reg_in2[3]~input_o\ & (\reg_in1[3]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[3]~input_o\,
	datab => \reg_in1[3]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X46_Y69_N0
\ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (!\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & ((\reg_in1[2]~input_o\))) # (!\shamt[0]~input_o\ & (\reg_in1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[3]~input_o\,
	datad => \reg_in1[2]~input_o\,
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X46_Y69_N14
\ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (\ShiftLeft0~10_combout\ & ((\ShiftLeft0~13_combout\) # ((\ShiftLeft0~8_combout\ & \shamt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftLeft0~13_combout\,
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X50_Y69_N18
\reg_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~1_combout\ = \reg_in2[3]~input_o\ $ (\reg_in1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[3]~input_o\,
	datac => \reg_in1[3]~input_o\,
	combout => \reg_out~1_combout\);

-- Location: LCCOMB_X50_Y69_N6
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux2~4_combout\ & ((\Mux3~2_combout\ & ((\reg_out~1_combout\))) # (!\Mux3~2_combout\ & (\ShiftLeft0~14_combout\)))) # (!\Mux2~4_combout\ & (\Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \Mux3~2_combout\,
	datac => \ShiftLeft0~14_combout\,
	datad => \reg_out~1_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X50_Y69_N4
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux16~2_combout\ & (((\Mux3~3_combout\) # (\Mux0~13_combout\)))) # (!\Mux16~2_combout\ & (\Mux3~1_combout\ & ((!\Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux0~13_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X49_Y72_N0
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \reg_in2[3]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[3]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X49_Y72_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\reg_in1[3]~input_o\ $ (\Add0~11_combout\ $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\reg_in1[3]~input_o\ & ((\Add0~11_combout\) # (!\Add0~10\))) # (!\reg_in1[3]~input_o\ & (\Add0~11_combout\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[3]~input_o\,
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X50_Y69_N2
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & (((\Add0~12_combout\) # (!\Mux2~0_combout\)))) # (!\Mux3~4_combout\ & (!\reg_in1[3]~input_o\ & (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[3]~input_o\,
	datab => \Mux3~4_combout\,
	datac => \Mux2~0_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X53_Y70_N0
\ShiftRight0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (!\shamt[1]~input_o\ & (!\shamt[0]~input_o\ & (\reg_in1[31]~input_o\ & \shamt[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[31]~input_o\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight0~69_combout\);

-- Location: LCCOMB_X43_Y72_N10
\ShiftRight0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~23_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~53_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftRight0~23_combout\,
	combout => \ShiftRight0~65_combout\);

-- Location: LCCOMB_X46_Y72_N6
\ShiftRight0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = (\shamt[0]~input_o\ & ((\ShiftRight0~8_combout\))) # (!\shamt[0]~input_o\ & (\ShiftRight0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datab => \shamt[0]~input_o\,
	datad => \ShiftRight0~8_combout\,
	combout => \ShiftRight0~64_combout\);

-- Location: LCCOMB_X46_Y72_N28
\ShiftRight0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~64_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~65_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~64_combout\,
	combout => \ShiftRight0~66_combout\);

-- Location: LCCOMB_X53_Y70_N12
\ShiftRight0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = (\shamt[0]~input_o\ & ((\shamt[1]~input_o\ & ((\reg_in1[30]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[28]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[30]~input_o\,
	combout => \ShiftRight0~67_combout\);

-- Location: LCCOMB_X53_Y70_N30
\ShiftRight0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (!\shamt[2]~input_o\ & ((\ShiftRight0~67_combout\) # ((\ShiftRight0~48_combout\ & !\shamt[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \ShiftRight0~48_combout\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~68_combout\);

-- Location: LCCOMB_X49_Y69_N14
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\shamt[3]~input_o\ & ((\ShiftRight0~69_combout\) # ((\ShiftRight0~68_combout\)))) # (!\shamt[3]~input_o\ & (((\ShiftRight0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftRight0~69_combout\,
	datac => \ShiftRight0~66_combout\,
	datad => \ShiftRight0~68_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X50_Y69_N16
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\ALUOp[3]~input_o\ & ((\shamt[4]~input_o\ & ((\Mux19~2_combout\))) # (!\shamt[4]~input_o\ & (\Mux3~5_combout\)))) # (!\ALUOp[3]~input_o\ & (((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \shamt[4]~input_o\,
	datac => \Mux3~5_combout\,
	datad => \Mux19~2_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X50_Y69_N0
\reg_out[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[3]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[3]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[3]$latch~combout\,
	datac => \Mux3~6_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[3]$latch~combout\);

-- Location: LCCOMB_X49_Y72_N6
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \reg_in2[4]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[4]~input_o\,
	datac => \ALUOp[0]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X49_Y72_N26
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\reg_in1[4]~input_o\ & ((\Add0~14_combout\ & (\Add0~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~13\)))) # (!\reg_in1[4]~input_o\ & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\reg_in1[4]~input_o\ & (!\Add0~14_combout\ & !\Add0~13\)) # (!\reg_in1[4]~input_o\ & ((!\Add0~13\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[4]~input_o\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X46_Y69_N16
\ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\shamt[0]~input_o\ & ((\shamt[1]~input_o\ & ((\reg_in1[1]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[3]~input_o\,
	datad => \reg_in1[1]~input_o\,
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X46_Y69_N22
\ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[2]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datac => \reg_in1[4]~input_o\,
	datad => \reg_in1[2]~input_o\,
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X49_Y69_N4
\ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\ShiftLeft0~16_combout\) # ((!\shamt[0]~input_o\ & \ShiftLeft0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \ShiftLeft0~16_combout\,
	datad => \ShiftLeft0~17_combout\,
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X47_Y69_N28
\ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (!\shamt[0]~input_o\ & (!\shamt[1]~input_o\ & (\shamt[2]~input_o\ & \reg_in1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \reg_in1[0]~input_o\,
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X49_Y69_N26
\ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (!\shamt[3]~input_o\ & ((\ShiftLeft0~15_combout\) # ((\ShiftLeft0~18_combout\ & !\shamt[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftLeft0~18_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftLeft0~15_combout\,
	combout => \ShiftLeft0~19_combout\);

-- Location: LCCOMB_X52_Y72_N0
\reg_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~2_combout\ = \reg_in2[4]~input_o\ $ (\reg_in1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in2[4]~input_o\,
	datad => \reg_in1[4]~input_o\,
	combout => \reg_out~2_combout\);

-- Location: LCCOMB_X52_Y72_N2
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in1[4]~input_o\ & ((\reg_in2[4]~input_o\) # (\ALUOp[0]~input_o\))) # (!\reg_in1[4]~input_o\ & (\reg_in2[4]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[4]~input_o\,
	datab => \reg_in2[4]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X52_Y72_N20
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & (((\reg_out~2_combout\) # (!\Mux2~4_combout\)))) # (!\Mux4~2_combout\ & (\ShiftLeft0~19_combout\ & ((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datab => \reg_out~2_combout\,
	datac => \Mux4~2_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X46_Y68_N14
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\shamt[3]~input_o\) # (\shamt[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shamt[3]~input_o\,
	datad => \shamt[4]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X46_Y68_N0
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\shamt[4]~input_o\) # ((!\shamt[3]~input_o\ & \shamt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[4]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X47_Y72_N0
\ShiftRight0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~27_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~13_combout\,
	combout => \ShiftRight0~74_combout\);

-- Location: LCCOMB_X47_Y72_N26
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux5~1_combout\ & ((\Mux5~0_combout\) # ((\ShiftRight0~74_combout\)))) # (!\Mux5~1_combout\ & (!\Mux5~0_combout\ & (\ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~0_combout\,
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftRight0~74_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X47_Y72_N12
\ShiftRight0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~9_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~9_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~24_combout\,
	combout => \ShiftRight0~75_combout\);

-- Location: LCCOMB_X47_Y72_N22
\ShiftRight0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~76_combout\ = (\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & (\ShiftRight0~6_combout\))) # (!\shamt[3]~input_o\ & (((\ShiftRight0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftRight0~6_combout\,
	datad => \ShiftRight0~75_combout\,
	combout => \ShiftRight0~76_combout\);

-- Location: LCCOMB_X47_Y72_N24
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\ShiftRight0~76_combout\)) # (!\Mux5~0_combout\))) # (!\Mux4~0_combout\ & (\Mux5~0_combout\ & (\ShiftRight0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \ShiftRight0~16_combout\,
	datad => \ShiftRight0~76_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X52_Y72_N30
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux0~13_combout\ & (((\Mux16~2_combout\)))) # (!\Mux0~13_combout\ & ((\Mux16~2_combout\ & (\Mux4~3_combout\)) # (!\Mux16~2_combout\ & ((\Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux0~13_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X50_Y72_N2
Mux4 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~combout\ = (\Mux4~4_combout\ & ((\Add0~15_combout\) # ((!\Mux2~0_combout\)))) # (!\Mux4~4_combout\ & (((\Mux2~0_combout\ & !\reg_in1[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Mux4~4_combout\,
	datac => \Mux2~0_combout\,
	datad => \reg_in1[4]~input_o\,
	combout => \Mux4~combout\);

-- Location: LCCOMB_X50_Y72_N0
\reg_out[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[4]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[4]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[4]$latch~combout\,
	datac => \Mux4~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[4]$latch~combout\);

-- Location: LCCOMB_X52_Y72_N12
\reg_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~3_combout\ = \reg_in2[5]~input_o\ $ (\reg_in1[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[5]~input_o\,
	datac => \reg_in1[5]~input_o\,
	combout => \reg_out~3_combout\);

-- Location: LCCOMB_X46_Y69_N20
\ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (\shamt[1]~input_o\ & (\reg_in1[3]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[3]~input_o\,
	datab => \reg_in1[5]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~21_combout\);

-- Location: LCCOMB_X46_Y69_N18
\ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (\shamt[0]~input_o\ & (\ShiftLeft0~17_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftLeft0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~17_combout\,
	datab => \ShiftLeft0~21_combout\,
	datac => \shamt[0]~input_o\,
	combout => \ShiftLeft0~22_combout\);

-- Location: LCCOMB_X46_Y71_N20
\ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (!\shamt[3]~input_o\ & (!\shamt[1]~input_o\ & (\shamt[2]~input_o\ & \ShiftLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftLeft0~8_combout\,
	combout => \ShiftLeft0~20_combout\);

-- Location: LCCOMB_X46_Y71_N12
\ShiftLeft0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~104_combout\ = (\ShiftLeft0~20_combout\) # ((!\shamt[3]~input_o\ & (\ShiftLeft0~22_combout\ & !\shamt[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftLeft0~22_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftLeft0~20_combout\,
	combout => \ShiftLeft0~104_combout\);

-- Location: LCCOMB_X52_Y72_N10
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in2[5]~input_o\ & ((\reg_in1[5]~input_o\) # (\ALUOp[0]~input_o\))) # (!\reg_in2[5]~input_o\ & (\reg_in1[5]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[5]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \reg_in1[5]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X52_Y72_N28
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & ((\reg_out~3_combout\) # ((!\Mux2~4_combout\)))) # (!\Mux5~4_combout\ & (((\ShiftLeft0~104_combout\ & \Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out~3_combout\,
	datab => \ShiftLeft0~104_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X45_Y69_N22
\ShiftRight0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~77_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~46_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftRight0~35_combout\,
	datad => \ShiftRight0~46_combout\,
	combout => \ShiftRight0~77_combout\);

-- Location: LCCOMB_X45_Y71_N8
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & ((\ShiftRight0~77_combout\) # ((\Mux5~0_combout\)))) # (!\Mux5~1_combout\ & (((\ShiftRight0~42_combout\ & !\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \ShiftRight0~77_combout\,
	datac => \ShiftRight0~42_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X45_Y71_N30
\ShiftRight0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~78_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~32_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \ShiftRight0~44_combout\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight0~78_combout\);

-- Location: LCCOMB_X45_Y71_N24
\ShiftRight0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~79_combout\ = (\shamt[3]~input_o\ & (((\ShiftRight0~30_combout\ & !\shamt[2]~input_o\)))) # (!\shamt[3]~input_o\ & (\ShiftRight0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~78_combout\,
	datab => \ShiftRight0~30_combout\,
	datac => \shamt[3]~input_o\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight0~79_combout\);

-- Location: LCCOMB_X45_Y71_N26
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~0_combout\ & ((\Mux5~2_combout\ & ((\ShiftRight0~79_combout\))) # (!\Mux5~2_combout\ & (\ShiftRight0~37_combout\)))) # (!\Mux5~0_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~37_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux5~2_combout\,
	datad => \ShiftRight0~79_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X52_Y72_N6
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux16~2_combout\ & ((\Mux5~5_combout\) # ((\Mux0~13_combout\)))) # (!\Mux16~2_combout\ & (((!\Mux0~13_combout\ & \Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~5_combout\,
	datab => \Mux16~2_combout\,
	datac => \Mux0~13_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X49_Y72_N4
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUOp[0]~input_o\,
	datad => \reg_in2[5]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X49_Y72_N28
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\Add0~17_combout\ $ (\reg_in1[5]~input_o\ $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\Add0~17_combout\ & ((\reg_in1[5]~input_o\) # (!\Add0~16\))) # (!\Add0~17_combout\ & (\reg_in1[5]~input_o\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \reg_in1[5]~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X50_Y72_N8
Mux5 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~combout\ = (\Mux5~6_combout\ & ((\Add0~18_combout\) # ((!\Mux2~0_combout\)))) # (!\Mux5~6_combout\ & (((\Mux2~0_combout\ & !\reg_in1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \Add0~18_combout\,
	datac => \Mux2~0_combout\,
	datad => \reg_in1[5]~input_o\,
	combout => \Mux5~combout\);

-- Location: LCCOMB_X50_Y72_N18
\reg_out[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[5]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[5]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[5]$latch~combout\,
	datac => \Mux5~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[5]$latch~combout\);

-- Location: LCCOMB_X49_Y72_N2
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \reg_in2[6]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in2[6]~input_o\,
	datac => \ALUOp[0]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X49_Y72_N30
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\reg_in1[6]~input_o\ & ((\Add0~20_combout\ & (\Add0~19\ & VCC)) # (!\Add0~20_combout\ & (!\Add0~19\)))) # (!\reg_in1[6]~input_o\ & ((\Add0~20_combout\ & (!\Add0~19\)) # (!\Add0~20_combout\ & ((\Add0~19\) # (GND)))))
-- \Add0~22\ = CARRY((\reg_in1[6]~input_o\ & (!\Add0~20_combout\ & !\Add0~19\)) # (!\reg_in1[6]~input_o\ & ((!\Add0~19\) # (!\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[6]~input_o\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X50_Y70_N22
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\ALUOp[0]~input_o\ & (!\ALUOp[1]~input_o\ & ((\reg_in2[6]~input_o\) # (\reg_in1[6]~input_o\)))) # (!\ALUOp[0]~input_o\ & ((\ALUOp[1]~input_o\) # ((\reg_in2[6]~input_o\ & \reg_in1[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[6]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \reg_in1[6]~input_o\,
	datad => \ALUOp[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X50_Y70_N28
\reg_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~4_combout\ = \reg_in1[6]~input_o\ $ (\reg_in2[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[6]~input_o\,
	datac => \reg_in2[6]~input_o\,
	combout => \reg_out~4_combout\);

-- Location: LCCOMB_X50_Y72_N26
\ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[4]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datac => \reg_in1[6]~input_o\,
	datad => \reg_in1[4]~input_o\,
	combout => \ShiftLeft0~23_combout\);

-- Location: LCCOMB_X46_Y68_N8
\ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (\shamt[0]~input_o\ & (\ShiftLeft0~21_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftLeft0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~21_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~24_combout\);

-- Location: LCCOMB_X46_Y68_N10
\ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = (!\shamt[3]~input_o\ & ((\shamt[2]~input_o\ & ((\ShiftLeft0~12_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \shamt[2]~input_o\,
	datac => \ShiftLeft0~24_combout\,
	datad => \ShiftLeft0~12_combout\,
	combout => \ShiftLeft0~25_combout\);

-- Location: LCCOMB_X49_Y69_N24
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & (((\reg_out~4_combout\)) # (!\Mux2~4_combout\))) # (!\Mux6~2_combout\ & (\Mux2~4_combout\ & ((\ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux2~4_combout\,
	datac => \reg_out~4_combout\,
	datad => \ShiftLeft0~25_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X45_Y69_N0
\ShiftRight0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~81_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~49_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftRight0~52_combout\,
	datad => \ShiftRight0~49_combout\,
	combout => \ShiftRight0~81_combout\);

-- Location: LCCOMB_X47_Y68_N24
\ShiftRight0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~82_combout\ = (\shamt[3]~input_o\ & (\ShiftRight0~5_combout\ & (\ShiftLeft0~6_combout\))) # (!\shamt[3]~input_o\ & (((\ShiftRight0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftLeft0~6_combout\,
	datad => \ShiftRight0~81_combout\,
	combout => \ShiftRight0~82_combout\);

-- Location: LCCOMB_X46_Y72_N30
\ShiftRight0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~80_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~54_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~60_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~54_combout\,
	combout => \ShiftRight0~80_combout\);

-- Location: LCCOMB_X47_Y68_N22
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux5~0_combout\ & (((\Mux5~1_combout\)))) # (!\Mux5~0_combout\ & ((\Mux5~1_combout\ & ((\ShiftRight0~80_combout\))) # (!\Mux5~1_combout\ & (\ShiftRight0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \ShiftRight0~58_combout\,
	datac => \Mux5~1_combout\,
	datad => \ShiftRight0~80_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X47_Y68_N6
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux5~0_combout\ & ((\Mux6~0_combout\ & (\ShiftRight0~82_combout\)) # (!\Mux6~0_combout\ & ((\ShiftRight0~62_combout\))))) # (!\Mux5~0_combout\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \ShiftRight0~82_combout\,
	datac => \Mux6~0_combout\,
	datad => \ShiftRight0~62_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X49_Y69_N30
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux16~2_combout\ & ((\Mux6~3_combout\) # ((\Mux0~13_combout\)))) # (!\Mux16~2_combout\ & (((\Mux6~1_combout\ & !\Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux0~13_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X50_Y72_N24
Mux6 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~combout\ = (\Mux2~0_combout\ & ((\Mux6~4_combout\ & (\Add0~21_combout\)) # (!\Mux6~4_combout\ & ((!\reg_in1[6]~input_o\))))) # (!\Mux2~0_combout\ & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \reg_in1[6]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~combout\);

-- Location: LCCOMB_X50_Y72_N20
\reg_out[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[6]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[6]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[6]$latch~combout\,
	datac => \Mux6~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[6]$latch~combout\);

-- Location: LCCOMB_X48_Y71_N30
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \reg_in2[7]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[7]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X49_Y71_N0
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\reg_in1[7]~input_o\ $ (\Add0~23_combout\ $ (!\Add0~22\)))) # (GND)
-- \Add0~25\ = CARRY((\reg_in1[7]~input_o\ & ((\Add0~23_combout\) # (!\Add0~22\))) # (!\reg_in1[7]~input_o\ & (\Add0~23_combout\ & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[7]~input_o\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X47_Y69_N30
\ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = (\shamt[3]~input_o\ & (!\shamt[1]~input_o\ & (!\shamt[2]~input_o\ & !\shamt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftLeft0~26_combout\);

-- Location: LCCOMB_X53_Y70_N2
\ShiftRight0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~84_combout\ = (\ShiftRight0~67_combout\) # ((!\shamt[0]~input_o\ & \ShiftRight0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \shamt[0]~input_o\,
	datad => \ShiftRight0~48_combout\,
	combout => \ShiftRight0~84_combout\);

-- Location: LCCOMB_X53_Y68_N24
\ShiftRight0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~85_combout\ = (\shamt[2]~input_o\ & ((\ShiftRight0~84_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~64_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftRight0~84_combout\,
	combout => \ShiftRight0~85_combout\);

-- Location: LCCOMB_X47_Y68_N16
\ShiftRight0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~86_combout\ = (\ShiftLeft0~26_combout\ & ((\reg_in1[31]~input_o\) # ((!\shamt[3]~input_o\ & \ShiftRight0~85_combout\)))) # (!\ShiftLeft0~26_combout\ & (!\shamt[3]~input_o\ & ((\ShiftRight0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~26_combout\,
	datab => \shamt[3]~input_o\,
	datac => \reg_in1[31]~input_o\,
	datad => \ShiftRight0~85_combout\,
	combout => \ShiftRight0~86_combout\);

-- Location: LCCOMB_X47_Y68_N12
\ShiftRight0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~83_combout\ = (\shamt[2]~input_o\ & (\ShiftRight0~65_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \ShiftRight0~65_combout\,
	datad => \ShiftRight0~71_combout\,
	combout => \ShiftRight0~83_combout\);

-- Location: LCCOMB_X47_Y68_N2
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux5~0_combout\ & (((\Mux5~1_combout\)))) # (!\Mux5~0_combout\ & ((\Mux5~1_combout\ & ((\ShiftRight0~83_combout\))) # (!\Mux5~1_combout\ & (\ShiftRight0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \ShiftRight0~70_combout\,
	datac => \Mux5~1_combout\,
	datad => \ShiftRight0~83_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X47_Y68_N26
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux5~0_combout\ & ((\Mux7~0_combout\ & (\ShiftRight0~86_combout\)) # (!\Mux7~0_combout\ & ((\ShiftRight0~72_combout\))))) # (!\Mux5~0_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \ShiftRight0~86_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X48_Y71_N12
\reg_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~5_combout\ = \reg_in2[7]~input_o\ $ (\reg_in1[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[7]~input_o\,
	datac => \reg_in1[7]~input_o\,
	combout => \reg_out~5_combout\);

-- Location: LCCOMB_X48_Y71_N6
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in2[7]~input_o\ & ((\reg_in1[7]~input_o\) # (\ALUOp[0]~input_o\))) # (!\reg_in2[7]~input_o\ & (\reg_in1[7]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[7]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \reg_in1[7]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X46_Y69_N24
\ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = (\ShiftLeft0~13_combout\) # ((\shamt[1]~input_o\ & \ShiftLeft0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \ShiftLeft0~13_combout\,
	datad => \ShiftLeft0~8_combout\,
	combout => \ShiftLeft0~27_combout\);

-- Location: LCCOMB_X46_Y70_N0
\ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[5]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[7]~input_o\,
	datab => \reg_in1[5]~input_o\,
	datac => \shamt[1]~input_o\,
	combout => \ShiftLeft0~28_combout\);

-- Location: LCCOMB_X46_Y70_N26
\ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = (\shamt[0]~input_o\ & ((\ShiftLeft0~23_combout\))) # (!\shamt[0]~input_o\ & (\ShiftLeft0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \ShiftLeft0~28_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~29_combout\);

-- Location: LCCOMB_X49_Y67_N8
\ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (!\shamt[3]~input_o\ & ((\shamt[2]~input_o\ & (\ShiftLeft0~27_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftLeft0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftLeft0~27_combout\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftLeft0~29_combout\,
	combout => \ShiftLeft0~30_combout\);

-- Location: LCCOMB_X48_Y71_N16
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\ & ((\reg_out~5_combout\) # ((!\Mux2~4_combout\)))) # (!\Mux7~2_combout\ & (((\Mux2~4_combout\ & \ShiftLeft0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out~5_combout\,
	datab => \Mux7~2_combout\,
	datac => \Mux2~4_combout\,
	datad => \ShiftLeft0~30_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X47_Y71_N0
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux0~13_combout\ & (((\Mux16~2_combout\)))) # (!\Mux0~13_combout\ & ((\Mux16~2_combout\ & ((\Mux7~3_combout\))) # (!\Mux16~2_combout\ & (\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~3_combout\,
	datac => \Mux0~13_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X50_Y72_N22
Mux7 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~combout\ = (\Mux7~4_combout\ & ((\Add0~24_combout\) # ((!\Mux2~0_combout\)))) # (!\Mux7~4_combout\ & (((\Mux2~0_combout\ & !\reg_in1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Mux7~4_combout\,
	datac => \Mux2~0_combout\,
	datad => \reg_in1[7]~input_o\,
	combout => \Mux7~combout\);

-- Location: LCCOMB_X50_Y72_N10
\reg_out[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[7]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[7]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[7]$latch~combout\,
	datac => \Mux7~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[7]$latch~combout\);

-- Location: LCCOMB_X46_Y70_N12
\ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[6]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[8]~input_o\,
	datab => \reg_in1[6]~input_o\,
	datac => \shamt[1]~input_o\,
	combout => \ShiftLeft0~31_combout\);

-- Location: LCCOMB_X46_Y70_N14
\ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = (\shamt[0]~input_o\ & ((\ShiftLeft0~28_combout\))) # (!\shamt[0]~input_o\ & (\ShiftLeft0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~31_combout\,
	datab => \ShiftLeft0~28_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftLeft0~32_combout\);

-- Location: LCCOMB_X47_Y68_N28
\ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = (\shamt[2]~input_o\ & ((\ShiftLeft0~18_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \ShiftLeft0~32_combout\,
	datad => \ShiftLeft0~18_combout\,
	combout => \ShiftLeft0~33_combout\);

-- Location: LCCOMB_X47_Y69_N12
\ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = (\shamt[3]~input_o\ & (((\reg_in1[0]~input_o\ & \ShiftLeft0~26_combout\)))) # (!\shamt[3]~input_o\ & ((\ShiftLeft0~33_combout\) # ((\reg_in1[0]~input_o\ & \ShiftLeft0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftLeft0~33_combout\,
	datac => \reg_in1[0]~input_o\,
	datad => \ShiftLeft0~26_combout\,
	combout => \ShiftLeft0~34_combout\);

-- Location: LCCOMB_X48_Y71_N20
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in2[8]~input_o\ & ((\ALUOp[0]~input_o\) # (\reg_in1[8]~input_o\))) # (!\reg_in2[8]~input_o\ & (\ALUOp[0]~input_o\ & \reg_in1[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \reg_in2[8]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \reg_in1[8]~input_o\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X49_Y69_N12
\reg_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~6_combout\ = \reg_in1[8]~input_o\ $ (\reg_in2[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in1[8]~input_o\,
	datad => \reg_in2[8]~input_o\,
	combout => \reg_out~6_combout\);

-- Location: LCCOMB_X48_Y71_N14
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & (((\reg_out~6_combout\) # (!\Mux2~4_combout\)))) # (!\Mux8~4_combout\ & (\ShiftLeft0~34_combout\ & (\Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \Mux8~4_combout\,
	datac => \Mux2~4_combout\,
	datad => \reg_out~6_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X45_Y69_N10
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\ALUOp[3]~input_o\ & ((\shamt[4]~input_o\) # (\shamt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datac => \shamt[3]~input_o\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X50_Y69_N10
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\shamt[4]~input_o\ & \ALUOp[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datac => \ALUOp[3]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X48_Y72_N6
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux15~4_combout\ & (((!\Mux23~0_combout\)))) # (!\Mux15~4_combout\ & ((\Mux23~0_combout\ & ((\ShiftRight0~17_combout\))) # (!\Mux23~0_combout\ & (\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux23~0_combout\,
	datad => \ShiftRight0~17_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X48_Y72_N12
\ShiftRight0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~87_combout\ = (!\shamt[3]~input_o\ & ((\shamt[2]~input_o\ & ((\ShiftRight0~6_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftRight0~9_combout\,
	datad => \ShiftRight0~6_combout\,
	combout => \ShiftRight0~87_combout\);

-- Location: LCCOMB_X48_Y72_N22
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux8~6_combout\ & (((\ShiftRight0~87_combout\) # (!\Mux15~4_combout\)))) # (!\Mux8~6_combout\ & (\ShiftRight0~28_combout\ & (\Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \ShiftRight0~28_combout\,
	datac => \Mux15~4_combout\,
	datad => \ShiftRight0~87_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X48_Y71_N18
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \reg_in2[8]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[8]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X49_Y71_N2
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\reg_in1[8]~input_o\ & ((\Add0~26_combout\ & (\Add0~25\ & VCC)) # (!\Add0~26_combout\ & (!\Add0~25\)))) # (!\reg_in1[8]~input_o\ & ((\Add0~26_combout\ & (!\Add0~25\)) # (!\Add0~26_combout\ & ((\Add0~25\) # (GND)))))
-- \Add0~28\ = CARRY((\reg_in1[8]~input_o\ & (!\Add0~26_combout\ & !\Add0~25\)) # (!\reg_in1[8]~input_o\ & ((!\Add0~25\) # (!\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[8]~input_o\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X49_Y68_N30
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\ALUOp[1]~input_o\ & (\ALUOp[0]~input_o\ & (!\reg_in1[8]~input_o\))) # (!\ALUOp[1]~input_o\ & (((\Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datab => \reg_in1[8]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \Add0~27_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X49_Y68_N16
\Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\ALUOp[3]~input_o\ & (\Mux8~7_combout\)) # (!\ALUOp[3]~input_o\ & ((\ALUOp[2]~input_o\ & (\Mux8~7_combout\)) # (!\ALUOp[2]~input_o\ & ((\Mux8~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \Mux8~7_combout\,
	datac => \Mux8~8_combout\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X49_Y68_N26
\reg_out[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[8]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[8]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[8]$latch~combout\,
	datac => \Mux8~9_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[8]$latch~combout\);

-- Location: LCCOMB_X50_Y71_N10
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \reg_in2[9]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[9]~input_o\,
	datac => \ALUOp[0]~input_o\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X49_Y71_N4
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = ((\reg_in1[9]~input_o\ $ (\Add0~29_combout\ $ (!\Add0~28\)))) # (GND)
-- \Add0~31\ = CARRY((\reg_in1[9]~input_o\ & ((\Add0~29_combout\) # (!\Add0~28\))) # (!\reg_in1[9]~input_o\ & (\Add0~29_combout\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[9]~input_o\,
	datab => \Add0~29_combout\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X53_Y69_N10
\Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\ALUOp[1]~input_o\ & (!\reg_in1[9]~input_o\ & ((\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & (((\Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[9]~input_o\,
	datab => \Add0~30_combout\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X45_Y69_N14
\ShiftRight0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~88_combout\ = (!\shamt[3]~input_o\ & ((\shamt[2]~input_o\ & ((\ShiftRight0~30_combout\))) # (!\shamt[2]~input_o\ & (\ShiftRight0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftRight0~32_combout\,
	datac => \ShiftRight0~30_combout\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftRight0~88_combout\);

-- Location: LCCOMB_X45_Y69_N20
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux23~0_combout\ & ((\Mux15~4_combout\ & ((\ShiftRight0~47_combout\))) # (!\Mux15~4_combout\ & (\ShiftRight0~38_combout\)))) # (!\Mux23~0_combout\ & (((\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datab => \ShiftRight0~47_combout\,
	datac => \Mux23~0_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X53_Y69_N2
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in2[9]~input_o\ & ((\reg_in1[9]~input_o\) # (\ALUOp[0]~input_o\))) # (!\reg_in2[9]~input_o\ & (\reg_in1[9]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[9]~input_o\,
	datab => \reg_in1[9]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X46_Y70_N8
\ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = (\shamt[1]~input_o\ & (\reg_in1[7]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[7]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[9]~input_o\,
	combout => \ShiftLeft0~35_combout\);

-- Location: LCCOMB_X46_Y70_N2
\ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = (\shamt[0]~input_o\ & (\ShiftLeft0~31_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftLeft0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~31_combout\,
	datab => \ShiftLeft0~35_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftLeft0~36_combout\);

-- Location: LCCOMB_X46_Y71_N10
\ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = (\shamt[2]~input_o\ & (\ShiftLeft0~22_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftLeft0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~22_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftLeft0~36_combout\,
	combout => \ShiftLeft0~37_combout\);

-- Location: LCCOMB_X50_Y68_N0
\ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = (\shamt[3]~input_o\ & (\ShiftLeft0~8_combout\ & (\ShiftLeft0~6_combout\))) # (!\shamt[3]~input_o\ & (((\ShiftLeft0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftLeft0~6_combout\,
	datad => \ShiftLeft0~37_combout\,
	combout => \ShiftLeft0~38_combout\);

-- Location: LCCOMB_X53_Y69_N24
\reg_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~7_combout\ = \reg_in2[9]~input_o\ $ (\reg_in1[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in2[9]~input_o\,
	datad => \reg_in1[9]~input_o\,
	combout => \reg_out~7_combout\);

-- Location: LCCOMB_X53_Y69_N20
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~4_combout\ & (((\reg_out~7_combout\) # (!\Mux2~4_combout\)))) # (!\Mux9~4_combout\ & (\ShiftLeft0~38_combout\ & (\Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~4_combout\,
	datab => \ShiftLeft0~38_combout\,
	datac => \Mux2~4_combout\,
	datad => \reg_out~7_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X53_Y69_N18
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\Mux9~6_combout\ & ((\ShiftRight0~88_combout\) # ((\Mux23~0_combout\)))) # (!\Mux9~6_combout\ & (((\Mux9~5_combout\ & !\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~88_combout\,
	datab => \Mux9~6_combout\,
	datac => \Mux9~5_combout\,
	datad => \Mux23~0_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X53_Y69_N16
\Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\ALUOp[2]~input_o\ & (((\Mux9~7_combout\)))) # (!\ALUOp[2]~input_o\ & ((\ALUOp[3]~input_o\ & ((\Mux9~7_combout\))) # (!\ALUOp[3]~input_o\ & (\Mux9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[2]~input_o\,
	datab => \Mux9~8_combout\,
	datac => \ALUOp[3]~input_o\,
	datad => \Mux9~7_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X53_Y69_N8
\reg_out[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[9]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[9]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[9]$latch~combout\,
	datac => \Mux9~9_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[9]$latch~combout\);

-- Location: LCCOMB_X48_Y71_N26
\reg_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~8_combout\ = \reg_in2[10]~input_o\ $ (\reg_in1[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in2[10]~input_o\,
	datac => \reg_in1[10]~input_o\,
	combout => \reg_out~8_combout\);

-- Location: LCCOMB_X48_Y71_N0
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\ALUOp[0]~input_o\ & (!\ALUOp[1]~input_o\ & ((\reg_in1[10]~input_o\) # (\reg_in2[10]~input_o\)))) # (!\ALUOp[0]~input_o\ & ((\ALUOp[1]~input_o\) # ((\reg_in1[10]~input_o\ & \reg_in2[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[10]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \reg_in2[10]~input_o\,
	datad => \ALUOp[1]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X46_Y70_N16
\ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (\shamt[1]~input_o\ & (\reg_in1[8]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[8]~input_o\,
	datab => \reg_in1[10]~input_o\,
	datac => \shamt[1]~input_o\,
	combout => \ShiftLeft0~39_combout\);

-- Location: LCCOMB_X46_Y68_N16
\ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = (\shamt[0]~input_o\ & ((\ShiftLeft0~35_combout\))) # (!\shamt[0]~input_o\ & (\ShiftLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~39_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftLeft0~35_combout\,
	combout => \ShiftLeft0~40_combout\);

-- Location: LCCOMB_X46_Y68_N22
\ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = (\shamt[2]~input_o\ & (\ShiftLeft0~24_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[2]~input_o\,
	datac => \ShiftLeft0~24_combout\,
	datad => \ShiftLeft0~40_combout\,
	combout => \ShiftLeft0~41_combout\);

-- Location: LCCOMB_X46_Y68_N20
\ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & ((\ShiftLeft0~12_combout\)))) # (!\shamt[3]~input_o\ & (((\ShiftLeft0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \shamt[2]~input_o\,
	datac => \ShiftLeft0~41_combout\,
	datad => \ShiftLeft0~12_combout\,
	combout => \ShiftLeft0~42_combout\);

-- Location: LCCOMB_X48_Y71_N2
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~4_combout\ & ((\reg_out~8_combout\) # ((!\Mux2~4_combout\)))) # (!\Mux10~4_combout\ & (((\Mux2~4_combout\ & \ShiftLeft0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out~8_combout\,
	datab => \Mux10~4_combout\,
	datac => \Mux2~4_combout\,
	datad => \ShiftLeft0~42_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X53_Y71_N2
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux23~0_combout\ & (\ShiftRight0~63_combout\ & ((!\Mux15~4_combout\)))) # (!\Mux23~0_combout\ & (((\Mux10~5_combout\) # (\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~63_combout\,
	datab => \Mux23~0_combout\,
	datac => \Mux10~5_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X50_Y68_N30
\ShiftRight0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~89_combout\ = (\ShiftRight0~50_combout\ & !\shamt[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftRight0~50_combout\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftRight0~89_combout\);

-- Location: LCCOMB_X53_Y71_N24
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux10~6_combout\ & (((\ShiftRight0~89_combout\) # (!\Mux15~4_combout\)))) # (!\Mux10~6_combout\ & (\ShiftRight0~55_combout\ & ((\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~55_combout\,
	datab => \Mux10~6_combout\,
	datac => \ShiftRight0~89_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X48_Y71_N4
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \reg_in2[10]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[10]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X49_Y71_N6
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\reg_in1[10]~input_o\ & ((\Add0~32_combout\ & (\Add0~31\ & VCC)) # (!\Add0~32_combout\ & (!\Add0~31\)))) # (!\reg_in1[10]~input_o\ & ((\Add0~32_combout\ & (!\Add0~31\)) # (!\Add0~32_combout\ & ((\Add0~31\) # (GND)))))
-- \Add0~34\ = CARRY((\reg_in1[10]~input_o\ & (!\Add0~32_combout\ & !\Add0~31\)) # (!\reg_in1[10]~input_o\ & ((!\Add0~31\) # (!\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[10]~input_o\,
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X52_Y71_N14
\Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\ALUOp[1]~input_o\ & (((\ALUOp[0]~input_o\ & !\reg_in1[10]~input_o\)))) # (!\ALUOp[1]~input_o\ & (\Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \reg_in1[10]~input_o\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X52_Y71_N16
\Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\ALUOp[2]~input_o\ & (\Mux10~7_combout\)) # (!\ALUOp[2]~input_o\ & ((\ALUOp[3]~input_o\ & (\Mux10~7_combout\)) # (!\ALUOp[3]~input_o\ & ((\Mux10~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[2]~input_o\,
	datab => \Mux10~7_combout\,
	datac => \Mux10~8_combout\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X52_Y71_N10
\reg_out[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[10]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[10]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux10~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[10]$latch~combout\,
	datac => \Mux10~9_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[10]$latch~combout\);

-- Location: LCCOMB_X53_Y71_N12
\ShiftRight0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~90_combout\ = (!\shamt[3]~input_o\ & ((\ShiftRight0~69_combout\) # ((\ShiftRight0~84_combout\ & !\shamt[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftRight0~84_combout\,
	datac => \ShiftRight0~69_combout\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftRight0~90_combout\);

-- Location: LCCOMB_X46_Y70_N6
\ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[9]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[11]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[9]~input_o\,
	combout => \ShiftLeft0~43_combout\);

-- Location: LCCOMB_X46_Y68_N30
\ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = (\shamt[0]~input_o\ & (\ShiftLeft0~39_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftLeft0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \ShiftLeft0~39_combout\,
	datac => \ShiftLeft0~43_combout\,
	combout => \ShiftLeft0~44_combout\);

-- Location: LCCOMB_X49_Y67_N14
\ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = (\shamt[2]~input_o\ & ((\ShiftLeft0~29_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \ShiftLeft0~44_combout\,
	datad => \ShiftLeft0~29_combout\,
	combout => \ShiftLeft0~45_combout\);

-- Location: LCCOMB_X49_Y67_N24
\ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = (\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & (\ShiftLeft0~27_combout\))) # (!\shamt[3]~input_o\ & (((\ShiftLeft0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftLeft0~27_combout\,
	datac => \ShiftLeft0~45_combout\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftLeft0~46_combout\);

-- Location: LCCOMB_X53_Y71_N16
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in2[11]~input_o\ & ((\reg_in1[11]~input_o\) # (\ALUOp[0]~input_o\))) # (!\reg_in2[11]~input_o\ & (\reg_in1[11]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[11]~input_o\,
	datab => \reg_in1[11]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X53_Y71_N10
\reg_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~9_combout\ = \reg_in2[11]~input_o\ $ (\reg_in1[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[11]~input_o\,
	datad => \reg_in1[11]~input_o\,
	combout => \reg_out~9_combout\);

-- Location: LCCOMB_X53_Y71_N14
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux2~4_combout\ & ((\Mux11~4_combout\ & ((\reg_out~9_combout\))) # (!\Mux11~4_combout\ & (\ShiftLeft0~46_combout\)))) # (!\Mux2~4_combout\ & (((\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \ShiftLeft0~46_combout\,
	datac => \Mux11~4_combout\,
	datad => \reg_out~9_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X47_Y68_N10
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux15~4_combout\ & ((\ShiftRight0~66_combout\) # ((!\Mux23~0_combout\)))) # (!\Mux15~4_combout\ & (((\Mux23~0_combout\ & \ShiftRight0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~66_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux23~0_combout\,
	datad => \ShiftRight0~73_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X53_Y71_N18
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux23~0_combout\ & (((\Mux11~6_combout\)))) # (!\Mux23~0_combout\ & ((\Mux11~6_combout\ & (\ShiftRight0~90_combout\)) # (!\Mux11~6_combout\ & ((\Mux11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~90_combout\,
	datab => \Mux23~0_combout\,
	datac => \Mux11~5_combout\,
	datad => \Mux11~6_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X50_Y71_N8
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUOp[0]~input_o\,
	datad => \reg_in2[11]~input_o\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X49_Y71_N8
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\Add0~35_combout\ $ (\reg_in1[11]~input_o\ $ (!\Add0~34\)))) # (GND)
-- \Add0~37\ = CARRY((\Add0~35_combout\ & ((\reg_in1[11]~input_o\) # (!\Add0~34\))) # (!\Add0~35_combout\ & (\reg_in1[11]~input_o\ & !\Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \reg_in1[11]~input_o\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X53_Y71_N28
\Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\ALUOp[1]~input_o\ & (\ALUOp[0]~input_o\ & ((!\reg_in1[11]~input_o\)))) # (!\ALUOp[1]~input_o\ & (((\Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \Add0~36_combout\,
	datad => \reg_in1[11]~input_o\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X53_Y71_N6
\Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\ALUOp[2]~input_o\ & (((\Mux11~7_combout\)))) # (!\ALUOp[2]~input_o\ & ((\ALUOp[3]~input_o\ & (\Mux11~7_combout\)) # (!\ALUOp[3]~input_o\ & ((\Mux11~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[2]~input_o\,
	datab => \ALUOp[3]~input_o\,
	datac => \Mux11~7_combout\,
	datad => \Mux11~8_combout\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X53_Y71_N4
\reg_out[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[11]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & ((\reg_out[11]$latch~combout\))) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & (\Mux11~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~9_combout\,
	datac => \reg_out[11]$latch~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[11]$latch~combout\);

-- Location: LCCOMB_X50_Y71_N14
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUOp[0]~input_o\,
	datad => \reg_in2[12]~input_o\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X49_Y71_N10
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38_combout\ & ((\reg_in1[12]~input_o\ & (\Add0~37\ & VCC)) # (!\reg_in1[12]~input_o\ & (!\Add0~37\)))) # (!\Add0~38_combout\ & ((\reg_in1[12]~input_o\ & (!\Add0~37\)) # (!\reg_in1[12]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~40\ = CARRY((\Add0~38_combout\ & (!\reg_in1[12]~input_o\ & !\Add0~37\)) # (!\Add0~38_combout\ & ((!\Add0~37\) # (!\reg_in1[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \reg_in1[12]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X50_Y70_N4
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\ALUOp[1]~input_o\ & (!\reg_in1[12]~input_o\ & ((\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & (((\Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[12]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \Add0~39_combout\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X53_Y70_N8
\ShiftRight0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~91_combout\ = (\ShiftLeft0~10_combout\ & ((\ShiftRight0~4_combout\) # ((\ShiftRight0~5_combout\ & \shamt[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \ShiftRight0~4_combout\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftLeft0~10_combout\,
	combout => \ShiftRight0~91_combout\);

-- Location: LCCOMB_X49_Y69_N22
\ShiftLeft0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = (!\shamt[2]~input_o\ & ((\ShiftLeft0~16_combout\) # ((!\shamt[0]~input_o\ & \ShiftLeft0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \ShiftLeft0~16_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftLeft0~17_combout\,
	combout => \ShiftLeft0~50_combout\);

-- Location: LCCOMB_X45_Y72_N10
\ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = (\shamt[1]~input_o\ & (\reg_in1[10]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[10]~input_o\,
	datac => \reg_in1[12]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~47_combout\);

-- Location: LCCOMB_X45_Y71_N16
\ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = (\shamt[0]~input_o\ & (\ShiftLeft0~43_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftLeft0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datac => \ShiftLeft0~43_combout\,
	datad => \ShiftLeft0~47_combout\,
	combout => \ShiftLeft0~48_combout\);

-- Location: LCCOMB_X47_Y69_N18
\ShiftLeft0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = (\shamt[2]~input_o\ & ((\ShiftLeft0~32_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~48_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftLeft0~32_combout\,
	combout => \ShiftLeft0~49_combout\);

-- Location: LCCOMB_X49_Y69_N20
\ShiftLeft0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = (\shamt[3]~input_o\ & ((\ShiftLeft0~15_combout\) # ((\ShiftLeft0~50_combout\)))) # (!\shamt[3]~input_o\ & (((\ShiftLeft0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftLeft0~15_combout\,
	datac => \ShiftLeft0~50_combout\,
	datad => \ShiftLeft0~49_combout\,
	combout => \ShiftLeft0~51_combout\);

-- Location: LCCOMB_X50_Y70_N14
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in1[12]~input_o\ & ((\reg_in2[12]~input_o\) # (\ALUOp[0]~input_o\))) # (!\reg_in1[12]~input_o\ & (\reg_in2[12]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[12]~input_o\,
	datab => \reg_in2[12]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X50_Y70_N8
\reg_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~10_combout\ = \reg_in1[12]~input_o\ $ (\reg_in2[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in1[12]~input_o\,
	datad => \reg_in2[12]~input_o\,
	combout => \reg_out~10_combout\);

-- Location: LCCOMB_X50_Y70_N16
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~4_combout\ & (((\reg_out~10_combout\) # (!\Mux2~4_combout\)))) # (!\Mux12~4_combout\ & (\ShiftLeft0~51_combout\ & ((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~51_combout\,
	datab => \Mux12~4_combout\,
	datac => \reg_out~10_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X50_Y70_N2
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux15~4_combout\ & (((!\Mux23~0_combout\)))) # (!\Mux15~4_combout\ & ((\Mux23~0_combout\ & (\ShiftRight0~74_combout\)) # (!\Mux23~0_combout\ & ((\Mux12~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux12~5_combout\,
	datad => \Mux23~0_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X50_Y70_N20
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux15~4_combout\ & ((\Mux12~6_combout\ & (\ShiftRight0~91_combout\)) # (!\Mux12~6_combout\ & ((\ShiftRight0~75_combout\))))) # (!\Mux15~4_combout\ & (((\Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~91_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux12~6_combout\,
	datad => \ShiftRight0~75_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X50_Y70_N18
\Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (\ALUOp[2]~input_o\ & (((\Mux12~7_combout\)))) # (!\ALUOp[2]~input_o\ & ((\ALUOp[3]~input_o\ & ((\Mux12~7_combout\))) # (!\ALUOp[3]~input_o\ & (\Mux12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~8_combout\,
	datab => \Mux12~7_combout\,
	datac => \ALUOp[2]~input_o\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X50_Y70_N26
\reg_out[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[12]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[12]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux12~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[12]$latch~combout\,
	datac => \Mux12~9_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[12]$latch~combout\);

-- Location: LCCOMB_X45_Y71_N20
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux15~4_combout\ & ((\ShiftRight0~78_combout\) # ((!\Mux23~0_combout\)))) # (!\Mux15~4_combout\ & (((\ShiftRight0~77_combout\ & \Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~78_combout\,
	datab => \Mux15~4_combout\,
	datac => \ShiftRight0~77_combout\,
	datad => \Mux23~0_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X45_Y71_N22
\reg_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~11_combout\ = \reg_in2[13]~input_o\ $ (\reg_in1[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[13]~input_o\,
	datad => \reg_in1[13]~input_o\,
	combout => \reg_out~11_combout\);

-- Location: LCCOMB_X45_Y71_N0
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in1[13]~input_o\ & ((\reg_in2[13]~input_o\) # (\ALUOp[0]~input_o\))) # (!\reg_in1[13]~input_o\ & (\reg_in2[13]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \reg_in1[13]~input_o\,
	datac => \reg_in2[13]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X46_Y69_N26
\ShiftLeft0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = (\shamt[2]~input_o\ & (\ShiftLeft0~8_combout\ & ((!\shamt[1]~input_o\)))) # (!\shamt[2]~input_o\ & (((\ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~52_combout\);

-- Location: LCCOMB_X45_Y72_N0
\ShiftLeft0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = (\shamt[1]~input_o\ & (\reg_in1[11]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[11]~input_o\,
	datac => \reg_in1[13]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~53_combout\);

-- Location: LCCOMB_X45_Y72_N22
\ShiftLeft0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = (\shamt[0]~input_o\ & ((\ShiftLeft0~47_combout\))) # (!\shamt[0]~input_o\ & (\ShiftLeft0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~53_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftLeft0~47_combout\,
	combout => \ShiftLeft0~54_combout\);

-- Location: LCCOMB_X46_Y71_N16
\ShiftLeft0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = (\shamt[2]~input_o\ & ((\ShiftLeft0~36_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~54_combout\,
	datab => \shamt[2]~input_o\,
	datad => \ShiftLeft0~36_combout\,
	combout => \ShiftLeft0~55_combout\);

-- Location: LCCOMB_X47_Y68_N0
\ShiftLeft0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = (\shamt[3]~input_o\ & (\ShiftLeft0~52_combout\)) # (!\shamt[3]~input_o\ & ((\ShiftLeft0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[3]~input_o\,
	datac => \ShiftLeft0~52_combout\,
	datad => \ShiftLeft0~55_combout\,
	combout => \ShiftLeft0~56_combout\);

-- Location: LCCOMB_X45_Y71_N14
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux13~4_combout\ & ((\reg_out~11_combout\) # ((!\Mux2~4_combout\)))) # (!\Mux13~4_combout\ & (((\ShiftLeft0~56_combout\ & \Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out~11_combout\,
	datab => \Mux13~4_combout\,
	datac => \ShiftLeft0~56_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X45_Y71_N12
\ShiftRight0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~93_combout\ = (!\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & \ShiftRight0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftRight0~30_combout\,
	combout => \ShiftRight0~93_combout\);

-- Location: LCCOMB_X45_Y71_N18
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux23~0_combout\ & (\Mux13~6_combout\)) # (!\Mux23~0_combout\ & ((\Mux13~6_combout\ & ((\ShiftRight0~93_combout\))) # (!\Mux13~6_combout\ & (\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \Mux13~6_combout\,
	datac => \Mux13~5_combout\,
	datad => \ShiftRight0~93_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X50_Y71_N20
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datad => \reg_in2[13]~input_o\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X49_Y71_N12
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = ((\reg_in1[13]~input_o\ $ (\Add0~41_combout\ $ (!\Add0~40\)))) # (GND)
-- \Add0~43\ = CARRY((\reg_in1[13]~input_o\ & ((\Add0~41_combout\) # (!\Add0~40\))) # (!\reg_in1[13]~input_o\ & (\Add0~41_combout\ & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[13]~input_o\,
	datab => \Add0~41_combout\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X45_Y71_N10
\Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\ALUOp[1]~input_o\ & (!\reg_in1[13]~input_o\ & ((\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & (((\Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \reg_in1[13]~input_o\,
	datac => \Add0~42_combout\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X45_Y71_N2
\Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\ALUOp[3]~input_o\ & (\Mux13~7_combout\)) # (!\ALUOp[3]~input_o\ & ((\ALUOp[2]~input_o\ & (\Mux13~7_combout\)) # (!\ALUOp[2]~input_o\ & ((\Mux13~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~7_combout\,
	datab => \Mux13~8_combout\,
	datac => \ALUOp[3]~input_o\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X45_Y71_N6
\reg_out[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[13]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[13]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux13~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[13]$latch~combout\,
	datac => \Mux13~9_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[13]$latch~combout\);

-- Location: LCCOMB_X53_Y69_N30
\ShiftRight0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~94_combout\ = (\ShiftRight0~5_combout\ & (!\shamt[1]~input_o\ & (!\shamt[2]~input_o\ & !\shamt[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \shamt[1]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \shamt[3]~input_o\,
	combout => \ShiftRight0~94_combout\);

-- Location: LCCOMB_X53_Y71_N26
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in2[14]~input_o\ & ((\ALUOp[0]~input_o\) # (\reg_in1[14]~input_o\))) # (!\reg_in2[14]~input_o\ & (\ALUOp[0]~input_o\ & \reg_in1[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[14]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \reg_in1[14]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X53_Y71_N0
\reg_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~12_combout\ = \reg_in1[14]~input_o\ $ (\reg_in2[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[14]~input_o\,
	datad => \reg_in2[14]~input_o\,
	combout => \reg_out~12_combout\);

-- Location: LCCOMB_X46_Y68_N4
\ShiftLeft0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = (\shamt[3]~input_o\ & ((\shamt[2]~input_o\ & ((\ShiftLeft0~12_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \shamt[2]~input_o\,
	datac => \ShiftLeft0~24_combout\,
	datad => \ShiftLeft0~12_combout\,
	combout => \ShiftLeft0~57_combout\);

-- Location: LCCOMB_X45_Y72_N20
\ShiftLeft0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = (\shamt[1]~input_o\ & (\reg_in1[12]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[12]~input_o\,
	datac => \reg_in1[14]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~58_combout\);

-- Location: LCCOMB_X45_Y72_N2
\ShiftLeft0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = (\shamt[0]~input_o\ & ((\ShiftLeft0~53_combout\))) # (!\shamt[0]~input_o\ & (\ShiftLeft0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~58_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftLeft0~53_combout\,
	combout => \ShiftLeft0~59_combout\);

-- Location: LCCOMB_X46_Y68_N6
\ShiftLeft0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = (\shamt[2]~input_o\ & ((\ShiftLeft0~40_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~59_combout\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftLeft0~40_combout\,
	combout => \ShiftLeft0~60_combout\);

-- Location: LCCOMB_X46_Y68_N24
\ShiftLeft0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = (\ShiftLeft0~57_combout\) # ((!\shamt[3]~input_o\ & \ShiftLeft0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~57_combout\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftLeft0~60_combout\,
	combout => \ShiftLeft0~61_combout\);

-- Location: LCCOMB_X53_Y71_N8
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~4_combout\ & ((\reg_out~12_combout\) # ((!\Mux2~4_combout\)))) # (!\Mux14~4_combout\ & (((\ShiftLeft0~61_combout\ & \Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \reg_out~12_combout\,
	datac => \ShiftLeft0~61_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X50_Y71_N28
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux23~0_combout\ & (((!\Mux15~4_combout\ & \ShiftRight0~80_combout\)))) # (!\Mux23~0_combout\ & ((\Mux14~5_combout\) # ((\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \Mux23~0_combout\,
	datac => \Mux15~4_combout\,
	datad => \ShiftRight0~80_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X50_Y71_N18
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\Mux14~6_combout\ & ((\ShiftRight0~94_combout\) # ((!\Mux15~4_combout\)))) # (!\Mux14~6_combout\ & (((\Mux15~4_combout\ & \ShiftRight0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~94_combout\,
	datab => \Mux14~6_combout\,
	datac => \Mux15~4_combout\,
	datad => \ShiftRight0~81_combout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X50_Y71_N2
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datac => \reg_in2[14]~input_o\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X49_Y71_N14
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Add0~44_combout\ & ((\reg_in1[14]~input_o\ & (\Add0~43\ & VCC)) # (!\reg_in1[14]~input_o\ & (!\Add0~43\)))) # (!\Add0~44_combout\ & ((\reg_in1[14]~input_o\ & (!\Add0~43\)) # (!\reg_in1[14]~input_o\ & ((\Add0~43\) # (GND)))))
-- \Add0~46\ = CARRY((\Add0~44_combout\ & (!\reg_in1[14]~input_o\ & !\Add0~43\)) # (!\Add0~44_combout\ & ((!\Add0~43\) # (!\reg_in1[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \reg_in1[14]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X50_Y71_N6
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\ALUOp[1]~input_o\ & (!\reg_in1[14]~input_o\ & ((\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & (((\Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \reg_in1[14]~input_o\,
	datac => \Add0~45_combout\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X50_Y71_N24
\Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\ALUOp[3]~input_o\ & (\Mux14~7_combout\)) # (!\ALUOp[3]~input_o\ & ((\ALUOp[2]~input_o\ & (\Mux14~7_combout\)) # (!\ALUOp[2]~input_o\ & ((\Mux14~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \Mux14~7_combout\,
	datac => \Mux14~8_combout\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X50_Y71_N30
\reg_out[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[14]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & ((\reg_out[14]$latch~combout\))) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & (\Mux14~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~9_combout\,
	datac => \reg_out[14]$latch~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[14]$latch~combout\);

-- Location: LCCOMB_X50_Y71_N12
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datad => \reg_in2[15]~input_o\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X49_Y71_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\reg_in1[15]~input_o\ $ (\Add0~47_combout\ $ (!\Add0~46\)))) # (GND)
-- \Add0~49\ = CARRY((\reg_in1[15]~input_o\ & ((\Add0~47_combout\) # (!\Add0~46\))) # (!\reg_in1[15]~input_o\ & (\Add0~47_combout\ & !\Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[15]~input_o\,
	datab => \Add0~47_combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X52_Y71_N26
\Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\ALUOp[1]~input_o\ & (!\reg_in1[15]~input_o\ & (\ALUOp[0]~input_o\))) # (!\ALUOp[1]~input_o\ & (((\Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[15]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \Add0~48_combout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X47_Y68_N8
\ShiftRight0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~92_combout\ = (\reg_in1[31]~input_o\ & (!\shamt[3]~input_o\ & (\ShiftLeft0~6_combout\ & !\shamt[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[31]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \ShiftLeft0~6_combout\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftRight0~92_combout\);

-- Location: LCCOMB_X47_Y68_N30
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux15~4_combout\ & (((\ShiftRight0~85_combout\) # (!\Mux23~0_combout\)))) # (!\Mux15~4_combout\ & (\ShiftRight0~83_combout\ & (\Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~83_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux23~0_combout\,
	datad => \ShiftRight0~85_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X52_Y71_N6
\reg_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~13_combout\ = \reg_in1[15]~input_o\ $ (\reg_in2[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in1[15]~input_o\,
	datad => \reg_in2[15]~input_o\,
	combout => \reg_out~13_combout\);

-- Location: LCCOMB_X52_Y71_N0
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\ALUOp[1]~input_o\ & (((!\ALUOp[0]~input_o\)))) # (!\ALUOp[1]~input_o\ & ((\reg_in1[15]~input_o\ & ((\reg_in2[15]~input_o\) # (\ALUOp[0]~input_o\))) # (!\reg_in1[15]~input_o\ & (\reg_in2[15]~input_o\ & \ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[15]~input_o\,
	datab => \reg_in2[15]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X49_Y67_N6
\ShiftLeft0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = (\shamt[3]~input_o\ & ((\shamt[2]~input_o\ & (\ShiftLeft0~27_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftLeft0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftLeft0~27_combout\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftLeft0~29_combout\,
	combout => \ShiftLeft0~62_combout\);

-- Location: LCCOMB_X45_Y72_N28
\ShiftLeft0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[13]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[15]~input_o\,
	datac => \reg_in1[13]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~63_combout\);

-- Location: LCCOMB_X45_Y72_N6
\ShiftLeft0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = (\shamt[0]~input_o\ & (\ShiftLeft0~58_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftLeft0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~58_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftLeft0~63_combout\,
	combout => \ShiftLeft0~64_combout\);

-- Location: LCCOMB_X49_Y67_N28
\ShiftLeft0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = (\shamt[2]~input_o\ & (\ShiftLeft0~44_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftLeft0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \ShiftLeft0~44_combout\,
	datad => \ShiftLeft0~64_combout\,
	combout => \ShiftLeft0~65_combout\);

-- Location: LCCOMB_X49_Y67_N2
\ShiftLeft0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = (\ShiftLeft0~62_combout\) # ((!\shamt[3]~input_o\ & \ShiftLeft0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~62_combout\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftLeft0~65_combout\,
	combout => \ShiftLeft0~66_combout\);

-- Location: LCCOMB_X52_Y71_N22
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux2~4_combout\ & ((\Mux15~5_combout\ & (\reg_out~13_combout\)) # (!\Mux15~5_combout\ & ((\ShiftLeft0~66_combout\))))) # (!\Mux2~4_combout\ & (((\Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out~13_combout\,
	datab => \Mux2~4_combout\,
	datac => \Mux15~5_combout\,
	datad => \ShiftLeft0~66_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X52_Y71_N20
\Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\Mux15~7_combout\ & ((\ShiftRight0~92_combout\) # ((\Mux23~0_combout\)))) # (!\Mux15~7_combout\ & (((\Mux15~6_combout\ & !\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~92_combout\,
	datab => \Mux15~7_combout\,
	datac => \Mux15~6_combout\,
	datad => \Mux23~0_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X52_Y71_N4
\Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~10_combout\ = (\ALUOp[2]~input_o\ & (((\Mux15~8_combout\)))) # (!\ALUOp[2]~input_o\ & ((\ALUOp[3]~input_o\ & ((\Mux15~8_combout\))) # (!\ALUOp[3]~input_o\ & (\Mux15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~9_combout\,
	datab => \Mux15~8_combout\,
	datac => \ALUOp[2]~input_o\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux15~10_combout\);

-- Location: LCCOMB_X52_Y71_N28
\reg_out[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[15]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[15]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux15~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[15]$latch~combout\,
	datac => \Mux15~10_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[15]$latch~combout\);

-- Location: LCCOMB_X49_Y68_N14
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (!\ALUOp[3]~input_o\ & (\ALUOp[0]~input_o\ & (\ALUOp[1]~input_o\ & !\ALUOp[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X47_Y71_N16
\Mux16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~11_combout\ = (\shamt[4]~input_o\ & (((\ShiftLeft0~7_combout\)))) # (!\shamt[4]~input_o\ & ((\ALUOp[0]~input_o\ & (\ShiftLeft0~33_combout\)) # (!\ALUOp[0]~input_o\ & ((\ShiftLeft0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~33_combout\,
	datab => \shamt[4]~input_o\,
	datac => \ShiftLeft0~7_combout\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux16~11_combout\);

-- Location: LCCOMB_X49_Y67_N16
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\ALUOp[0]~input_o\ & ((\shamt[3]~input_o\) # (\shamt[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[3]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \shamt[4]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X49_Y69_N6
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\shamt[4]~input_o\) # (!\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datab => \ALUOp[0]~input_o\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X45_Y72_N12
\ShiftLeft0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[14]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[16]~input_o\,
	datac => \reg_in1[14]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~67_combout\);

-- Location: LCCOMB_X45_Y72_N30
\ShiftLeft0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = (\shamt[0]~input_o\ & (\ShiftLeft0~63_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftLeft0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~63_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftLeft0~67_combout\,
	combout => \ShiftLeft0~68_combout\);

-- Location: LCCOMB_X47_Y71_N26
\ShiftLeft0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = (\shamt[2]~input_o\ & ((\ShiftLeft0~48_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \ShiftLeft0~68_combout\,
	datad => \ShiftLeft0~48_combout\,
	combout => \ShiftLeft0~69_combout\);

-- Location: LCCOMB_X47_Y71_N28
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux23~3_combout\ & (\reg_in2[16]~input_o\ $ (((\reg_in1[16]~input_o\))))) # (!\Mux23~3_combout\ & (((\ShiftLeft0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[16]~input_o\,
	datab => \Mux23~3_combout\,
	datac => \ShiftLeft0~69_combout\,
	datad => \reg_in1[16]~input_o\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X47_Y71_N10
\Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux23~2_combout\ & (\Mux16~11_combout\)) # (!\Mux23~2_combout\ & ((\Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~11_combout\,
	datac => \Mux23~2_combout\,
	datad => \Mux16~5_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X50_Y71_N22
\Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (!\ALUOp[1]~input_o\ & \ALUOp[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X48_Y71_N28
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUOp[0]~input_o\,
	datad => \reg_in2[16]~input_o\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X49_Y71_N18
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\Add0~50_combout\ & ((\reg_in1[16]~input_o\ & (\Add0~49\ & VCC)) # (!\reg_in1[16]~input_o\ & (!\Add0~49\)))) # (!\Add0~50_combout\ & ((\reg_in1[16]~input_o\ & (!\Add0~49\)) # (!\reg_in1[16]~input_o\ & ((\Add0~49\) # (GND)))))
-- \Add0~52\ = CARRY((\Add0~50_combout\ & (!\reg_in1[16]~input_o\ & !\Add0~49\)) # (!\Add0~50_combout\ & ((!\Add0~49\) # (!\reg_in1[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \reg_in1[16]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X49_Y68_N4
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\ALUOp[2]~input_o\ & ((\ALUOp[1]~input_o\) # (\ALUOp[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X47_Y71_N8
\Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux29~7_combout\ & (((\Mux23~1_combout\)))) # (!\Mux29~7_combout\ & ((\Mux23~1_combout\ & (\Mux16~6_combout\)) # (!\Mux23~1_combout\ & ((\Add0~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~6_combout\,
	datab => \Mux29~7_combout\,
	datac => \Add0~51_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X47_Y71_N22
\Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\reg_in2[16]~input_o\ & ((\Mux16~7_combout\) # ((\reg_in1[16]~input_o\ & \Mux29~7_combout\)))) # (!\reg_in2[16]~input_o\ & (\Mux16~7_combout\ & ((\reg_in1[16]~input_o\) # (!\Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[16]~input_o\,
	datab => \reg_in1[16]~input_o\,
	datac => \Mux16~7_combout\,
	datad => \Mux29~7_combout\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X47_Y71_N4
\Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\Mux16~4_combout\ & (((\Mux16~8_combout\ & \Mux16~2_combout\)) # (!\reg_in1[16]~input_o\))) # (!\Mux16~4_combout\ & (((\Mux16~8_combout\ & \Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \reg_in1[16]~input_o\,
	datac => \Mux16~8_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X48_Y72_N0
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux23~0_combout\ & ((\shamt[3]~input_o\ & ((\ShiftRight0~10_combout\))) # (!\shamt[3]~input_o\ & (\ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[3]~input_o\,
	datab => \ShiftRight0~28_combout\,
	datac => \Mux23~0_combout\,
	datad => \ShiftRight0~10_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X47_Y71_N14
\Mux16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~10_combout\ = (\Mux16~9_combout\) # (\Mux16~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux16~9_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~10_combout\);

-- Location: LCCOMB_X47_Y71_N6
\reg_out[16]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[16]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[16]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[16]$latch~combout\,
	datac => \Mux16~10_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[16]$latch~combout\);

-- Location: LCCOMB_X48_Y69_N24
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\reg_in2[17]~input_o\ & ((\Mux23~1_combout\) # ((\reg_in1[17]~input_o\ & \Mux29~7_combout\)))) # (!\reg_in2[17]~input_o\ & (\Mux23~1_combout\ & ((\reg_in1[17]~input_o\) # (!\Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[17]~input_o\,
	datab => \Mux23~1_combout\,
	datac => \reg_in1[17]~input_o\,
	datad => \Mux29~7_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X48_Y69_N10
\reg_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~14_combout\ = \reg_in1[17]~input_o\ $ (\reg_in2[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in1[17]~input_o\,
	datad => \reg_in2[17]~input_o\,
	combout => \reg_out~14_combout\);

-- Location: LCCOMB_X43_Y72_N8
\ShiftLeft0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = (\shamt[1]~input_o\ & (\reg_in1[15]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[15]~input_o\,
	datac => \reg_in1[17]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~70_combout\);

-- Location: LCCOMB_X42_Y72_N20
\ShiftLeft0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = (\shamt[0]~input_o\ & ((\ShiftLeft0~67_combout\))) # (!\shamt[0]~input_o\ & (\ShiftLeft0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[0]~input_o\,
	datac => \ShiftLeft0~70_combout\,
	datad => \ShiftLeft0~67_combout\,
	combout => \ShiftLeft0~71_combout\);

-- Location: LCCOMB_X46_Y71_N6
\ShiftLeft0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~72_combout\ = (\shamt[2]~input_o\ & (\ShiftLeft0~54_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftLeft0~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~54_combout\,
	datab => \shamt[2]~input_o\,
	datad => \ShiftLeft0~71_combout\,
	combout => \ShiftLeft0~72_combout\);

-- Location: LCCOMB_X48_Y69_N0
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux23~3_combout\ & (\Mux23~2_combout\)) # (!\Mux23~3_combout\ & ((\Mux23~2_combout\ & ((\ShiftLeft0~37_combout\))) # (!\Mux23~2_combout\ & (\ShiftLeft0~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \Mux23~2_combout\,
	datac => \ShiftLeft0~72_combout\,
	datad => \ShiftLeft0~37_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X46_Y69_N2
\ShiftLeft0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~105_combout\ = (!\shamt[1]~input_o\ & (!\shamt[3]~input_o\ & (!\shamt[2]~input_o\ & \ShiftLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \shamt[3]~input_o\,
	datac => \shamt[2]~input_o\,
	datad => \ShiftLeft0~8_combout\,
	combout => \ShiftLeft0~105_combout\);

-- Location: LCCOMB_X48_Y69_N2
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux17~2_combout\ & (((\ShiftLeft0~105_combout\) # (!\Mux23~3_combout\)))) # (!\Mux17~2_combout\ & (\reg_out~14_combout\ & ((\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out~14_combout\,
	datab => \Mux17~2_combout\,
	datac => \ShiftLeft0~105_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X50_Y71_N0
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datac => \reg_in2[17]~input_o\,
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X49_Y71_N20
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = ((\reg_in1[17]~input_o\ $ (\Add0~53_combout\ $ (!\Add0~52\)))) # (GND)
-- \Add0~55\ = CARRY((\reg_in1[17]~input_o\ & ((\Add0~53_combout\) # (!\Add0~52\))) # (!\reg_in1[17]~input_o\ & (\Add0~53_combout\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[17]~input_o\,
	datab => \Add0~53_combout\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X48_Y69_N4
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux29~7_combout\ & (\Mux17~1_combout\)) # (!\Mux29~7_combout\ & ((\Mux17~1_combout\ & (\Mux17~3_combout\)) # (!\Mux17~1_combout\ & ((\Add0~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~7_combout\,
	datab => \Mux17~1_combout\,
	datac => \Mux17~3_combout\,
	datad => \Add0~54_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X48_Y69_N22
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\reg_in1[17]~input_o\ & (\Mux16~2_combout\ & (\Mux17~4_combout\))) # (!\reg_in1[17]~input_o\ & ((\Mux16~4_combout\) # ((\Mux16~2_combout\ & \Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[17]~input_o\,
	datab => \Mux16~2_combout\,
	datac => \Mux17~4_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X45_Y69_N24
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux23~0_combout\ & ((\shamt[3]~input_o\ & ((\ShiftRight0~33_combout\))) # (!\shamt[3]~input_o\ & (\ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \ShiftRight0~47_combout\,
	datac => \ShiftRight0~33_combout\,
	datad => \shamt[3]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X48_Y69_N8
\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux17~5_combout\) # (\Mux17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux17~5_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X48_Y69_N20
\reg_out[17]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[17]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[17]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux17~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[17]$latch~combout\,
	datac => \Mux17~6_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[17]$latch~combout\);

-- Location: LCCOMB_X50_Y68_N10
\Mux18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~10_combout\ = (\shamt[4]~input_o\ & (((\ShiftLeft0~103_combout\)))) # (!\shamt[4]~input_o\ & ((\ALUOp[0]~input_o\ & (\ShiftLeft0~41_combout\)) # (!\ALUOp[0]~input_o\ & ((\ShiftLeft0~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datab => \ShiftLeft0~41_combout\,
	datac => \ShiftLeft0~103_combout\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux18~10_combout\);

-- Location: LCCOMB_X43_Y72_N22
\ShiftLeft0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~73_combout\ = (\shamt[1]~input_o\ & (\reg_in1[16]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[16]~input_o\,
	datac => \reg_in1[18]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~73_combout\);

-- Location: LCCOMB_X43_Y72_N16
\ShiftLeft0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~74_combout\ = (\shamt[0]~input_o\ & ((\ShiftLeft0~70_combout\))) # (!\shamt[0]~input_o\ & (\ShiftLeft0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~73_combout\,
	datab => \ShiftLeft0~70_combout\,
	datac => \shamt[0]~input_o\,
	combout => \ShiftLeft0~74_combout\);

-- Location: LCCOMB_X46_Y68_N18
\ShiftLeft0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~75_combout\ = (\shamt[2]~input_o\ & ((\ShiftLeft0~59_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~74_combout\,
	datab => \shamt[2]~input_o\,
	datac => \ShiftLeft0~59_combout\,
	combout => \ShiftLeft0~75_combout\);

-- Location: LCCOMB_X50_Y68_N24
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux23~3_combout\ & (\reg_in2[18]~input_o\ $ ((\reg_in1[18]~input_o\)))) # (!\Mux23~3_combout\ & (((\ShiftLeft0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[18]~input_o\,
	datab => \reg_in1[18]~input_o\,
	datac => \ShiftLeft0~75_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X50_Y68_N26
\Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux23~2_combout\ & (\Mux18~10_combout\)) # (!\Mux23~2_combout\ & ((\Mux18~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~10_combout\,
	datac => \Mux18~5_combout\,
	datad => \Mux23~2_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X48_Y71_N22
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[0]~input_o\,
	datad => \reg_in2[18]~input_o\,
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X49_Y71_N22
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\reg_in1[18]~input_o\ & ((\Add0~56_combout\ & (\Add0~55\ & VCC)) # (!\Add0~56_combout\ & (!\Add0~55\)))) # (!\reg_in1[18]~input_o\ & ((\Add0~56_combout\ & (!\Add0~55\)) # (!\Add0~56_combout\ & ((\Add0~55\) # (GND)))))
-- \Add0~58\ = CARRY((\reg_in1[18]~input_o\ & (!\Add0~56_combout\ & !\Add0~55\)) # (!\reg_in1[18]~input_o\ & ((!\Add0~55\) # (!\Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[18]~input_o\,
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X50_Y68_N12
\Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (\Mux29~7_combout\ & (((\Mux23~1_combout\)))) # (!\Mux29~7_combout\ & ((\Mux23~1_combout\ & (\Mux18~6_combout\)) # (!\Mux23~1_combout\ & ((\Add0~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~7_combout\,
	datab => \Mux18~6_combout\,
	datac => \Mux23~1_combout\,
	datad => \Add0~57_combout\,
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X50_Y68_N6
\Mux18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~8_combout\ = (\Mux29~7_combout\ & ((\reg_in1[18]~input_o\ & ((\reg_in2[18]~input_o\) # (\Mux18~7_combout\))) # (!\reg_in1[18]~input_o\ & (\reg_in2[18]~input_o\ & \Mux18~7_combout\)))) # (!\Mux29~7_combout\ & (((\Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~7_combout\,
	datab => \reg_in1[18]~input_o\,
	datac => \reg_in2[18]~input_o\,
	datad => \Mux18~7_combout\,
	combout => \Mux18~8_combout\);

-- Location: LCCOMB_X50_Y68_N28
\Mux18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~9_combout\ = (\Mux16~4_combout\ & (((\Mux16~2_combout\ & \Mux18~8_combout\)) # (!\reg_in1[18]~input_o\))) # (!\Mux16~4_combout\ & (\Mux16~2_combout\ & ((\Mux18~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux16~2_combout\,
	datac => \reg_in1[18]~input_o\,
	datad => \Mux18~8_combout\,
	combout => \Mux18~9_combout\);

-- Location: LCCOMB_X50_Y68_N8
\Mux18~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~11_combout\ = (\Mux18~9_combout\) # ((!\shamt[4]~input_o\ & (\Mux18~4_combout\ & \ALUOp[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datab => \Mux18~4_combout\,
	datac => \ALUOp[3]~input_o\,
	datad => \Mux18~9_combout\,
	combout => \Mux18~11_combout\);

-- Location: LCCOMB_X50_Y68_N14
\reg_out[18]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[18]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[18]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux18~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[18]$latch~combout\,
	datac => \Mux18~11_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[18]$latch~combout\);

-- Location: LCCOMB_X50_Y69_N20
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\reg_in2[19]~input_o\ & ((\Mux23~1_combout\) # ((\reg_in1[19]~input_o\ & \Mux29~7_combout\)))) # (!\reg_in2[19]~input_o\ & (\Mux23~1_combout\ & ((\reg_in1[19]~input_o\) # (!\Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[19]~input_o\,
	datab => \Mux23~1_combout\,
	datac => \reg_in1[19]~input_o\,
	datad => \Mux29~7_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X43_Y72_N6
\ShiftLeft0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~76_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[17]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[19]~input_o\,
	datac => \reg_in1[17]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~76_combout\);

-- Location: LCCOMB_X43_Y72_N0
\ShiftLeft0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~77_combout\ = (\shamt[0]~input_o\ & (\ShiftLeft0~73_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftLeft0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datac => \ShiftLeft0~73_combout\,
	datad => \ShiftLeft0~76_combout\,
	combout => \ShiftLeft0~77_combout\);

-- Location: LCCOMB_X49_Y67_N18
\ShiftLeft0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~78_combout\ = (\shamt[2]~input_o\ & ((\ShiftLeft0~64_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \ShiftLeft0~77_combout\,
	datad => \ShiftLeft0~64_combout\,
	combout => \ShiftLeft0~78_combout\);

-- Location: LCCOMB_X49_Y67_N12
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux23~3_combout\ & (((\Mux23~2_combout\)))) # (!\Mux23~3_combout\ & ((\Mux23~2_combout\ & (\ShiftLeft0~45_combout\)) # (!\Mux23~2_combout\ & ((\ShiftLeft0~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \ShiftLeft0~45_combout\,
	datac => \Mux23~2_combout\,
	datad => \ShiftLeft0~78_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X50_Y69_N30
\reg_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out~15_combout\ = \reg_in1[19]~input_o\ $ (\reg_in2[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in1[19]~input_o\,
	datad => \reg_in2[19]~input_o\,
	combout => \reg_out~15_combout\);

-- Location: LCCOMB_X50_Y69_N12
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~4_combout\ & ((\ShiftLeft0~14_combout\) # ((!\Mux23~3_combout\)))) # (!\Mux19~4_combout\ & (((\reg_out~15_combout\ & \Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~4_combout\,
	datab => \ShiftLeft0~14_combout\,
	datac => \reg_out~15_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X50_Y71_N26
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = \reg_in2[19]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[19]~input_o\,
	datac => \ALUOp[0]~input_o\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X49_Y71_N24
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\Add0~59_combout\ $ (\reg_in1[19]~input_o\ $ (!\Add0~58\)))) # (GND)
-- \Add0~61\ = CARRY((\Add0~59_combout\ & ((\reg_in1[19]~input_o\) # (!\Add0~58\))) # (!\Add0~59_combout\ & (\reg_in1[19]~input_o\ & !\Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datab => \reg_in1[19]~input_o\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X50_Y69_N14
\Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux19~3_combout\ & ((\Mux29~7_combout\) # ((\Mux19~5_combout\)))) # (!\Mux19~3_combout\ & (!\Mux29~7_combout\ & ((\Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux29~7_combout\,
	datac => \Mux19~5_combout\,
	datad => \Add0~60_combout\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X50_Y69_N8
\Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\reg_in1[19]~input_o\ & (\Mux16~2_combout\ & (\Mux19~6_combout\))) # (!\reg_in1[19]~input_o\ & ((\Mux16~4_combout\) # ((\Mux16~2_combout\ & \Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[19]~input_o\,
	datab => \Mux16~2_combout\,
	datac => \Mux19~6_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X50_Y69_N22
\Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (\Mux19~7_combout\) # ((\ALUOp[3]~input_o\ & (!\shamt[4]~input_o\ & \Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \shamt[4]~input_o\,
	datac => \Mux19~7_combout\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~8_combout\);

-- Location: LCCOMB_X50_Y69_N26
\reg_out[19]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[19]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[19]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux19~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[19]$latch~combout\,
	datac => \Mux19~8_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[19]$latch~combout\);

-- Location: LCCOMB_X49_Y69_N18
\Mux20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~9_combout\ = (\shamt[4]~input_o\ & (((\ShiftLeft0~19_combout\)))) # (!\shamt[4]~input_o\ & ((\ALUOp[0]~input_o\ & (\ShiftLeft0~49_combout\)) # (!\ALUOp[0]~input_o\ & ((\ShiftLeft0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datab => \ShiftLeft0~49_combout\,
	datac => \ShiftLeft0~19_combout\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux20~9_combout\);

-- Location: LCCOMB_X43_Y72_N2
\ShiftLeft0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~79_combout\ = (\shamt[1]~input_o\ & (\reg_in1[18]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[18]~input_o\,
	datac => \reg_in1[20]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~79_combout\);

-- Location: LCCOMB_X43_Y72_N12
\ShiftLeft0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~80_combout\ = (\shamt[0]~input_o\ & (\ShiftLeft0~76_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftLeft0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~76_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftLeft0~79_combout\,
	combout => \ShiftLeft0~80_combout\);

-- Location: LCCOMB_X47_Y71_N24
\ShiftLeft0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~81_combout\ = (\shamt[2]~input_o\ & (\ShiftLeft0~68_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftLeft0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \ShiftLeft0~68_combout\,
	datad => \ShiftLeft0~80_combout\,
	combout => \ShiftLeft0~81_combout\);

-- Location: LCCOMB_X48_Y70_N16
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux23~3_combout\ & (\reg_in1[20]~input_o\ $ (((\reg_in2[20]~input_o\))))) # (!\Mux23~3_combout\ & (((\ShiftLeft0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[20]~input_o\,
	datab => \Mux23~3_combout\,
	datac => \ShiftLeft0~81_combout\,
	datad => \reg_in2[20]~input_o\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X48_Y70_N14
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux23~2_combout\ & (\Mux20~9_combout\)) # (!\Mux23~2_combout\ & ((\Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~9_combout\,
	datac => \Mux23~2_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X48_Y71_N8
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUOp[0]~input_o\,
	datac => \reg_in2[20]~input_o\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X49_Y71_N26
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\Add0~62_combout\ & ((\reg_in1[20]~input_o\ & (\Add0~61\ & VCC)) # (!\reg_in1[20]~input_o\ & (!\Add0~61\)))) # (!\Add0~62_combout\ & ((\reg_in1[20]~input_o\ & (!\Add0~61\)) # (!\reg_in1[20]~input_o\ & ((\Add0~61\) # (GND)))))
-- \Add0~64\ = CARRY((\Add0~62_combout\ & (!\reg_in1[20]~input_o\ & !\Add0~61\)) # (!\Add0~62_combout\ & ((!\Add0~61\) # (!\reg_in1[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \reg_in1[20]~input_o\,
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X48_Y70_N24
\Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\Mux23~1_combout\ & ((\Mux20~5_combout\) # ((\Mux29~7_combout\)))) # (!\Mux23~1_combout\ & (((\Add0~63_combout\ & !\Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~5_combout\,
	datab => \Mux23~1_combout\,
	datac => \Add0~63_combout\,
	datad => \Mux29~7_combout\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X48_Y70_N18
\Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\Mux29~7_combout\ & ((\reg_in2[20]~input_o\ & ((\reg_in1[20]~input_o\) # (\Mux20~6_combout\))) # (!\reg_in2[20]~input_o\ & (\reg_in1[20]~input_o\ & \Mux20~6_combout\)))) # (!\Mux29~7_combout\ & (((\Mux20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~7_combout\,
	datab => \reg_in2[20]~input_o\,
	datac => \reg_in1[20]~input_o\,
	datad => \Mux20~6_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X48_Y70_N20
\Mux20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = (\reg_in1[20]~input_o\ & (\Mux16~2_combout\ & ((\Mux20~7_combout\)))) # (!\reg_in1[20]~input_o\ & ((\Mux16~4_combout\) # ((\Mux16~2_combout\ & \Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[20]~input_o\,
	datab => \Mux16~2_combout\,
	datac => \Mux16~4_combout\,
	datad => \Mux20~7_combout\,
	combout => \Mux20~8_combout\);

-- Location: LCCOMB_X48_Y70_N12
\Mux20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~10_combout\ = (\Mux20~8_combout\) # ((\ShiftRight0~76_combout\ & (!\shamt[4]~input_o\ & \ALUOp[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~76_combout\,
	datab => \shamt[4]~input_o\,
	datac => \ALUOp[3]~input_o\,
	datad => \Mux20~8_combout\,
	combout => \Mux20~10_combout\);

-- Location: LCCOMB_X48_Y70_N8
\reg_out[20]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[20]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[20]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux20~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[20]$latch~combout\,
	datac => \Mux32~0clkctrl_outclk\,
	datad => \Mux20~10_combout\,
	combout => \reg_out[20]$latch~combout\);

-- Location: LCCOMB_X43_Y72_N26
\ShiftLeft0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~82_combout\ = (\shamt[1]~input_o\ & (\reg_in1[19]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[19]~input_o\,
	datac => \reg_in1[21]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~82_combout\);

-- Location: LCCOMB_X43_Y72_N24
\ShiftLeft0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~83_combout\ = (\shamt[0]~input_o\ & ((\ShiftLeft0~79_combout\))) # (!\shamt[0]~input_o\ & (\ShiftLeft0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~82_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftLeft0~79_combout\,
	combout => \ShiftLeft0~83_combout\);

-- Location: LCCOMB_X45_Y71_N4
\ShiftLeft0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~84_combout\ = (\shamt[2]~input_o\ & ((\ShiftLeft0~71_combout\))) # (!\shamt[2]~input_o\ & (\ShiftLeft0~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~83_combout\,
	datac => \ShiftLeft0~71_combout\,
	datad => \shamt[2]~input_o\,
	combout => \ShiftLeft0~84_combout\);

-- Location: LCCOMB_X46_Y71_N22
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux23~2_combout\ & ((\ShiftLeft0~104_combout\) # ((!\Mux23~3_combout\)))) # (!\Mux23~2_combout\ & (((\ShiftLeft0~84_combout\) # (\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~104_combout\,
	datab => \ShiftLeft0~84_combout\,
	datac => \Mux23~2_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X46_Y71_N8
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux23~1_combout\ & ((\reg_in2[21]~input_o\) # ((\reg_in1[21]~input_o\) # (!\Mux29~7_combout\)))) # (!\Mux23~1_combout\ & (\reg_in2[21]~input_o\ & (\reg_in1[21]~input_o\ & \Mux29~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \reg_in2[21]~input_o\,
	datac => \reg_in1[21]~input_o\,
	datad => \Mux29~7_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X46_Y71_N18
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\reg_in2[21]~input_o\ & ((\Mux29~7_combout\ & (!\reg_in1[21]~input_o\ & !\Mux23~1_combout\)) # (!\Mux29~7_combout\ & ((!\Mux23~1_combout\) # (!\reg_in1[21]~input_o\))))) # (!\reg_in2[21]~input_o\ & (((\reg_in1[21]~input_o\ & 
-- \Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~7_combout\,
	datab => \reg_in2[21]~input_o\,
	datac => \reg_in1[21]~input_o\,
	datad => \Mux23~1_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X46_Y71_N28
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux23~2_combout\ & ((\ShiftLeft0~55_combout\) # ((\Mux23~3_combout\)))) # (!\Mux23~2_combout\ & (((\Mux21~1_combout\) # (!\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~2_combout\,
	datab => \ShiftLeft0~55_combout\,
	datac => \Mux21~1_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X46_Y71_N2
\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~4_combout\ & ((\Mux29~7_combout\) # ((\Mux21~3_combout\ & \Mux21~2_combout\)))) # (!\Mux21~4_combout\ & (((!\Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~3_combout\,
	datab => \Mux21~4_combout\,
	datac => \Mux21~2_combout\,
	datad => \Mux29~7_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X46_Y71_N0
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux23~0_combout\ & ((\ShiftRight0~79_combout\) # ((\Mux16~4_combout\ & !\reg_in1[21]~input_o\)))) # (!\Mux23~0_combout\ & (((\Mux16~4_combout\ & !\reg_in1[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \ShiftRight0~79_combout\,
	datac => \Mux16~4_combout\,
	datad => \reg_in1[21]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X46_Y71_N24
\Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\Mux29~7_combout\) # ((\Mux23~1_combout\ & (\Mux21~3_combout\ & \Mux21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~7_combout\,
	datab => \Mux23~1_combout\,
	datac => \Mux21~3_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X48_Y71_N10
\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = \reg_in2[21]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[21]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X49_Y71_N28
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = ((\Add0~65_combout\ $ (\reg_in1[21]~input_o\ $ (!\Add0~64\)))) # (GND)
-- \Add0~67\ = CARRY((\Add0~65_combout\ & ((\reg_in1[21]~input_o\) # (!\Add0~64\))) # (!\Add0~65_combout\ & (\reg_in1[21]~input_o\ & !\Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \reg_in1[21]~input_o\,
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X46_Y71_N26
\Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux21~6_combout\) # (\Add0~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux21~6_combout\,
	datac => \Add0~66_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X46_Y71_N4
\Mux21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\Mux21~0_combout\) # ((\Mux21~5_combout\ & (\Mux16~2_combout\ & \Mux21~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~5_combout\,
	datab => \Mux16~2_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~7_combout\,
	combout => \Mux21~8_combout\);

-- Location: LCCOMB_X46_Y71_N14
\reg_out[21]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[21]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[21]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux21~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[21]$latch~combout\,
	datac => \Mux32~0clkctrl_outclk\,
	datad => \Mux21~8_combout\,
	combout => \reg_out[21]$latch~combout\);

-- Location: LCCOMB_X50_Y71_N16
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = \reg_in2[22]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[22]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~68_combout\);

-- Location: LCCOMB_X49_Y71_N30
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\reg_in1[22]~input_o\ & ((\Add0~68_combout\ & (\Add0~67\ & VCC)) # (!\Add0~68_combout\ & (!\Add0~67\)))) # (!\reg_in1[22]~input_o\ & ((\Add0~68_combout\ & (!\Add0~67\)) # (!\Add0~68_combout\ & ((\Add0~67\) # (GND)))))
-- \Add0~70\ = CARRY((\reg_in1[22]~input_o\ & (!\Add0~68_combout\ & !\Add0~67\)) # (!\reg_in1[22]~input_o\ & ((!\Add0~67\) # (!\Add0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[22]~input_o\,
	datab => \Add0~68_combout\,
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X49_Y68_N12
\Mux22~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~10_combout\ = (\reg_in1[22]~input_o\ & ((\Mux23~1_combout\) # (\reg_in2[22]~input_o\))) # (!\reg_in1[22]~input_o\ & (\Mux23~1_combout\ & \reg_in2[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[22]~input_o\,
	datac => \Mux23~1_combout\,
	datad => \reg_in2[22]~input_o\,
	combout => \Mux22~10_combout\);

-- Location: LCCOMB_X49_Y68_N18
\Mux22~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~11_combout\ = (\Mux22~10_combout\) # (((\Mux16~4_combout\ & !\reg_in1[22]~input_o\)) # (!\Mux29~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~10_combout\,
	datab => \Mux16~4_combout\,
	datac => \Mux29~7_combout\,
	datad => \reg_in1[22]~input_o\,
	combout => \Mux22~11_combout\);

-- Location: LCCOMB_X49_Y68_N28
\Mux22~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~12_combout\ = (\Mux16~2_combout\ & (((\Mux22~11_combout\)))) # (!\Mux16~2_combout\ & (\Mux16~4_combout\ & ((!\reg_in1[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux22~11_combout\,
	datac => \Mux16~2_combout\,
	datad => \reg_in1[22]~input_o\,
	combout => \Mux22~12_combout\);

-- Location: LCCOMB_X49_Y68_N6
\Mux22~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~15_combout\ = (\reg_in1[22]~input_o\ & (((\ALUOp[2]~input_o\ & !\ALUOp[1]~input_o\)) # (!\reg_in2[22]~input_o\))) # (!\reg_in1[22]~input_o\ & (((\reg_in2[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[2]~input_o\,
	datab => \reg_in1[22]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \reg_in2[22]~input_o\,
	combout => \Mux22~15_combout\);

-- Location: LCCOMB_X43_Y72_N18
\ShiftLeft0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~85_combout\ = (\shamt[1]~input_o\ & (\reg_in1[20]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[20]~input_o\,
	datac => \reg_in1[22]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~85_combout\);

-- Location: LCCOMB_X43_Y72_N4
\ShiftLeft0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~86_combout\ = (\shamt[0]~input_o\ & (\ShiftLeft0~82_combout\)) # (!\shamt[0]~input_o\ & ((\ShiftLeft0~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~82_combout\,
	datac => \shamt[0]~input_o\,
	datad => \ShiftLeft0~85_combout\,
	combout => \ShiftLeft0~86_combout\);

-- Location: LCCOMB_X46_Y68_N28
\ShiftLeft0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~87_combout\ = (\shamt[2]~input_o\ & (\ShiftLeft0~74_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftLeft0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~74_combout\,
	datab => \ShiftLeft0~86_combout\,
	datac => \shamt[2]~input_o\,
	combout => \ShiftLeft0~87_combout\);

-- Location: LCCOMB_X48_Y68_N18
\Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux23~2_combout\ & ((\ShiftLeft0~60_combout\) # ((\Mux23~3_combout\)))) # (!\Mux23~2_combout\ & (((\ShiftLeft0~87_combout\ & !\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~60_combout\,
	datab => \Mux23~2_combout\,
	datac => \ShiftLeft0~87_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X48_Y68_N0
\Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\Mux23~3_combout\ & ((\Mux22~7_combout\ & (\ShiftLeft0~25_combout\)) # (!\Mux22~7_combout\ & ((\Mux22~15_combout\))))) # (!\Mux23~3_combout\ & (\Mux22~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \Mux22~7_combout\,
	datac => \ShiftLeft0~25_combout\,
	datad => \Mux22~15_combout\,
	combout => \Mux22~8_combout\);

-- Location: LCCOMB_X49_Y68_N22
\Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux23~1_combout\ & ((\reg_in1[22]~input_o\) # (!\Mux16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \reg_in1[22]~input_o\,
	datad => \Mux23~1_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X48_Y68_N2
\Mux22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~9_combout\ = ((\Mux29~7_combout\ & (\Mux22~15_combout\)) # (!\Mux29~7_combout\ & ((\Mux22~8_combout\)))) # (!\Mux22~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~15_combout\,
	datab => \Mux22~8_combout\,
	datac => \Mux29~7_combout\,
	datad => \Mux22~6_combout\,
	combout => \Mux22~9_combout\);

-- Location: LCCOMB_X49_Y68_N8
\Mux22~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~16_combout\ = (\ALUOp[2]~input_o\ & (!\ALUOp[1]~input_o\ & \reg_in2[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[2]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \reg_in2[22]~input_o\,
	combout => \Mux22~16_combout\);

-- Location: LCCOMB_X49_Y68_N2
\Mux22~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~13_combout\ = (\Mux23~1_combout\) # ((\reg_in1[22]~input_o\ & (\Mux22~16_combout\)) # (!\reg_in1[22]~input_o\ & ((\Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux22~16_combout\,
	datac => \Mux16~4_combout\,
	datad => \reg_in1[22]~input_o\,
	combout => \Mux22~13_combout\);

-- Location: LCCOMB_X48_Y68_N8
\Mux22~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~14_combout\ = (\Mux22~12_combout\ & (\Mux22~9_combout\ & ((\Add0~69_combout\) # (\Mux22~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~69_combout\,
	datab => \Mux22~12_combout\,
	datac => \Mux22~9_combout\,
	datad => \Mux22~13_combout\,
	combout => \Mux22~14_combout\);

-- Location: LCCOMB_X48_Y68_N26
\Mux22~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~17_combout\ = (\Mux22~14_combout\) # ((!\shamt[4]~input_o\ & (\ShiftRight0~82_combout\ & \ALUOp[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datab => \ShiftRight0~82_combout\,
	datac => \Mux22~14_combout\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux22~17_combout\);

-- Location: LCCOMB_X48_Y68_N30
\reg_out[22]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[22]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[22]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux22~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[22]$latch~combout\,
	datac => \Mux22~17_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[22]$latch~combout\);

-- Location: LCCOMB_X50_Y70_N10
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = \reg_in2[23]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[23]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X49_Y70_N0
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = ((\reg_in1[23]~input_o\ $ (\Add0~71_combout\ $ (!\Add0~70\)))) # (GND)
-- \Add0~73\ = CARRY((\reg_in1[23]~input_o\ & ((\Add0~71_combout\) # (!\Add0~70\))) # (!\reg_in1[23]~input_o\ & (\Add0~71_combout\ & !\Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[23]~input_o\,
	datab => \Add0~71_combout\,
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X48_Y68_N10
\Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux23~1_combout\ & ((\reg_in1[23]~input_o\ & ((!\reg_in2[23]~input_o\))) # (!\reg_in1[23]~input_o\ & (!\Mux29~7_combout\ & \reg_in2[23]~input_o\)))) # (!\Mux23~1_combout\ & (\reg_in2[23]~input_o\ & ((!\Mux29~7_combout\) # 
-- (!\reg_in1[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \reg_in1[23]~input_o\,
	datac => \Mux29~7_combout\,
	datad => \reg_in2[23]~input_o\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X48_Y69_N12
\Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\Mux23~2_combout\ & ((\ShiftLeft0~65_combout\) # ((\Mux23~3_combout\)))) # (!\Mux23~2_combout\ & (((\Mux23~5_combout\) # (!\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~65_combout\,
	datab => \Mux23~2_combout\,
	datac => \Mux23~5_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X52_Y72_N24
\ShiftLeft0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~88_combout\ = (\shamt[1]~input_o\ & ((\reg_in1[21]~input_o\))) # (!\shamt[1]~input_o\ & (\reg_in1[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[23]~input_o\,
	datac => \shamt[1]~input_o\,
	datad => \reg_in1[21]~input_o\,
	combout => \ShiftLeft0~88_combout\);

-- Location: LCCOMB_X43_Y72_N30
\ShiftLeft0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~89_combout\ = (\shamt[0]~input_o\ & ((\ShiftLeft0~85_combout\))) # (!\shamt[0]~input_o\ & (\ShiftLeft0~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datac => \ShiftLeft0~88_combout\,
	datad => \ShiftLeft0~85_combout\,
	combout => \ShiftLeft0~89_combout\);

-- Location: LCCOMB_X49_Y67_N10
\ShiftLeft0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~90_combout\ = (\shamt[2]~input_o\ & (\ShiftLeft0~77_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftLeft0~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datac => \ShiftLeft0~77_combout\,
	datad => \ShiftLeft0~89_combout\,
	combout => \ShiftLeft0~90_combout\);

-- Location: LCCOMB_X48_Y69_N14
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux23~2_combout\ & ((\ShiftLeft0~30_combout\) # ((!\Mux23~3_combout\)))) # (!\Mux23~2_combout\ & (((\ShiftLeft0~90_combout\) # (\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~30_combout\,
	datab => \ShiftLeft0~90_combout\,
	datac => \Mux23~2_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X48_Y69_N16
\Mux23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~10_combout\ = (\Mux23~1_combout\ & ((!\Mux23~4_combout\) # (!\Mux23~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~6_combout\,
	datac => \Mux23~4_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux23~10_combout\);

-- Location: LCCOMB_X48_Y68_N6
\Mux23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (\Mux23~1_combout\ & ((\reg_in2[23]~input_o\) # (\reg_in1[23]~input_o\))) # (!\Mux23~1_combout\ & (\reg_in2[23]~input_o\ & \reg_in1[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \reg_in2[23]~input_o\,
	datac => \reg_in1[23]~input_o\,
	combout => \Mux23~9_combout\);

-- Location: LCCOMB_X48_Y69_N18
\Mux23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~11_combout\ = (\Mux16~2_combout\ & ((\Mux29~7_combout\ & ((\Mux23~9_combout\))) # (!\Mux29~7_combout\ & (!\Mux23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~7_combout\,
	datab => \Mux23~10_combout\,
	datac => \Mux23~9_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux23~11_combout\);

-- Location: LCCOMB_X48_Y69_N26
\Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\Mux29~7_combout\) # ((\Mux23~4_combout\ & (\Mux23~6_combout\ & \Mux23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~7_combout\,
	datab => \Mux23~4_combout\,
	datac => \Mux23~6_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X48_Y68_N12
\Mux23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = (\ShiftRight0~86_combout\ & ((\Mux23~0_combout\) # ((!\reg_in1[23]~input_o\ & \Mux16~4_combout\)))) # (!\ShiftRight0~86_combout\ & (!\reg_in1[23]~input_o\ & (\Mux16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~86_combout\,
	datab => \reg_in1[23]~input_o\,
	datac => \Mux16~4_combout\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X48_Y69_N28
\Mux23~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~12_combout\ = (\Mux23~8_combout\) # ((\Mux23~11_combout\ & ((\Add0~72_combout\) # (\Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~72_combout\,
	datab => \Mux23~11_combout\,
	datac => \Mux23~7_combout\,
	datad => \Mux23~8_combout\,
	combout => \Mux23~12_combout\);

-- Location: LCCOMB_X48_Y69_N6
\reg_out[23]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[23]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[23]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux23~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[23]$latch~combout\,
	datac => \Mux32~0clkctrl_outclk\,
	datad => \Mux23~12_combout\,
	combout => \reg_out[23]$latch~combout\);

-- Location: LCCOMB_X49_Y68_N0
\ShiftLeft0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~91_combout\ = (\shamt[1]~input_o\ & (\reg_in1[22]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[22]~input_o\,
	datac => \reg_in1[24]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \ShiftLeft0~91_combout\);

-- Location: LCCOMB_X47_Y69_N16
\ShiftLeft0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~92_combout\ = (\shamt[0]~input_o\ & ((\ShiftLeft0~88_combout\))) # (!\shamt[0]~input_o\ & (\ShiftLeft0~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datac => \ShiftLeft0~91_combout\,
	datad => \ShiftLeft0~88_combout\,
	combout => \ShiftLeft0~92_combout\);

-- Location: LCCOMB_X47_Y68_N18
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux5~0_combout\ & ((\Mux5~1_combout\) # ((\ShiftLeft0~80_combout\)))) # (!\Mux5~0_combout\ & (!\Mux5~1_combout\ & ((\ShiftLeft0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux5~1_combout\,
	datac => \ShiftLeft0~80_combout\,
	datad => \ShiftLeft0~92_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X48_Y72_N2
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux24~1_combout\ & ((\ShiftLeft0~34_combout\) # ((!\Mux5~1_combout\)))) # (!\Mux24~1_combout\ & (((\Mux5~1_combout\ & \ShiftLeft0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \ShiftLeft0~34_combout\,
	datac => \Mux5~1_combout\,
	datad => \ShiftLeft0~69_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X52_Y71_N2
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\ALUOp[1]~input_o\ & ((\ALUOp[0]~input_o\ & ((\Mux24~2_combout\))) # (!\ALUOp[0]~input_o\ & (\reg_in1[24]~input_o\)))) # (!\ALUOp[1]~input_o\ & (\reg_in1[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[24]~input_o\,
	datab => \Mux24~2_combout\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X52_Y71_N8
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux24~4_combout\ & ((\ALUOp[0]~input_o\) # (\reg_in2[24]~input_o\ $ (\ALUOp[1]~input_o\)))) # (!\Mux24~4_combout\ & (\reg_in2[24]~input_o\ & (\ALUOp[1]~input_o\ $ (\ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[24]~input_o\,
	datab => \Mux24~4_combout\,
	datac => \ALUOp[1]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X47_Y72_N14
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\Mux5~1_combout\ & ((\shamt[2]~input_o\ & (\ShiftRight0~6_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~6_combout\,
	datab => \shamt[2]~input_o\,
	datac => \Mux5~1_combout\,
	datad => \ShiftRight0~9_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X52_Y71_N18
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux0~13_combout\ & (((\Mux16~2_combout\)))) # (!\Mux0~13_combout\ & ((\Mux16~2_combout\ & (\Mux24~5_combout\)) # (!\Mux16~2_combout\ & ((\Mux24~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~13_combout\,
	datab => \Mux24~5_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X50_Y70_N24
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = \reg_in2[24]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[24]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~74_combout\);

-- Location: LCCOMB_X49_Y70_N2
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\reg_in1[24]~input_o\ & ((\Add0~74_combout\ & (\Add0~73\ & VCC)) # (!\Add0~74_combout\ & (!\Add0~73\)))) # (!\reg_in1[24]~input_o\ & ((\Add0~74_combout\ & (!\Add0~73\)) # (!\Add0~74_combout\ & ((\Add0~73\) # (GND)))))
-- \Add0~76\ = CARRY((\reg_in1[24]~input_o\ & (!\Add0~74_combout\ & !\Add0~73\)) # (!\reg_in1[24]~input_o\ & ((!\Add0~73\) # (!\Add0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[24]~input_o\,
	datab => \Add0~74_combout\,
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X52_Y71_N12
Mux24 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~combout\ = (\Mux24~3_combout\ & (((\Add0~75_combout\) # (!\Mux2~0_combout\)))) # (!\Mux24~3_combout\ & (!\reg_in1[24]~input_o\ & (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[24]~input_o\,
	datab => \Mux24~3_combout\,
	datac => \Mux2~0_combout\,
	datad => \Add0~75_combout\,
	combout => \Mux24~combout\);

-- Location: LCCOMB_X52_Y71_N30
\reg_out[24]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[24]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & ((\reg_out[24]$latch~combout\))) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & (\Mux24~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~combout\,
	datac => \reg_out[24]$latch~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[24]$latch~combout\);

-- Location: LCCOMB_X45_Y69_N26
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!\Mux5~1_combout\ & ((\shamt[2]~input_o\ & (\ShiftRight0~30_combout\)) # (!\shamt[2]~input_o\ & ((\ShiftRight0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftRight0~30_combout\,
	datac => \ShiftRight0~32_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X47_Y70_N16
\ShiftLeft0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~93_combout\ = (!\shamt[0]~input_o\ & ((\shamt[1]~input_o\ & (\reg_in1[23]~input_o\)) # (!\shamt[1]~input_o\ & ((\reg_in1[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \reg_in1[23]~input_o\,
	datad => \reg_in1[25]~input_o\,
	combout => \ShiftLeft0~93_combout\);

-- Location: LCCOMB_X47_Y69_N6
\ShiftLeft0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~94_combout\ = (\ShiftLeft0~93_combout\) # ((\shamt[0]~input_o\ & \ShiftLeft0~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datac => \ShiftLeft0~91_combout\,
	datad => \ShiftLeft0~93_combout\,
	combout => \ShiftLeft0~94_combout\);

-- Location: LCCOMB_X47_Y69_N4
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux5~1_combout\ & (((\Mux5~0_combout\) # (\ShiftLeft0~72_combout\)))) # (!\Mux5~1_combout\ & (\ShiftLeft0~94_combout\ & (!\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~94_combout\,
	datab => \Mux5~1_combout\,
	datac => \Mux5~0_combout\,
	datad => \ShiftLeft0~72_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X53_Y69_N4
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux5~0_combout\ & ((\Mux25~1_combout\ & ((\ShiftLeft0~38_combout\))) # (!\Mux25~1_combout\ & (\ShiftLeft0~83_combout\)))) # (!\Mux5~0_combout\ & (((\Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~83_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux25~1_combout\,
	datad => \ShiftLeft0~38_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X53_Y69_N28
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\ALUOp[1]~input_o\ & ((\ALUOp[0]~input_o\ & ((\Mux25~2_combout\))) # (!\ALUOp[0]~input_o\ & (\reg_in1[25]~input_o\)))) # (!\ALUOp[1]~input_o\ & (\reg_in1[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[25]~input_o\,
	datab => \ALUOp[1]~input_o\,
	datac => \Mux25~2_combout\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X53_Y69_N6
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux25~4_combout\ & ((\ALUOp[0]~input_o\) # (\ALUOp[1]~input_o\ $ (\reg_in2[25]~input_o\)))) # (!\Mux25~4_combout\ & (\reg_in2[25]~input_o\ & (\ALUOp[0]~input_o\ $ (\ALUOp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~4_combout\,
	datab => \ALUOp[0]~input_o\,
	datac => \ALUOp[1]~input_o\,
	datad => \reg_in2[25]~input_o\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X48_Y69_N30
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux0~13_combout\ & (((\Mux16~2_combout\)))) # (!\Mux0~13_combout\ & ((\Mux16~2_combout\ & ((\Mux25~5_combout\))) # (!\Mux16~2_combout\ & (\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Mux25~5_combout\,
	datac => \Mux0~13_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X50_Y70_N30
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = \reg_in2[25]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[25]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~77_combout\);

-- Location: LCCOMB_X49_Y70_N4
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = ((\reg_in1[25]~input_o\ $ (\Add0~77_combout\ $ (!\Add0~76\)))) # (GND)
-- \Add0~79\ = CARRY((\reg_in1[25]~input_o\ & ((\Add0~77_combout\) # (!\Add0~76\))) # (!\reg_in1[25]~input_o\ & (\Add0~77_combout\ & !\Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[25]~input_o\,
	datab => \Add0~77_combout\,
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X47_Y70_N18
Mux25 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~combout\ = (\Mux25~3_combout\ & (((\Add0~78_combout\) # (!\Mux2~0_combout\)))) # (!\Mux25~3_combout\ & (!\reg_in1[25]~input_o\ & (\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[25]~input_o\,
	datab => \Mux25~3_combout\,
	datac => \Mux2~0_combout\,
	datad => \Add0~78_combout\,
	combout => \Mux25~combout\);

-- Location: LCCOMB_X47_Y70_N14
\reg_out[25]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[25]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & ((\reg_out[25]$latch~combout\))) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & (\Mux25~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux25~combout\,
	datac => \reg_out[25]$latch~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[25]$latch~combout\);

-- Location: LCCOMB_X50_Y70_N0
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = \reg_in2[26]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[26]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~80_combout\);

-- Location: LCCOMB_X49_Y70_N6
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~80_combout\ & ((\reg_in1[26]~input_o\ & (\Add0~79\ & VCC)) # (!\reg_in1[26]~input_o\ & (!\Add0~79\)))) # (!\Add0~80_combout\ & ((\reg_in1[26]~input_o\ & (!\Add0~79\)) # (!\reg_in1[26]~input_o\ & ((\Add0~79\) # (GND)))))
-- \Add0~82\ = CARRY((\Add0~80_combout\ & (!\reg_in1[26]~input_o\ & !\Add0~79\)) # (!\Add0~80_combout\ & ((!\Add0~79\) # (!\reg_in1[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \reg_in1[26]~input_o\,
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: LCCOMB_X47_Y71_N20
\ShiftLeft0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~96_combout\ = (\shamt[0]~input_o\ & (\reg_in1[25]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[25]~input_o\,
	datad => \reg_in1[26]~input_o\,
	combout => \ShiftLeft0~96_combout\);

-- Location: LCCOMB_X47_Y71_N18
\ShiftLeft0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~95_combout\ = (\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & (\reg_in1[23]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[1]~input_o\,
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[23]~input_o\,
	datad => \reg_in1[24]~input_o\,
	combout => \ShiftLeft0~95_combout\);

-- Location: LCCOMB_X47_Y71_N2
\ShiftLeft0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~97_combout\ = (\ShiftLeft0~95_combout\) # ((\ShiftLeft0~96_combout\ & !\shamt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~96_combout\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftLeft0~95_combout\,
	combout => \ShiftLeft0~97_combout\);

-- Location: LCCOMB_X46_Y68_N26
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux5~1_combout\ & (\Mux5~0_combout\)) # (!\Mux5~1_combout\ & ((\Mux5~0_combout\ & (\ShiftLeft0~86_combout\)) # (!\Mux5~0_combout\ & ((\ShiftLeft0~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~0_combout\,
	datac => \ShiftLeft0~86_combout\,
	datad => \ShiftLeft0~97_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X46_Y68_N12
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux5~1_combout\ & ((\Mux26~2_combout\ & (\ShiftLeft0~42_combout\)) # (!\Mux26~2_combout\ & ((\ShiftLeft0~75_combout\))))) # (!\Mux5~1_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \ShiftLeft0~42_combout\,
	datac => \Mux26~2_combout\,
	datad => \ShiftLeft0~75_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X53_Y70_N14
\Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\ALUOp[1]~input_o\ & ((\ALUOp[0]~input_o\ & (\Mux26~3_combout\)) # (!\ALUOp[0]~input_o\ & ((\reg_in1[26]~input_o\))))) # (!\ALUOp[1]~input_o\ & (((\reg_in1[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \Mux26~3_combout\,
	datac => \reg_in1[26]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X50_Y70_N12
\Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux26~6_combout\ & ((\ALUOp[0]~input_o\) # (\ALUOp[1]~input_o\ $ (\reg_in2[26]~input_o\)))) # (!\Mux26~6_combout\ & (\reg_in2[26]~input_o\ & (\ALUOp[1]~input_o\ $ (\ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \Mux26~6_combout\,
	datac => \reg_in2[26]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X50_Y68_N22
\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (!\shamt[3]~input_o\ & (\ShiftRight0~50_combout\ & !\shamt[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[3]~input_o\,
	datac => \ShiftRight0~50_combout\,
	datad => \shamt[4]~input_o\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X47_Y70_N28
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Mux0~13_combout\ & (((\Mux16~2_combout\)))) # (!\Mux0~13_combout\ & ((\Mux16~2_combout\ & (\Mux26~7_combout\)) # (!\Mux16~2_combout\ & ((\Mux26~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~7_combout\,
	datab => \Mux0~13_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux26~5_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X47_Y70_N10
Mux26 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~combout\ = (\Mux26~4_combout\ & ((\Add0~81_combout\) # ((!\Mux2~0_combout\)))) # (!\Mux26~4_combout\ & (((\Mux2~0_combout\ & !\reg_in1[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~81_combout\,
	datab => \Mux26~4_combout\,
	datac => \Mux2~0_combout\,
	datad => \reg_in1[26]~input_o\,
	combout => \Mux26~combout\);

-- Location: LCCOMB_X47_Y70_N20
\reg_out[26]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[26]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & ((\reg_out[26]$latch~combout\))) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & (\Mux26~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~combout\,
	datab => \reg_out[26]$latch~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[26]$latch~combout\);

-- Location: LCCOMB_X48_Y70_N30
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUOp[0]~input_o\,
	datad => \reg_in2[27]~input_o\,
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X49_Y70_N8
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = ((\Add0~83_combout\ $ (\reg_in1[27]~input_o\ $ (!\Add0~82\)))) # (GND)
-- \Add0~85\ = CARRY((\Add0~83_combout\ & ((\reg_in1[27]~input_o\) # (!\Add0~82\))) # (!\Add0~83_combout\ & (\reg_in1[27]~input_o\ & !\Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~83_combout\,
	datab => \reg_in1[27]~input_o\,
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X47_Y70_N24
\ShiftLeft0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~98_combout\ = (\shamt[1]~input_o\ & ((\shamt[0]~input_o\ & ((\reg_in1[24]~input_o\))) # (!\shamt[0]~input_o\ & (\reg_in1[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[25]~input_o\,
	datab => \shamt[1]~input_o\,
	datac => \reg_in1[24]~input_o\,
	datad => \shamt[0]~input_o\,
	combout => \ShiftLeft0~98_combout\);

-- Location: LCCOMB_X47_Y70_N6
\ShiftLeft0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~99_combout\ = (\shamt[0]~input_o\ & (\reg_in1[26]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[0]~input_o\,
	datab => \reg_in1[26]~input_o\,
	datad => \reg_in1[27]~input_o\,
	combout => \ShiftLeft0~99_combout\);

-- Location: LCCOMB_X47_Y70_N4
\ShiftLeft0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~100_combout\ = (\ShiftLeft0~98_combout\) # ((!\shamt[1]~input_o\ & \ShiftLeft0~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~98_combout\,
	datac => \shamt[1]~input_o\,
	datad => \ShiftLeft0~99_combout\,
	combout => \ShiftLeft0~100_combout\);

-- Location: LCCOMB_X48_Y67_N28
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux5~1_combout\ & (((\Mux5~0_combout\) # (\ShiftLeft0~78_combout\)))) # (!\Mux5~1_combout\ & (\ShiftLeft0~100_combout\ & (!\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \ShiftLeft0~100_combout\,
	datac => \Mux5~0_combout\,
	datad => \ShiftLeft0~78_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X49_Y67_N4
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux27~1_combout\ & (((\ShiftLeft0~46_combout\) # (!\Mux5~0_combout\)))) # (!\Mux27~1_combout\ & (\ShiftLeft0~89_combout\ & (\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~89_combout\,
	datab => \Mux27~1_combout\,
	datac => \Mux5~0_combout\,
	datad => \ShiftLeft0~46_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X52_Y72_N18
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\ALUOp[0]~input_o\ & ((\ALUOp[1]~input_o\ & (\Mux27~2_combout\)) # (!\ALUOp[1]~input_o\ & ((\reg_in1[27]~input_o\))))) # (!\ALUOp[0]~input_o\ & (((\reg_in1[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \ALUOp[0]~input_o\,
	datac => \reg_in1[27]~input_o\,
	datad => \ALUOp[1]~input_o\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X52_Y72_N8
\Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux27~4_combout\ & ((\ALUOp[0]~input_o\) # (\ALUOp[1]~input_o\ $ (\reg_in2[27]~input_o\)))) # (!\Mux27~4_combout\ & (\reg_in2[27]~input_o\ & (\ALUOp[1]~input_o\ $ (\ALUOp[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~4_combout\,
	datab => \ALUOp[1]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \reg_in2[27]~input_o\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X53_Y71_N30
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\Mux5~1_combout\ & ((\ShiftRight0~69_combout\) # ((!\shamt[2]~input_o\ & \ShiftRight0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \ShiftRight0~84_combout\,
	datac => \ShiftRight0~69_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X47_Y70_N26
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux0~13_combout\ & (((\Mux16~2_combout\)))) # (!\Mux0~13_combout\ & ((\Mux16~2_combout\ & (\Mux27~5_combout\)) # (!\Mux16~2_combout\ & ((\Mux27~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~5_combout\,
	datab => \Mux0~13_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X47_Y70_N12
Mux27 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~combout\ = (\Mux27~3_combout\ & ((\Add0~84_combout\) # ((!\Mux2~0_combout\)))) # (!\Mux27~3_combout\ & (((\Mux2~0_combout\ & !\reg_in1[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~84_combout\,
	datab => \Mux27~3_combout\,
	datac => \Mux2~0_combout\,
	datad => \reg_in1[27]~input_o\,
	combout => \Mux27~combout\);

-- Location: LCCOMB_X47_Y70_N22
\reg_out[27]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[27]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & ((\reg_out[27]$latch~combout\))) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & (\Mux27~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~combout\,
	datac => \reg_out[27]$latch~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[27]$latch~combout\);

-- Location: LCCOMB_X45_Y70_N22
\Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (\ALUOp[1]~input_o\ & ((\shamt[4]~input_o\) # (!\ALUOp[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \shamt[4]~input_o\,
	datac => \ALUOp[0]~input_o\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X53_Y70_N18
\ShiftLeft0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~101_combout\ = (\shamt[0]~input_o\ & (\reg_in1[27]~input_o\)) # (!\shamt[0]~input_o\ & ((\reg_in1[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[27]~input_o\,
	datad => \reg_in1[28]~input_o\,
	combout => \ShiftLeft0~101_combout\);

-- Location: LCCOMB_X47_Y71_N12
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\Mux2~1_combout\ & (((\ShiftLeft0~10_combout\)))) # (!\Mux2~1_combout\ & ((\ShiftLeft0~10_combout\ & ((\ShiftLeft0~101_combout\))) # (!\ShiftLeft0~10_combout\ & (\ShiftLeft0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~92_combout\,
	datab => \ShiftLeft0~101_combout\,
	datac => \Mux2~1_combout\,
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X47_Y71_N30
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux28~4_combout\ & ((\ShiftLeft0~96_combout\) # ((!\Mux2~1_combout\)))) # (!\Mux28~4_combout\ & (((\Mux2~1_combout\ & \ShiftLeft0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \ShiftLeft0~96_combout\,
	datac => \Mux2~1_combout\,
	datad => \ShiftLeft0~81_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X50_Y70_N6
\Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\Mux29~8_combout\ & ((\ShiftLeft0~51_combout\))) # (!\Mux29~8_combout\ & (\Mux28~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~8_combout\,
	datac => \Mux28~5_combout\,
	datad => \ShiftLeft0~51_combout\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X45_Y70_N14
\Mux29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~10_combout\ = (\ALUOp[1]~input_o\ & ((!\ALUOp[2]~input_o\))) # (!\ALUOp[1]~input_o\ & (\ALUOp[0]~input_o\ & \ALUOp[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux29~10_combout\);

-- Location: LCCOMB_X45_Y70_N8
\Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (!\ALUOp[2]~input_o\ & ((\ALUOp[0]~input_o\) # (!\ALUOp[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X49_Y70_N22
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUOp[0]~input_o\,
	datad => \reg_in2[28]~input_o\,
	combout => \Add0~86_combout\);

-- Location: LCCOMB_X49_Y70_N10
\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\reg_in1[28]~input_o\ & ((\Add0~86_combout\ & (\Add0~85\ & VCC)) # (!\Add0~86_combout\ & (!\Add0~85\)))) # (!\reg_in1[28]~input_o\ & ((\Add0~86_combout\ & (!\Add0~85\)) # (!\Add0~86_combout\ & ((\Add0~85\) # (GND)))))
-- \Add0~88\ = CARRY((\reg_in1[28]~input_o\ & (!\Add0~86_combout\ & !\Add0~85\)) # (!\reg_in1[28]~input_o\ & ((!\Add0~85\) # (!\Add0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[28]~input_o\,
	datab => \Add0~86_combout\,
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~87_combout\,
	cout => \Add0~88\);

-- Location: LCCOMB_X49_Y70_N20
\Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\Mux29~10_combout\ & ((\reg_in1[28]~input_o\) # ((!\Mux29~9_combout\)))) # (!\Mux29~10_combout\ & (((\Mux29~9_combout\ & !\Add0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[28]~input_o\,
	datab => \Mux29~10_combout\,
	datac => \Mux29~9_combout\,
	datad => \Add0~87_combout\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X49_Y70_N30
\Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\reg_in1[28]~input_o\ & ((\Mux28~7_combout\) # (\reg_in2[28]~input_o\ $ (\Mux29~8_combout\)))) # (!\reg_in1[28]~input_o\ & (\reg_in2[28]~input_o\ & ((\Mux29~8_combout\) # (\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[28]~input_o\,
	datab => \reg_in2[28]~input_o\,
	datac => \Mux29~8_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X49_Y70_N18
\Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\ALUOp[2]~input_o\ & (\ALUOp[1]~input_o\ & (\ALUOp[0]~input_o\ & !\Mux28~7_combout\))) # (!\ALUOp[2]~input_o\ & (((\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datab => \ALUOp[2]~input_o\,
	datac => \ALUOp[0]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X49_Y70_N28
\Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\ALUOp[2]~input_o\ & ((\Mux28~10_combout\ & (\Mux28~6_combout\)) # (!\Mux28~10_combout\ & ((\Mux28~8_combout\))))) # (!\ALUOp[2]~input_o\ & (((!\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \ALUOp[2]~input_o\,
	datac => \Mux28~8_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X49_Y70_N24
\Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\ALUOp[3]~input_o\ & (!\shamt[4]~input_o\ & (\ShiftRight0~91_combout\))) # (!\ALUOp[3]~input_o\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \shamt[4]~input_o\,
	datac => \ShiftRight0~91_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux28~11_combout\);

-- Location: LCCOMB_X49_Y70_N26
\reg_out[28]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[28]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[28]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux28~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[28]$latch~combout\,
	datac => \Mux32~0clkctrl_outclk\,
	datad => \Mux28~11_combout\,
	combout => \reg_out[28]$latch~combout\);

-- Location: LCCOMB_X45_Y70_N0
\Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\ALUOp[1]~input_o\ & \ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[1]~input_o\,
	datac => \ALUOp[0]~input_o\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X53_Y70_N20
\ShiftLeft0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~102_combout\ = (\shamt[0]~input_o\ & ((\reg_in1[28]~input_o\))) # (!\shamt[0]~input_o\ & (\reg_in1[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shamt[0]~input_o\,
	datac => \reg_in1[29]~input_o\,
	datad => \reg_in1[28]~input_o\,
	combout => \ShiftLeft0~102_combout\);

-- Location: LCCOMB_X47_Y69_N26
\Mux29~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~11_combout\ = (\Mux2~1_combout\ & (((!\ShiftLeft0~10_combout\)))) # (!\Mux2~1_combout\ & ((\ShiftLeft0~10_combout\ & ((\ShiftLeft0~102_combout\))) # (!\ShiftLeft0~10_combout\ & (\ShiftLeft0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~94_combout\,
	datab => \Mux2~1_combout\,
	datac => \ShiftLeft0~102_combout\,
	datad => \ShiftLeft0~10_combout\,
	combout => \Mux29~11_combout\);

-- Location: LCCOMB_X46_Y71_N30
\Mux29~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~12_combout\ = (\Mux2~1_combout\ & ((\Mux29~11_combout\ & (\ShiftLeft0~84_combout\)) # (!\Mux29~11_combout\ & ((\ShiftLeft0~99_combout\))))) # (!\Mux2~1_combout\ & (((\Mux29~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \ShiftLeft0~84_combout\,
	datac => \ShiftLeft0~99_combout\,
	datad => \Mux29~11_combout\,
	combout => \Mux29~12_combout\);

-- Location: LCCOMB_X45_Y70_N16
\Mux29~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~13_combout\ = (\Mux29~8_combout\ & ((\ShiftLeft0~56_combout\) # ((!\Mux29~6_combout\)))) # (!\Mux29~8_combout\ & (((\Mux29~6_combout\ & \Mux29~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~8_combout\,
	datab => \ShiftLeft0~56_combout\,
	datac => \Mux29~6_combout\,
	datad => \Mux29~12_combout\,
	combout => \Mux29~13_combout\);

-- Location: LCCOMB_X45_Y70_N6
\Mux29~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~14_combout\ = (\reg_in2[29]~input_o\ & (\Mux29~13_combout\ $ (((\reg_in1[29]~input_o\ & !\Mux29~6_combout\))))) # (!\reg_in2[29]~input_o\ & (\Mux29~13_combout\ & ((\reg_in1[29]~input_o\) # (\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[29]~input_o\,
	datab => \Mux29~13_combout\,
	datac => \reg_in1[29]~input_o\,
	datad => \Mux29~6_combout\,
	combout => \Mux29~14_combout\);

-- Location: LCCOMB_X45_Y70_N20
\Mux29~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~15_combout\ = (\reg_in2[29]~input_o\ & ((\Mux29~14_combout\) # (\Mux29~10_combout\ $ (\Mux29~9_combout\)))) # (!\reg_in2[29]~input_o\ & (\Mux29~14_combout\ & (\Mux29~10_combout\ $ (!\Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[29]~input_o\,
	datab => \Mux29~14_combout\,
	datac => \Mux29~10_combout\,
	datad => \Mux29~9_combout\,
	combout => \Mux29~15_combout\);

-- Location: LCCOMB_X45_Y70_N10
\Mux29~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~16_combout\ = (\reg_in1[29]~input_o\ & (\ALUOp[2]~input_o\ $ (((!\Mux29~10_combout\ & !\Mux29~9_combout\))))) # (!\reg_in1[29]~input_o\ & (!\ALUOp[2]~input_o\ & (\Mux29~10_combout\ $ (!\Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[2]~input_o\,
	datab => \reg_in1[29]~input_o\,
	datac => \Mux29~10_combout\,
	datad => \Mux29~9_combout\,
	combout => \Mux29~16_combout\);

-- Location: LCCOMB_X45_Y69_N4
\Mux29~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~24_combout\ = (!\shamt[4]~input_o\ & (\ShiftRight0~93_combout\ & \ALUOp[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[4]~input_o\,
	datac => \ShiftRight0~93_combout\,
	datad => \ALUOp[3]~input_o\,
	combout => \Mux29~24_combout\);

-- Location: LCCOMB_X45_Y70_N28
\Mux29~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~17_combout\ = (\Mux29~16_combout\) # ((\Mux29~24_combout\) # ((\Mux29~15_combout\ & \ALUOp[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~15_combout\,
	datab => \Mux29~16_combout\,
	datac => \Mux29~24_combout\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux29~17_combout\);

-- Location: LCCOMB_X45_Y70_N24
\Mux29~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~19_combout\ = (\Mux29~8_combout\ & (\ShiftLeft0~56_combout\)) # (!\Mux29~8_combout\ & ((\Mux29~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux29~8_combout\,
	datac => \ShiftLeft0~56_combout\,
	datad => \Mux29~12_combout\,
	combout => \Mux29~19_combout\);

-- Location: LCCOMB_X45_Y70_N30
\Mux29~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~18_combout\ = (\Mux29~10_combout\ & ((\reg_in1[29]~input_o\) # (!\Mux29~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~10_combout\,
	datab => \Mux29~9_combout\,
	datad => \reg_in1[29]~input_o\,
	combout => \Mux29~18_combout\);

-- Location: LCCOMB_X45_Y70_N18
\Mux29~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~20_combout\ = (\reg_in1[29]~input_o\ & ((\Mux29~18_combout\) # (\Mux29~8_combout\ $ (\reg_in2[29]~input_o\)))) # (!\reg_in1[29]~input_o\ & (\reg_in2[29]~input_o\ & ((\Mux29~18_combout\) # (\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~18_combout\,
	datab => \Mux29~8_combout\,
	datac => \reg_in1[29]~input_o\,
	datad => \reg_in2[29]~input_o\,
	combout => \Mux29~20_combout\);

-- Location: LCCOMB_X45_Y70_N12
\Mux29~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~21_combout\ = (\Mux29~6_combout\ & ((\Mux29~18_combout\ & ((\Mux29~20_combout\))) # (!\Mux29~18_combout\ & (\Mux29~19_combout\)))) # (!\Mux29~6_combout\ & (((\Mux29~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~19_combout\,
	datab => \Mux29~6_combout\,
	datac => \Mux29~20_combout\,
	datad => \Mux29~18_combout\,
	combout => \Mux29~21_combout\);

-- Location: LCCOMB_X45_Y70_N2
\Mux29~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~22_combout\ = (\Mux29~24_combout\) # ((\ALUOp[2]~input_o\ & (\Mux29~21_combout\)) # (!\ALUOp[2]~input_o\ & ((!\Mux29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~21_combout\,
	datab => \Mux29~18_combout\,
	datac => \Mux29~24_combout\,
	datad => \ALUOp[2]~input_o\,
	combout => \Mux29~22_combout\);

-- Location: LCCOMB_X45_Y71_N28
\Mux29~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~25_combout\ = ((!\shamt[4]~input_o\ & \ShiftRight0~93_combout\)) # (!\ALUOp[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datac => \shamt[4]~input_o\,
	datad => \ShiftRight0~93_combout\,
	combout => \Mux29~25_combout\);

-- Location: LCCOMB_X48_Y70_N0
\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUOp[0]~input_o\,
	datad => \reg_in2[29]~input_o\,
	combout => \Add0~89_combout\);

-- Location: LCCOMB_X49_Y70_N12
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = ((\reg_in1[29]~input_o\ $ (\Add0~89_combout\ $ (!\Add0~88\)))) # (GND)
-- \Add0~91\ = CARRY((\reg_in1[29]~input_o\ & ((\Add0~89_combout\) # (!\Add0~88\))) # (!\reg_in1[29]~input_o\ & (\Add0~89_combout\ & !\Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in1[29]~input_o\,
	datab => \Add0~89_combout\,
	datad => VCC,
	cin => \Add0~88\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X45_Y70_N4
\Mux29~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~23_combout\ = (\Mux29~25_combout\ & ((\Add0~90_combout\ & ((\Mux29~22_combout\))) # (!\Add0~90_combout\ & (\Mux29~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~17_combout\,
	datab => \Mux29~22_combout\,
	datac => \Mux29~25_combout\,
	datad => \Add0~90_combout\,
	combout => \Mux29~23_combout\);

-- Location: LCCOMB_X45_Y70_N26
\reg_out[29]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[29]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[29]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux29~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[29]$latch~combout\,
	datac => \Mux29~23_combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[29]$latch~combout\);

-- Location: LCCOMB_X48_Y67_N30
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\reg_in1[30]~input_o\ & \Mux16~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in1[30]~input_o\,
	datad => \Mux16~4_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X48_Y67_N8
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux23~0_combout\ & (\ShiftLeft0~6_combout\ & (!\shamt[3]~input_o\ & \ShiftRight0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \ShiftLeft0~6_combout\,
	datac => \shamt[3]~input_o\,
	datad => \ShiftRight0~5_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X46_Y69_N4
\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\shamt[2]~input_o\) # ((\shamt[0]~input_o\ & !\shamt[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt[2]~input_o\,
	datab => \shamt[0]~input_o\,
	datad => \shamt[1]~input_o\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X48_Y67_N26
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\ShiftLeft0~6_combout\ & (((\reg_in1[29]~input_o\) # (!\Mux31~2_combout\)))) # (!\ShiftLeft0~6_combout\ & (\ShiftLeft0~97_combout\ & ((\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~97_combout\,
	datab => \ShiftLeft0~6_combout\,
	datac => \reg_in1[29]~input_o\,
	datad => \Mux31~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X48_Y67_N12
\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Mux30~3_combout\ & (((\reg_in1[30]~input_o\) # (\Mux31~2_combout\)))) # (!\Mux30~3_combout\ & (\ShiftLeft0~101_combout\ & ((!\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \ShiftLeft0~101_combout\,
	datac => \reg_in1[30]~input_o\,
	datad => \Mux31~2_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X48_Y67_N0
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = \reg_in1[30]~input_o\ $ (\reg_in2[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_in1[30]~input_o\,
	datac => \reg_in2[30]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X48_Y67_N2
\Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux23~2_combout\ & (((!\Mux23~3_combout\)))) # (!\Mux23~2_combout\ & ((\Mux23~3_combout\ & ((\Mux30~2_combout\))) # (!\Mux23~3_combout\ & (\Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~4_combout\,
	datab => \Mux23~2_combout\,
	datac => \Mux30~2_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X48_Y67_N20
\Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\Mux30~5_combout\ & ((\ShiftLeft0~87_combout\) # ((!\Mux23~2_combout\)))) # (!\Mux30~5_combout\ & (((\ShiftLeft0~61_combout\ & \Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~87_combout\,
	datab => \ShiftLeft0~61_combout\,
	datac => \Mux30~5_combout\,
	datad => \Mux23~2_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X48_Y67_N22
\Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = ((\Mux23~1_combout\ & ((\reg_in1[30]~input_o\) # (\reg_in2[30]~input_o\))) # (!\Mux23~1_combout\ & (\reg_in1[30]~input_o\ & \reg_in2[30]~input_o\))) # (!\Mux29~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \reg_in1[30]~input_o\,
	datac => \reg_in2[30]~input_o\,
	datad => \Mux29~7_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X48_Y67_N4
\Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\Mux29~7_combout\ & (((\Mux30~7_combout\)))) # (!\Mux29~7_combout\ & ((\Mux23~1_combout\ & (\Mux30~6_combout\)) # (!\Mux23~1_combout\ & ((\Mux30~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~6_combout\,
	datab => \Mux29~7_combout\,
	datac => \Mux30~7_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X48_Y67_N10
\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = \reg_in2[30]~input_o\ $ (\ALUOp[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_in2[30]~input_o\,
	datad => \ALUOp[0]~input_o\,
	combout => \Add0~92_combout\);

-- Location: LCCOMB_X49_Y70_N14
\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~92_combout\ & ((\reg_in1[30]~input_o\ & (\Add0~91\ & VCC)) # (!\reg_in1[30]~input_o\ & (!\Add0~91\)))) # (!\Add0~92_combout\ & ((\reg_in1[30]~input_o\ & (!\Add0~91\)) # (!\reg_in1[30]~input_o\ & ((\Add0~91\) # (GND)))))
-- \Add0~94\ = CARRY((\Add0~92_combout\ & (!\reg_in1[30]~input_o\ & !\Add0~91\)) # (!\Add0~92_combout\ & ((!\Add0~91\) # (!\reg_in1[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~92_combout\,
	datab => \reg_in1[30]~input_o\,
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~93_combout\,
	cout => \Add0~94\);

-- Location: LCCOMB_X48_Y67_N18
\Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (\Mux30~8_combout\ & ((\Mux29~7_combout\) # ((\Add0~93_combout\) # (\Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~8_combout\,
	datab => \Mux29~7_combout\,
	datac => \Add0~93_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux30~9_combout\);

-- Location: LCCOMB_X48_Y67_N16
\Mux30~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~10_combout\ = (\Mux30~0_combout\) # ((\Mux30~1_combout\) # ((\Mux16~2_combout\ & \Mux30~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \Mux30~0_combout\,
	datac => \Mux30~1_combout\,
	datad => \Mux30~9_combout\,
	combout => \Mux30~10_combout\);

-- Location: LCCOMB_X48_Y67_N14
\reg_out[30]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[30]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & (\reg_out[30]$latch~combout\)) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & ((\Mux30~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_out[30]$latch~combout\,
	datac => \Mux32~0clkctrl_outclk\,
	datad => \Mux30~10_combout\,
	combout => \reg_out[30]$latch~combout\);

-- Location: LCCOMB_X49_Y69_N28
\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = \ALUOp[0]~input_o\ $ (\reg_in2[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUOp[0]~input_o\,
	datad => \reg_in2[31]~input_o\,
	combout => \Add0~95_combout\);

-- Location: LCCOMB_X49_Y70_N16
\Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = \Add0~95_combout\ $ (\Add0~94\ $ (!\reg_in1[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~95_combout\,
	datad => \reg_in1[31]~input_o\,
	cin => \Add0~94\,
	combout => \Add0~96_combout\);

-- Location: LCCOMB_X47_Y68_N4
\Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = (\Mux16~4_combout\ & (((\Mux23~0_combout\ & \ShiftRight0~92_combout\)) # (!\reg_in1[31]~input_o\))) # (!\Mux16~4_combout\ & (\Mux23~0_combout\ & ((\ShiftRight0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux23~0_combout\,
	datac => \reg_in1[31]~input_o\,
	datad => \ShiftRight0~92_combout\,
	combout => \Mux31~9_combout\);

-- Location: LCCOMB_X48_Y70_N26
\Mux31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~12_combout\ = (\Mux31~9_combout\) # ((!\ALUOp[3]~input_o\ & ((\ALUOp[2]~input_o\) # (!\ALUOp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp[3]~input_o\,
	datab => \ALUOp[2]~input_o\,
	datac => \Mux31~9_combout\,
	datad => \ALUOp[1]~input_o\,
	combout => \Mux31~12_combout\);

-- Location: LCCOMB_X48_Y70_N10
\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux29~7_combout\ & ((\reg_in1[31]~input_o\ & ((\reg_in2[31]~input_o\) # (\Mux23~1_combout\))) # (!\reg_in1[31]~input_o\ & (\reg_in2[31]~input_o\ & \Mux23~1_combout\)))) # (!\Mux29~7_combout\ & (((!\Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~7_combout\,
	datab => \reg_in1[31]~input_o\,
	datac => \reg_in2[31]~input_o\,
	datad => \Mux23~1_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X48_Y67_N6
\Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\ShiftLeft0~6_combout\ & (((\reg_in1[31]~input_o\ & !\Mux31~2_combout\)))) # (!\ShiftLeft0~6_combout\ & ((\ShiftLeft0~102_combout\) # ((\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~102_combout\,
	datab => \reg_in1[31]~input_o\,
	datac => \ShiftLeft0~6_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X48_Y67_N24
\Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\Mux31~5_combout\ & ((\ShiftLeft0~100_combout\) # ((!\Mux31~2_combout\)))) # (!\Mux31~5_combout\ & (((\reg_in1[30]~input_o\ & \Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~5_combout\,
	datab => \ShiftLeft0~100_combout\,
	datac => \reg_in1[30]~input_o\,
	datad => \Mux31~2_combout\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X49_Y67_N22
\Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (\Mux23~2_combout\ & ((\ShiftLeft0~90_combout\))) # (!\Mux23~2_combout\ & (\Mux31~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~6_combout\,
	datac => \Mux23~2_combout\,
	datad => \ShiftLeft0~90_combout\,
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X48_Y70_N4
\Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\Mux23~2_combout\ & (((\ShiftLeft0~66_combout\)))) # (!\Mux23~2_combout\ & (\reg_in2[31]~input_o\ $ ((\reg_in1[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_in2[31]~input_o\,
	datab => \reg_in1[31]~input_o\,
	datac => \Mux23~2_combout\,
	datad => \ShiftLeft0~66_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X48_Y70_N2
\Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\Mux23~1_combout\ & ((\Mux23~3_combout\ & ((\Mux31~4_combout\))) # (!\Mux23~3_combout\ & (\Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux31~7_combout\,
	datac => \Mux31~4_combout\,
	datad => \Mux23~3_combout\,
	combout => \Mux31~8_combout\);

-- Location: LCCOMB_X48_Y70_N28
\Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~10_combout\ = (\Mux31~9_combout\) # ((\Mux29~7_combout\ & (\Mux31~3_combout\)) # (!\Mux29~7_combout\ & ((\Mux31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~3_combout\,
	datab => \Mux31~8_combout\,
	datac => \Mux31~9_combout\,
	datad => \Mux29~7_combout\,
	combout => \Mux31~10_combout\);

-- Location: LCCOMB_X48_Y70_N6
\Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~11_combout\ = (\Mux31~12_combout\ & ((\Mux31~10_combout\) # ((\Add0~96_combout\ & \Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~96_combout\,
	datab => \Mux31~12_combout\,
	datac => \Mux31~3_combout\,
	datad => \Mux31~10_combout\,
	combout => \Mux31~11_combout\);

-- Location: LCCOMB_X48_Y70_N22
\reg_out[31]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_out[31]$latch~combout\ = (GLOBAL(\Mux32~0clkctrl_outclk\) & ((\reg_out[31]$latch~combout\))) # (!GLOBAL(\Mux32~0clkctrl_outclk\) & (\Mux31~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~11_combout\,
	datac => \reg_out[31]$latch~combout\,
	datad => \Mux32~0clkctrl_outclk\,
	combout => \reg_out[31]$latch~combout\);

-- Location: LCCOMB_X49_Y69_N10
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\reg_out[29]$latch~combout\ & (!\reg_out[31]$latch~combout\ & (!\reg_out[28]$latch~combout\ & !\reg_out[30]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[29]$latch~combout\,
	datab => \reg_out[31]$latch~combout\,
	datac => \reg_out[28]$latch~combout\,
	datad => \reg_out[30]$latch~combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X50_Y69_N28
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\reg_out[18]$latch~combout\ & (!\reg_out[16]$latch~combout\ & (!\reg_out[19]$latch~combout\ & !\reg_out[17]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[18]$latch~combout\,
	datab => \reg_out[16]$latch~combout\,
	datac => \reg_out[19]$latch~combout\,
	datad => \reg_out[17]$latch~combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X50_Y71_N4
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\reg_out[20]$latch~combout\ & !\reg_out[21]$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_out[20]$latch~combout\,
	datad => \reg_out[21]$latch~combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X49_Y69_N16
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\reg_out[22]$latch~combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & !\reg_out[23]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[22]$latch~combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \reg_out[23]$latch~combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X50_Y72_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\reg_out[7]$latch~combout\ & (!\reg_out[4]$latch~combout\ & (!\reg_out[5]$latch~combout\ & !\reg_out[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[7]$latch~combout\,
	datab => \reg_out[4]$latch~combout\,
	datac => \reg_out[5]$latch~combout\,
	datad => \reg_out[6]$latch~combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X52_Y71_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\reg_out[13]$latch~combout\ & (!\reg_out[15]$latch~combout\ & (!\reg_out[12]$latch~combout\ & !\reg_out[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[13]$latch~combout\,
	datab => \reg_out[15]$latch~combout\,
	datac => \reg_out[12]$latch~combout\,
	datad => \reg_out[14]$latch~combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X48_Y72_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\reg_out[1]$latch~combout\ & (!\reg_out[0]$latch~combout\ & (!\reg_out[2]$latch~combout\ & !\reg_out[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[1]$latch~combout\,
	datab => \reg_out[0]$latch~combout\,
	datac => \reg_out[2]$latch~combout\,
	datad => \reg_out[3]$latch~combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X52_Y72_N16
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\reg_out[11]$latch~combout\ & (!\reg_out[8]$latch~combout\ & (!\reg_out[9]$latch~combout\ & !\reg_out[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[11]$latch~combout\,
	datab => \reg_out[8]$latch~combout\,
	datac => \reg_out[9]$latch~combout\,
	datad => \reg_out[10]$latch~combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X52_Y72_N26
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X47_Y70_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\reg_out[27]$latch~combout\ & (!\reg_out[26]$latch~combout\ & (!\reg_out[24]$latch~combout\ & !\reg_out[25]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_out[27]$latch~combout\,
	datab => \reg_out[26]$latch~combout\,
	datac => \reg_out[24]$latch~combout\,
	datad => \reg_out[25]$latch~combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X49_Y69_N8
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (\Equal0~7_combout\ & (\Equal0~4_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

ww_reg_out(0) <= \reg_out[0]~output_o\;

ww_reg_out(1) <= \reg_out[1]~output_o\;

ww_reg_out(2) <= \reg_out[2]~output_o\;

ww_reg_out(3) <= \reg_out[3]~output_o\;

ww_reg_out(4) <= \reg_out[4]~output_o\;

ww_reg_out(5) <= \reg_out[5]~output_o\;

ww_reg_out(6) <= \reg_out[6]~output_o\;

ww_reg_out(7) <= \reg_out[7]~output_o\;

ww_reg_out(8) <= \reg_out[8]~output_o\;

ww_reg_out(9) <= \reg_out[9]~output_o\;

ww_reg_out(10) <= \reg_out[10]~output_o\;

ww_reg_out(11) <= \reg_out[11]~output_o\;

ww_reg_out(12) <= \reg_out[12]~output_o\;

ww_reg_out(13) <= \reg_out[13]~output_o\;

ww_reg_out(14) <= \reg_out[14]~output_o\;

ww_reg_out(15) <= \reg_out[15]~output_o\;

ww_reg_out(16) <= \reg_out[16]~output_o\;

ww_reg_out(17) <= \reg_out[17]~output_o\;

ww_reg_out(18) <= \reg_out[18]~output_o\;

ww_reg_out(19) <= \reg_out[19]~output_o\;

ww_reg_out(20) <= \reg_out[20]~output_o\;

ww_reg_out(21) <= \reg_out[21]~output_o\;

ww_reg_out(22) <= \reg_out[22]~output_o\;

ww_reg_out(23) <= \reg_out[23]~output_o\;

ww_reg_out(24) <= \reg_out[24]~output_o\;

ww_reg_out(25) <= \reg_out[25]~output_o\;

ww_reg_out(26) <= \reg_out[26]~output_o\;

ww_reg_out(27) <= \reg_out[27]~output_o\;

ww_reg_out(28) <= \reg_out[28]~output_o\;

ww_reg_out(29) <= \reg_out[29]~output_o\;

ww_reg_out(30) <= \reg_out[30]~output_o\;

ww_reg_out(31) <= \reg_out[31]~output_o\;

ww_zero <= \zero~output_o\;
END structure;


