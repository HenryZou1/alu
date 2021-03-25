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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "06/26/2017 13:57:21"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	Clk : IN std_logic;
	A : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	B : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	Op : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	R : OUT IEEE.NUMERIC_STD.signed(7 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- R[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[4]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[2]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Op : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \R[4]~output_o\ : std_logic;
SIGNAL \R[5]~output_o\ : std_logic;
SIGNAL \R[6]~output_o\ : std_logic;
SIGNAL \R[7]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Op[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Op[4]~input_o\ : std_logic;
SIGNAL \Op[3]~input_o\ : std_logic;
SIGNAL \Reg3[0]~0_combout\ : std_logic;
SIGNAL \Op[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Op[7]~input_o\ : std_logic;
SIGNAL \Op[6]~input_o\ : std_logic;
SIGNAL \Reg3[0]~5_combout\ : std_logic;
SIGNAL \Op[2]~input_o\ : std_logic;
SIGNAL \Reg3[0]~4_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Reg3[0]~3_combout\ : std_logic;
SIGNAL \Reg3[0]~1_combout\ : std_logic;
SIGNAL \Reg3[0]~2_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Op[5]~input_o\ : std_logic;
SIGNAL \Reg3[0]~8_combout\ : std_logic;
SIGNAL \Reg3[0]~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~combout\ : std_logic;
SIGNAL \Reg3[0]~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~combout\ : std_logic;
SIGNAL Reg3 : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Clk <= Clk;
ww_A <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(A);
ww_B <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(B);
ww_Op <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(Op);
R <= IEEE.NUMERIC_STD.SIGNED(ww_R);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

-- Location: LCCOMB_X2_Y29_N14
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~15_combout\ & ((\A[4]~input_o\ & (\Add0~14\ & VCC)) # (!\A[4]~input_o\ & (!\Add0~14\)))) # (!\Add0~15_combout\ & ((\A[4]~input_o\ & (!\Add0~14\)) # (!\A[4]~input_o\ & ((\Add0~14\) # (GND)))))
-- \Add0~17\ = CARRY((\Add0~15_combout\ & (!\A[4]~input_o\ & !\Add0~14\)) # (!\Add0~15_combout\ & ((!\Add0~14\) # (!\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X2_Y29_N18
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Add0~21_combout\ & ((\A[6]~input_o\ & (\Add0~20\ & VCC)) # (!\A[6]~input_o\ & (!\Add0~20\)))) # (!\Add0~21_combout\ & ((\A[6]~input_o\ & (!\Add0~20\)) # (!\A[6]~input_o\ & ((\Add0~20\) # (GND)))))
-- \Add0~23\ = CARRY((\Add0~21_combout\ & (!\A[6]~input_o\ & !\Add0~20\)) # (!\Add0~21_combout\ & ((!\Add0~20\) # (!\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X1_Y29_N2
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Op[1]~input_o\ & (!\Op[0]~input_o\ & (!\Op[2]~input_o\ & \Reg3[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \Reg3[0]~0_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y29_N10
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\Reg3[0]~3_combout\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \Reg3[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => \Reg3[0]~3_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X1_Y29_N12
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Reg3[0]~2_combout\ & (((\Reg3[0]~3_combout\ & !\Mux7~9_combout\)) # (!\Mux7~2_combout\))) # (!\Reg3[0]~2_combout\ & (((!\Reg3[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Reg3[0]~3_combout\,
	datac => \Reg3[0]~2_combout\,
	datad => \Mux7~9_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X3_Y29_N20
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\B[0]~input_o\ & ((!\Reg3[0]~8_combout\) # (!\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => \Reg3[0]~8_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X3_Y29_N6
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Reg3[0]~7_combout\ & ((\Mux7~7_combout\) # ((\Reg3[0]~8_combout\ & \Reg3[0]~6_combout\)))) # (!\Reg3[0]~7_combout\ & (!\Reg3[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3[0]~7_combout\,
	datab => \Reg3[0]~8_combout\,
	datac => \Reg3[0]~6_combout\,
	datad => \Mux7~7_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X2_Y29_N26
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \B[1]~input_o\ $ (\Op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => \Op[1]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X1_Y29_N16
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # (\Reg3[0]~3_combout\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & \Reg3[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Reg3[0]~3_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X2_Y29_N22
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \B[2]~input_o\ $ (\Op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \Op[1]~input_o\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X3_Y29_N30
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~3_combout\ & ((\Op[0]~input_o\ $ (\Op[1]~input_o\)))) # (!\Mux5~3_combout\ & (\A[2]~input_o\ & (!\Op[0]~input_o\ & !\Op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \A[2]~input_o\,
	datac => \Op[0]~input_o\,
	datad => \Op[1]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X3_Y29_N28
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\B[2]~input_o\ & ((!\Reg3[0]~8_combout\) # (!\A[2]~input_o\))) # (!\B[2]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Reg3[0]~8_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X3_Y29_N22
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Reg3[0]~7_combout\ & ((\Mux5~7_combout\) # ((\Reg3[0]~8_combout\ & \Reg3[0]~6_combout\)))) # (!\Reg3[0]~7_combout\ & (!\Reg3[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3[0]~7_combout\,
	datab => \Reg3[0]~8_combout\,
	datac => \Reg3[0]~6_combout\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X2_Y30_N18
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\A[3]~input_o\ & ((!\B[3]~input_o\) # (!\Reg3[0]~8_combout\))) # (!\A[3]~input_o\ & ((\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \Reg3[0]~8_combout\,
	datad => \B[3]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X2_Y30_N12
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Reg3[0]~7_combout\ & ((\Mux4~7_combout\) # ((\Reg3[0]~8_combout\ & \Reg3[0]~6_combout\)))) # (!\Reg3[0]~7_combout\ & (((!\Reg3[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3[0]~7_combout\,
	datab => \Mux4~7_combout\,
	datac => \Reg3[0]~8_combout\,
	datad => \Reg3[0]~6_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X1_Y30_N28
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \Op[1]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X1_Y30_N30
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\B[4]~input_o\ & ((\Reg3[0]~3_combout\) # (\A[4]~input_o\))) # (!\B[4]~input_o\ & (\Reg3[0]~3_combout\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Reg3[0]~3_combout\,
	datac => \A[4]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X1_Y30_N0
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Reg3[0]~2_combout\ & (((\Reg3[0]~3_combout\ & !\Mux7~9_combout\)) # (!\Mux3~2_combout\))) # (!\Reg3[0]~2_combout\ & (((!\Reg3[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Reg3[0]~3_combout\,
	datac => \Mux7~9_combout\,
	datad => \Reg3[0]~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X1_Y30_N26
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & (\Op[1]~input_o\ $ ((\Op[0]~input_o\)))) # (!\Mux3~3_combout\ & (!\Op[1]~input_o\ & (!\Op[0]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X1_Y30_N12
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Reg3[0]~0_combout\ & (((\Add0~16_combout\ & \Mux3~3_combout\)) # (!\Mux3~4_combout\))) # (!\Reg3[0]~0_combout\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Reg3[0]~0_combout\,
	datac => \Add0~16_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X1_Y30_N8
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\A[4]~input_o\ & ((!\B[4]~input_o\) # (!\Reg3[0]~8_combout\))) # (!\A[4]~input_o\ & ((\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \Reg3[0]~8_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X3_Y30_N10
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = ((\A[5]~input_o\ & \B[5]~input_o\)) # (!\Reg3[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Reg3[0]~4_combout\,
	datac => \B[5]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X2_Y29_N28
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = \Op[1]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op[1]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X2_Y30_N24
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # (\Reg3[0]~3_combout\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & \Reg3[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \Reg3[0]~3_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X2_Y30_N10
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Reg3[0]~2_combout\ & (((!\Mux7~9_combout\ & \Reg3[0]~3_combout\)) # (!\Mux1~2_combout\))) # (!\Reg3[0]~2_combout\ & (((!\Reg3[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~9_combout\,
	datab => \Reg3[0]~2_combout\,
	datac => \Reg3[0]~3_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X1_Y29_N8
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux1~3_combout\ & (\Op[1]~input_o\ $ ((\Op[0]~input_o\)))) # (!\Mux1~3_combout\ & (!\Op[1]~input_o\ & (!\Op[0]~input_o\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \Mux1~3_combout\,
	datad => \A[6]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X1_Y29_N18
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Reg3[0]~0_combout\ & (((\Mux1~3_combout\ & \Add0~22_combout\)) # (!\Mux1~4_combout\))) # (!\Reg3[0]~0_combout\ & (\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux1~4_combout\,
	datac => \Reg3[0]~0_combout\,
	datad => \Add0~22_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X1_Y30_N14
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\B[7]~input_o\ & ((!\Reg3[0]~8_combout\) # (!\A[7]~input_o\))) # (!\B[7]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \Reg3[0]~8_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X2_Y30_N2
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Reg3[0]~7_combout\ & ((\Mux0~7_combout\) # ((\Reg3[0]~8_combout\ & \Reg3[0]~6_combout\)))) # (!\Reg3[0]~7_combout\ & (((!\Reg3[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~7_combout\,
	datab => \Reg3[0]~8_combout\,
	datac => \Reg3[0]~7_combout\,
	datad => \Reg3[0]~6_combout\,
	combout => \Mux0~8_combout\);

-- Location: IOIBUF_X0_Y30_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOOBUF_X0_Y24_N16
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Reg3(0),
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Reg3(1),
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Reg3(2),
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Reg3(3),
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Reg3(4),
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Reg3(5),
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Reg3(6),
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Reg3(7),
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y24_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\Op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(1),
	o => \Op[1]~input_o\);

-- Location: LCCOMB_X2_Y29_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \B[0]~input_o\ $ (\Op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \Op[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X2_Y29_N4
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY(\Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datad => VCC,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X2_Y29_N6
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\A[0]~input_o\ & ((\Add0~0_combout\ & (\Add0~3_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~3_cout\)))) # (!\A[0]~input_o\ & ((\Add0~0_combout\ & (!\Add0~3_cout\)) # (!\Add0~0_combout\ & ((\Add0~3_cout\) # (GND)))))
-- \Add0~5\ = CARRY((\A[0]~input_o\ & (!\Add0~0_combout\ & !\Add0~3_cout\)) # (!\A[0]~input_o\ & ((!\Add0~3_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~3_cout\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: IOIBUF_X0_Y25_N15
\Op[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(4),
	o => \Op[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\Op[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(3),
	o => \Op[3]~input_o\);

-- Location: LCCOMB_X1_Y29_N0
\Reg3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg3[0]~0_combout\ = (!\Op[4]~input_o\ & !\Op[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op[4]~input_o\,
	datad => \Op[3]~input_o\,
	combout => \Reg3[0]~0_combout\);

-- Location: IOIBUF_X0_Y28_N15
\Op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(0),
	o => \Op[0]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X3_Y29_N14
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\ & (\Op[1]~input_o\ $ ((\Op[0]~input_o\)))) # (!\Mux7~3_combout\ & (!\Op[1]~input_o\ & (!\Op[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Op[1]~input_o\,
	datac => \Op[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X3_Y29_N24
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Reg3[0]~0_combout\ & (((\Mux7~3_combout\ & \Add0~4_combout\)) # (!\Mux7~4_combout\))) # (!\Reg3[0]~0_combout\ & (\Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Add0~4_combout\,
	datac => \Reg3[0]~0_combout\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: IOIBUF_X0_Y33_N15
\Op[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(7),
	o => \Op[7]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\Op[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(6),
	o => \Op[6]~input_o\);

-- Location: LCCOMB_X2_Y30_N26
\Reg3[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg3[0]~5_combout\ = (\Op[7]~input_o\) # (\Op[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op[7]~input_o\,
	datac => \Op[6]~input_o\,
	combout => \Reg3[0]~5_combout\);

-- Location: IOIBUF_X0_Y22_N15
\Op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(2),
	o => \Op[2]~input_o\);

-- Location: LCCOMB_X1_Y29_N6
\Reg3[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg3[0]~4_combout\ = (!\Op[1]~input_o\ & (!\Op[0]~input_o\ & (!\Op[2]~input_o\ & \Reg3[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \Reg3[0]~0_combout\,
	combout => \Reg3[0]~4_combout\);

-- Location: LCCOMB_X3_Y29_N2
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = ((\B[0]~input_o\ & \A[0]~input_o\)) # (!\Reg3[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => \Reg3[0]~4_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X3_Y29_N16
Mux7 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~combout\ = (\Mux7~8_combout\ & ((\Mux7~5_combout\) # ((\Reg3[0]~5_combout\)))) # (!\Mux7~8_combout\ & (((!\Reg3[0]~5_combout\ & \Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~8_combout\,
	datab => \Mux7~5_combout\,
	datac => \Reg3[0]~5_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~combout\);

-- Location: FF_X3_Y29_N17
\Reg3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg3(0));

-- Location: IOIBUF_X0_Y29_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X3_Y29_N8
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = ((\A[1]~input_o\ & \B[1]~input_o\)) # (!\Reg3[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Reg3[0]~4_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X1_Y29_N24
\Reg3[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg3[0]~3_combout\ = (\Op[4]~input_o\) # ((\Op[2]~input_o\ & !\Op[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op[4]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \Op[3]~input_o\,
	combout => \Reg3[0]~3_combout\);

-- Location: LCCOMB_X1_Y29_N20
\Reg3[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg3[0]~1_combout\ = (!\Op[0]~input_o\ & !\Op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op[0]~input_o\,
	datad => \Op[1]~input_o\,
	combout => \Reg3[0]~1_combout\);

-- Location: LCCOMB_X1_Y29_N22
\Reg3[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg3[0]~2_combout\ = (\Op[4]~input_o\) # ((\Op[3]~input_o\ & (!\Op[2]~input_o\ & \Reg3[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[3]~input_o\,
	datab => \Op[4]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \Reg3[0]~1_combout\,
	combout => \Reg3[0]~2_combout\);

-- Location: LCCOMB_X1_Y29_N28
\Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (!\Op[1]~input_o\ & (!\Op[3]~input_o\ & (!\Op[2]~input_o\ & !\Op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[3]~input_o\,
	datac => \Op[2]~input_o\,
	datad => \Op[0]~input_o\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X1_Y29_N26
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Reg3[0]~2_combout\ & (((\Reg3[0]~3_combout\ & !\Mux7~9_combout\)) # (!\Mux6~2_combout\))) # (!\Reg3[0]~2_combout\ & (((!\Reg3[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Reg3[0]~3_combout\,
	datac => \Reg3[0]~2_combout\,
	datad => \Mux7~9_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X1_Y29_N4
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux6~3_combout\ & (\Op[1]~input_o\ $ ((\Op[0]~input_o\)))) # (!\Mux6~3_combout\ & (!\Op[1]~input_o\ & (!\Op[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \A[1]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X2_Y29_N8
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = ((\Add0~6_combout\ $ (\A[1]~input_o\ $ (!\Add0~5\)))) # (GND)
-- \Add0~8\ = CARRY((\Add0~6_combout\ & ((\A[1]~input_o\) # (!\Add0~5\))) # (!\Add0~6_combout\ & (\A[1]~input_o\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X1_Y29_N14
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Reg3[0]~0_combout\ & (((\Mux6~3_combout\ & \Add0~7_combout\)) # (!\Mux6~4_combout\))) # (!\Reg3[0]~0_combout\ & (\Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux6~4_combout\,
	datac => \Add0~7_combout\,
	datad => \Reg3[0]~0_combout\,
	combout => \Mux6~5_combout\);

-- Location: IOIBUF_X0_Y33_N22
\Op[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op(5),
	o => \Op[5]~input_o\);

-- Location: LCCOMB_X2_Y30_N8
\Reg3[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg3[0]~8_combout\ = (\Op[7]~input_o\) # ((!\Op[6]~input_o\ & \Op[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[6]~input_o\,
	datab => \Op[7]~input_o\,
	datac => \Op[5]~input_o\,
	combout => \Reg3[0]~8_combout\);

-- Location: LCCOMB_X2_Y30_N28
\Reg3[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg3[0]~6_combout\ = (\Op[6]~input_o\) # ((\Op[5]~input_o\) # (!\Reg3[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[6]~input_o\,
	datab => \Reg3[0]~4_combout\,
	datac => \Op[5]~input_o\,
	combout => \Reg3[0]~6_combout\);

-- Location: LCCOMB_X3_Y29_N10
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\A[1]~input_o\ & ((!\Reg3[0]~8_combout\) # (!\B[1]~input_o\))) # (!\A[1]~input_o\ & (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Reg3[0]~8_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X3_Y29_N12
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Reg3[0]~7_combout\ & ((\Mux6~7_combout\) # ((\Reg3[0]~8_combout\ & \Reg3[0]~6_combout\)))) # (!\Reg3[0]~7_combout\ & (!\Reg3[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3[0]~7_combout\,
	datab => \Reg3[0]~8_combout\,
	datac => \Reg3[0]~6_combout\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X3_Y29_N26
Mux6 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~combout\ = (\Reg3[0]~5_combout\ & (((\Mux6~8_combout\)))) # (!\Reg3[0]~5_combout\ & ((\Mux6~8_combout\ & ((\Mux6~5_combout\))) # (!\Mux6~8_combout\ & (\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3[0]~5_combout\,
	datab => \Mux6~6_combout\,
	datac => \Mux6~5_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux6~combout\);

-- Location: FF_X3_Y29_N27
\Reg3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg3(1));

-- Location: IOIBUF_X0_Y31_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X3_Y29_N18
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = ((\B[2]~input_o\ & \A[2]~input_o\)) # (!\Reg3[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \Reg3[0]~4_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X3_Y30_N28
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\A[2]~input_o\ & ((\Reg3[0]~3_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\Reg3[0]~3_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Reg3[0]~3_combout\,
	datac => \B[2]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X3_Y30_N30
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Reg3[0]~2_combout\ & (((!\Mux7~9_combout\ & \Reg3[0]~3_combout\)) # (!\Mux5~2_combout\))) # (!\Reg3[0]~2_combout\ & (((!\Reg3[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~9_combout\,
	datab => \Reg3[0]~2_combout\,
	datac => \Reg3[0]~3_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X2_Y29_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~9_combout\ & ((\A[2]~input_o\ & (\Add0~8\ & VCC)) # (!\A[2]~input_o\ & (!\Add0~8\)))) # (!\Add0~9_combout\ & ((\A[2]~input_o\ & (!\Add0~8\)) # (!\A[2]~input_o\ & ((\Add0~8\) # (GND)))))
-- \Add0~11\ = CARRY((\Add0~9_combout\ & (!\A[2]~input_o\ & !\Add0~8\)) # (!\Add0~9_combout\ & ((!\Add0~8\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X3_Y29_N0
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Reg3[0]~0_combout\ & (((\Mux5~3_combout\ & \Add0~10_combout\)) # (!\Mux5~4_combout\))) # (!\Reg3[0]~0_combout\ & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Reg3[0]~0_combout\,
	datac => \Mux5~3_combout\,
	datad => \Add0~10_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X3_Y29_N4
Mux5 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~combout\ = (\Mux5~8_combout\ & (((\Reg3[0]~5_combout\) # (\Mux5~5_combout\)))) # (!\Mux5~8_combout\ & (\Mux5~6_combout\ & (!\Reg3[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~8_combout\,
	datab => \Mux5~6_combout\,
	datac => \Reg3[0]~5_combout\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~combout\);

-- Location: FF_X3_Y29_N5
\Reg3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg3(2));

-- Location: IOIBUF_X0_Y32_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X2_Y29_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \Op[1]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X2_Y29_N12
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = ((\A[3]~input_o\ $ (\Add0~12_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~14\ = CARRY((\A[3]~input_o\ & ((\Add0~12_combout\) # (!\Add0~11\))) # (!\A[3]~input_o\ & (\Add0~12_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: IOIBUF_X0_Y26_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X3_Y30_N8
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\A[3]~input_o\ & ((\Reg3[0]~3_combout\) # (\B[3]~input_o\))) # (!\A[3]~input_o\ & (\Reg3[0]~3_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Reg3[0]~3_combout\,
	datac => \B[3]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X3_Y30_N2
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Reg3[0]~2_combout\ & (((!\Mux7~9_combout\ & \Reg3[0]~3_combout\)) # (!\Mux4~2_combout\))) # (!\Reg3[0]~2_combout\ & (((!\Reg3[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~9_combout\,
	datab => \Reg3[0]~3_combout\,
	datac => \Mux4~2_combout\,
	datad => \Reg3[0]~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X3_Y30_N4
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~3_combout\ & (\Op[1]~input_o\ $ ((\Op[0]~input_o\)))) # (!\Mux4~3_combout\ & (!\Op[1]~input_o\ & (!\Op[0]~input_o\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X3_Y30_N14
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Reg3[0]~0_combout\ & (((\Mux4~3_combout\ & \Add0~13_combout\)) # (!\Mux4~4_combout\))) # (!\Reg3[0]~0_combout\ & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Add0~13_combout\,
	datac => \Mux4~4_combout\,
	datad => \Reg3[0]~0_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X3_Y30_N0
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = ((\A[3]~input_o\ & \B[3]~input_o\)) # (!\Reg3[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Reg3[0]~4_combout\,
	datac => \B[3]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X3_Y30_N24
Mux4 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~combout\ = (\Mux4~8_combout\ & ((\Mux4~5_combout\) # ((\Reg3[0]~5_combout\)))) # (!\Mux4~8_combout\ & (((!\Reg3[0]~5_combout\ & \Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~8_combout\,
	datab => \Mux4~5_combout\,
	datac => \Reg3[0]~5_combout\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~combout\);

-- Location: FF_X3_Y30_N25
\Reg3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg3(3));

-- Location: LCCOMB_X2_Y30_N30
\Reg3[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg3[0]~7_combout\ = (\Op[7]~input_o\) # ((\Op[6]~input_o\ & (\Reg3[0]~4_combout\ & !\Op[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[6]~input_o\,
	datab => \Op[7]~input_o\,
	datac => \Reg3[0]~4_combout\,
	datad => \Op[5]~input_o\,
	combout => \Reg3[0]~7_combout\);

-- Location: LCCOMB_X2_Y30_N22
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Reg3[0]~7_combout\ & ((\Mux3~7_combout\) # ((\Reg3[0]~8_combout\ & \Reg3[0]~6_combout\)))) # (!\Reg3[0]~7_combout\ & (((!\Reg3[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \Reg3[0]~8_combout\,
	datac => \Reg3[0]~7_combout\,
	datad => \Reg3[0]~6_combout\,
	combout => \Mux3~8_combout\);

-- Location: IOIBUF_X0_Y24_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X1_Y30_N6
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = ((\B[4]~input_o\ & \A[4]~input_o\)) # (!\Reg3[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Reg3[0]~4_combout\,
	datac => \A[4]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X1_Y30_N16
Mux3 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~combout\ = (\Mux3~8_combout\ & ((\Mux3~5_combout\) # ((\Reg3[0]~5_combout\)))) # (!\Mux3~8_combout\ & (((\Mux3~6_combout\ & !\Reg3[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Mux3~8_combout\,
	datac => \Mux3~6_combout\,
	datad => \Reg3[0]~5_combout\,
	combout => \Mux3~combout\);

-- Location: FF_X1_Y30_N17
\Reg3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg3(4));

-- Location: IOIBUF_X0_Y35_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X2_Y29_N2
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Op[1]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op[1]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X2_Y29_N16
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = ((\A[5]~input_o\ $ (\Add0~18_combout\ $ (!\Add0~17\)))) # (GND)
-- \Add0~20\ = CARRY((\A[5]~input_o\ & ((\Add0~18_combout\) # (!\Add0~17\))) # (!\A[5]~input_o\ & (\Add0~18_combout\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: IOIBUF_X0_Y23_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X3_Y30_N18
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\A[5]~input_o\ & ((\Reg3[0]~3_combout\) # (\B[5]~input_o\))) # (!\A[5]~input_o\ & (\Reg3[0]~3_combout\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Reg3[0]~3_combout\,
	datac => \B[5]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X3_Y30_N12
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Reg3[0]~2_combout\ & (((!\Mux7~9_combout\ & \Reg3[0]~3_combout\)) # (!\Mux2~2_combout\))) # (!\Reg3[0]~2_combout\ & (((!\Reg3[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~9_combout\,
	datab => \Reg3[0]~2_combout\,
	datac => \Reg3[0]~3_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X3_Y30_N22
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~3_combout\ & (\Op[1]~input_o\ $ ((\Op[0]~input_o\)))) # (!\Mux2~3_combout\ & (!\Op[1]~input_o\ & (!\Op[0]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \A[5]~input_o\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X3_Y30_N16
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Reg3[0]~0_combout\ & (((\Mux2~3_combout\ & \Add0~19_combout\)) # (!\Mux2~4_combout\))) # (!\Reg3[0]~0_combout\ & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Add0~19_combout\,
	datac => \Mux2~4_combout\,
	datad => \Reg3[0]~0_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X3_Y30_N20
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\A[5]~input_o\ & ((!\Reg3[0]~8_combout\) # (!\B[5]~input_o\))) # (!\A[5]~input_o\ & (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Reg3[0]~8_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X3_Y30_N6
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Reg3[0]~7_combout\ & ((\Mux2~7_combout\) # ((\Reg3[0]~8_combout\ & \Reg3[0]~6_combout\)))) # (!\Reg3[0]~7_combout\ & (!\Reg3[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3[0]~8_combout\,
	datab => \Reg3[0]~7_combout\,
	datac => \Reg3[0]~6_combout\,
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X3_Y30_N26
Mux2 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~combout\ = (\Reg3[0]~5_combout\ & (((\Mux2~8_combout\)))) # (!\Reg3[0]~5_combout\ & ((\Mux2~8_combout\ & ((\Mux2~5_combout\))) # (!\Mux2~8_combout\ & (\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \Mux2~5_combout\,
	datac => \Reg3[0]~5_combout\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~combout\);

-- Location: FF_X3_Y30_N27
\Reg3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg3(5));

-- Location: IOIBUF_X0_Y32_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X2_Y30_N14
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\B[6]~input_o\ & ((!\Reg3[0]~8_combout\) # (!\A[6]~input_o\))) # (!\B[6]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	datad => \Reg3[0]~8_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X2_Y30_N16
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Reg3[0]~7_combout\ & ((\Mux1~7_combout\) # ((\Reg3[0]~8_combout\ & \Reg3[0]~6_combout\)))) # (!\Reg3[0]~7_combout\ & (!\Reg3[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3[0]~7_combout\,
	datab => \Reg3[0]~8_combout\,
	datac => \Mux1~7_combout\,
	datad => \Reg3[0]~6_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X2_Y30_N20
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = ((\A[6]~input_o\ & \B[6]~input_o\)) # (!\Reg3[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \Reg3[0]~4_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X2_Y30_N0
Mux1 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~combout\ = (\Mux1~8_combout\ & ((\Mux1~5_combout\) # ((\Reg3[0]~5_combout\)))) # (!\Mux1~8_combout\ & (((!\Reg3[0]~5_combout\ & \Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \Mux1~8_combout\,
	datac => \Reg3[0]~5_combout\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~combout\);

-- Location: FF_X2_Y30_N1
\Reg3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg3(6));

-- Location: IOIBUF_X0_Y23_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X1_Y30_N20
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # (\Reg3[0]~3_combout\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & \Reg3[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \Reg3[0]~3_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X1_Y30_N22
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Reg3[0]~2_combout\ & (((\Reg3[0]~3_combout\ & !\Mux7~9_combout\)) # (!\Mux0~2_combout\))) # (!\Reg3[0]~2_combout\ & (!\Reg3[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3[0]~2_combout\,
	datab => \Reg3[0]~3_combout\,
	datac => \Mux7~9_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X1_Y30_N24
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux0~3_combout\ & (\Op[1]~input_o\ $ ((\Op[0]~input_o\)))) # (!\Mux0~3_combout\ & (!\Op[1]~input_o\ & (!\Op[0]~input_o\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datab => \Op[0]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \A[7]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: IOIBUF_X0_Y30_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X1_Y30_N2
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \Op[1]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op[1]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X2_Y29_N20
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = \A[7]~input_o\ $ (\Add0~23\ $ (!\Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \Add0~24_combout\,
	cin => \Add0~23\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X1_Y30_N18
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Reg3[0]~0_combout\ & (((\Mux0~3_combout\ & \Add0~25_combout\)) # (!\Mux0~4_combout\))) # (!\Reg3[0]~0_combout\ & (((\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg3[0]~0_combout\,
	datab => \Mux0~4_combout\,
	datac => \Mux0~3_combout\,
	datad => \Add0~25_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X1_Y30_N4
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = ((\B[7]~input_o\ & \A[7]~input_o\)) # (!\Reg3[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \Reg3[0]~4_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X1_Y30_N10
Mux0 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~combout\ = (\Mux0~8_combout\ & ((\Mux0~5_combout\) # ((\Reg3[0]~5_combout\)))) # (!\Mux0~8_combout\ & (((\Mux0~6_combout\ & !\Reg3[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~8_combout\,
	datab => \Mux0~5_combout\,
	datac => \Mux0~6_combout\,
	datad => \Reg3[0]~5_combout\,
	combout => \Mux0~combout\);

-- Location: FF_X1_Y30_N11
\Reg3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Mux0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg3(7));

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(7) <= \R[7]~output_o\;
END structure;


