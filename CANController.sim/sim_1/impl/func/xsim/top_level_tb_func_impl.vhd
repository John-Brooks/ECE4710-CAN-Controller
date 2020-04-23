-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Apr 20 20:42:50 2020
-- Host        : DESKTOP-DQL28P8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/John/source/ECE4710-CAN-Controller/CANController.sim/sim_1/impl/func/xsim/top_level_tb_func_impl.vhd
-- Design      : top_level
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bit_sample_clock is
  port (
    sync : out STD_LOGIC;
    \z_reg__0_0\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    debug_out_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_reg[7]_0\ : in STD_LOGIC;
    \counter_reg[7]_1\ : in STD_LOGIC;
    \counter_reg[7]_2\ : in STD_LOGIC;
    \counter_reg[7]_3\ : in STD_LOGIC
  );
end bit_sample_clock;

architecture STRUCTURE of bit_sample_clock is
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \counter[7]_i_5_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sync\ : STD_LOGIC;
  signal z : STD_LOGIC;
  signal z0 : STD_LOGIC;
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \counter[0]_i_1\ : label is 197;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair8";
  attribute \PinAttr:I1:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I1:HOLD_DETOUR\ of \counter[1]_i_1\ : label is 197;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \z__0_i_1\ : label is "soft_lutpair7";
begin
  sync <= \^sync\;
\FSM_onehot_y[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => z,
      I1 => \counter_reg[7]_3\,
      O => \z_reg__0_0\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      I1 => \^sync\,
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \^sync\,
      I1 => sel0(0),
      I2 => sel0(1),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEB"
    )
        port map (
      I0 => \^sync\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFAAAAAAAAB"
    )
        port map (
      I0 => \^sync\,
      I1 => \counter[7]_i_4_n_0\,
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(3),
      O => p_0_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEAAFEAB"
    )
        port map (
      I0 => \^sync\,
      I1 => \counter[7]_i_5_n_0\,
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \counter[7]_i_4_n_0\,
      O => p_0_in(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC00FE01"
    )
        port map (
      I0 => sel0(4),
      I1 => \counter[7]_i_5_n_0\,
      I2 => sel0(3),
      I3 => sel0(5),
      I4 => \counter[7]_i_4_n_0\,
      I5 => \^sync\,
      O => p_0_in(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F04040F"
    )
        port map (
      I0 => \counter[7]_i_5_n_0\,
      I1 => \counter[7]_i_4_n_0\,
      I2 => \^sync\,
      I3 => \counter[7]_i_3_n_0\,
      I4 => sel0(6),
      O => p_0_in(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA9FFA9FFFFFFA9"
    )
        port map (
      I0 => sel0(7),
      I1 => \counter[7]_i_3_n_0\,
      I2 => sel0(6),
      I3 => \^sync\,
      I4 => \counter[7]_i_4_n_0\,
      I5 => \counter[7]_i_5_n_0\,
      O => p_0_in(7)
    );
\counter[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44411141"
    )
        port map (
      I0 => \counter_reg[7]_3\,
      I1 => debug_out_OBUF(0),
      I2 => \counter_reg[7]_0\,
      I3 => \counter_reg[7]_1\,
      I4 => \counter_reg[7]_2\,
      O => \counter[7]_i_2_n_0\
    );
\counter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(3),
      I5 => sel0(5),
      O => \counter[7]_i_3_n_0\
    );
\counter[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(7),
      I4 => sel0(6),
      O => \counter[7]_i_4_n_0\
    );
\counter[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      O => \counter[7]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \counter[7]_i_2_n_0\,
      D => p_0_in(0),
      Q => sel0(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \counter[7]_i_2_n_0\,
      D => p_0_in(1),
      Q => sel0(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \counter[7]_i_2_n_0\,
      D => p_0_in(2),
      Q => sel0(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(3),
      PRE => \counter[7]_i_2_n_0\,
      Q => sel0(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \counter[7]_i_2_n_0\,
      D => p_0_in(4),
      Q => sel0(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \counter[7]_i_2_n_0\,
      D => p_0_in(5),
      Q => sel0(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(6),
      PRE => \counter[7]_i_2_n_0\,
      Q => sel0(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(7),
      PRE => \counter[7]_i_2_n_0\,
      Q => sel0(7)
    );
current_bus_level_C_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => debug_out_OBUF(0),
      I1 => \counter_reg[7]_0\,
      I2 => \counter_reg[7]_1\,
      I3 => \counter_reg[7]_2\,
      O => \^sync\
    );
\z__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \counter[7]_i_4_n_0\,
      I4 => \^sync\,
      O => z0
    );
\z_reg__0\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \counter[7]_i_2_n_0\,
      D => z0,
      Q => z
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter is
  port (
    resetn : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    resetn_IBUF : in STD_LOGIC;
    \FSM_onehot_y_reg[1]\ : in STD_LOGIC;
    \FSM_onehot_y_reg[0]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    debug_out_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end counter;

architecture STRUCTURE of counter is
  signal E_ShiftR : STD_LOGIC;
  signal \FSM_onehot_y[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_y[9]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Qt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \Qt[6]_i_3_n_0\ : STD_LOGIC;
  signal Qt_reg : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal \^resetn\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_y[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_y[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Qt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Qt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Qt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Qt[3]_i_1\ : label is "soft_lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  resetn <= \^resetn\;
\FSM_onehot_y[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF54"
    )
        port map (
      I0 => \FSM_onehot_y[9]_i_4_n_0\,
      I1 => \FSM_onehot_y_reg[0]\(4),
      I2 => \FSM_onehot_y_reg[0]\(8),
      I3 => \FSM_onehot_y_reg[0]\(9),
      O => D(0)
    );
\FSM_onehot_y[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEEE"
    )
        port map (
      I0 => \FSM_onehot_y_reg[1]\,
      I1 => \FSM_onehot_y_reg[0]\(0),
      I2 => \FSM_onehot_y[9]_i_4_n_0\,
      I3 => \FSM_onehot_y_reg[0]\(8),
      I4 => debug_out_OBUF(0),
      O => D(1)
    );
\FSM_onehot_y[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => \FSM_onehot_y[9]_i_4_n_0\,
      I1 => \FSM_onehot_y_reg[0]\(4),
      I2 => debug_out_OBUF(0),
      I3 => \FSM_onehot_y[5]_i_2_n_0\,
      O => D(2)
    );
\FSM_onehot_y[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_y_reg[0]\(0),
      I1 => \FSM_onehot_y_reg[0]\(1),
      I2 => \FSM_onehot_y_reg[0]\(2),
      I3 => \FSM_onehot_y_reg[0]\(3),
      O => \FSM_onehot_y[5]_i_2_n_0\
    );
\FSM_onehot_y[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88C0"
    )
        port map (
      I0 => \FSM_onehot_y_reg[0]\(8),
      I1 => \FSM_onehot_y[9]_i_4_n_0\,
      I2 => \FSM_onehot_y_reg[0]\(4),
      I3 => debug_out_OBUF(0),
      O => D(3)
    );
\FSM_onehot_y[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn_IBUF,
      O => \^resetn\
    );
\FSM_onehot_y[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5757575F"
    )
        port map (
      I0 => Qt_reg(6),
      I1 => Qt_reg(4),
      I2 => Qt_reg(5),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \FSM_onehot_y[9]_i_4_n_0\
    );
\Qt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => Qt0(0)
    );
\Qt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => Qt0(1)
    );
\Qt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => Qt0(2)
    );
\Qt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => Qt0(3)
    );
\Qt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => Qt_reg(4),
      O => Qt0(4)
    );
\Qt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => Qt_reg(4),
      I5 => Qt_reg(5),
      O => Qt0(5)
    );
\Qt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_y_reg[0]\(4),
      I1 => \FSM_onehot_y_reg[0]\(8),
      I2 => \FSM_onehot_y[5]_i_2_n_0\,
      I3 => \FSM_onehot_y_reg[0]\(7),
      I4 => \FSM_onehot_y_reg[0]\(5),
      I5 => \FSM_onehot_y_reg[0]\(6),
      O => E_ShiftR
    );
\Qt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Qt[6]_i_3_n_0\,
      I1 => Qt_reg(5),
      I2 => Qt_reg(6),
      O => Qt0(6)
    );
\Qt[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Qt_reg(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      O => \Qt[6]_i_3_n_0\
    );
\Qt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E_ShiftR,
      CLR => \^resetn\,
      D => Qt0(0),
      Q => \^q\(0)
    );
\Qt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E_ShiftR,
      CLR => \^resetn\,
      D => Qt0(1),
      Q => \^q\(1)
    );
\Qt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E_ShiftR,
      CLR => \^resetn\,
      D => Qt0(2),
      Q => \^q\(2)
    );
\Qt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E_ShiftR,
      CLR => \^resetn\,
      D => Qt0(3),
      Q => \^q\(3)
    );
\Qt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E_ShiftR,
      CLR => \^resetn\,
      D => Qt0(4),
      Q => Qt_reg(4)
    );
\Qt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E_ShiftR,
      CLR => \^resetn\,
      D => Qt0(5),
      Q => Qt_reg(5)
    );
\Qt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E_ShiftR,
      CLR => \^resetn\,
      D => Qt0(6),
      Q => Qt_reg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Destuffer_FSM is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    resetn_IBUF : in STD_LOGIC;
    debug_out_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end Destuffer_FSM;

architecture STRUCTURE of Destuffer_FSM is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_y[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_y[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_y[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_y[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_y[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_y[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_y[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_y_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_y_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_y_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_y_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_y_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_y_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_y_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_y_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_y_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_y_reg_n_0_[9]\ : STD_LOGIC;
  signal con_n_5 : STD_LOGIC;
  signal con_n_6 : STD_LOGIC;
  signal con_n_7 : STD_LOGIC;
  signal con_n_8 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_y[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_y[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_y[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_y[8]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_y_reg[0]\ : label is "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_y_reg[1]\ : label is "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_y_reg[2]\ : label is "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_y_reg[3]\ : label is "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_y_reg[4]\ : label is "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_y_reg[5]\ : label is "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_y_reg[6]\ : label is "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_y_reg[7]\ : label is "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_y_reg[8]\ : label is "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_y_reg[9]\ : label is "s2_1:0001000000,s2_0:0000000100,s1_0:0000000010,s1_1:0000100000,s0:0000000001,s4_1:0100000000,s5:1000000000,s3_0:0000001000,s4_0:0000010000,s3_1:0010000000";
begin
  AR(0) <= \^ar\(0);
\FSM_onehot_y[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[6]\,
      I1 => \FSM_onehot_y_reg_n_0_[5]\,
      I2 => \FSM_onehot_y_reg_n_0_[7]\,
      O => \FSM_onehot_y[1]_i_2_n_0\
    );
\FSM_onehot_y[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[1]\,
      I1 => debug_out_OBUF(0),
      O => \FSM_onehot_y[2]_i_1_n_0\
    );
\FSM_onehot_y[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[2]\,
      I1 => debug_out_OBUF(0),
      O => \FSM_onehot_y[3]_i_1_n_0\
    );
\FSM_onehot_y[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[3]\,
      I1 => debug_out_OBUF(0),
      O => \FSM_onehot_y[4]_i_1_n_0\
    );
\FSM_onehot_y[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[5]\,
      I1 => debug_out_OBUF(0),
      O => \FSM_onehot_y[6]_i_1_n_0\
    );
\FSM_onehot_y[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[6]\,
      I1 => debug_out_OBUF(0),
      O => \FSM_onehot_y[7]_i_1_n_0\
    );
\FSM_onehot_y[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[7]\,
      I1 => debug_out_OBUF(0),
      O => \FSM_onehot_y[8]_i_1_n_0\
    );
\FSM_onehot_y_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => con_n_8,
      PRE => \^ar\(0),
      Q => \FSM_onehot_y_reg_n_0_[0]\
    );
\FSM_onehot_y_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => con_n_7,
      Q => \FSM_onehot_y_reg_n_0_[1]\
    );
\FSM_onehot_y_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_onehot_y[2]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[2]\
    );
\FSM_onehot_y_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_onehot_y[3]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[3]\
    );
\FSM_onehot_y_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_onehot_y[4]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[4]\
    );
\FSM_onehot_y_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => con_n_6,
      Q => \FSM_onehot_y_reg_n_0_[5]\
    );
\FSM_onehot_y_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_onehot_y[6]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[6]\
    );
\FSM_onehot_y_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_onehot_y[7]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[7]\
    );
\FSM_onehot_y_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => \FSM_onehot_y[8]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[8]\
    );
\FSM_onehot_y_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \^ar\(0),
      D => con_n_5,
      Q => \FSM_onehot_y_reg_n_0_[9]\
    );
con: entity work.counter
     port map (
      CLK => CLK,
      D(3) => con_n_5,
      D(2) => con_n_6,
      D(1) => con_n_7,
      D(0) => con_n_8,
      \FSM_onehot_y_reg[0]\(9) => \FSM_onehot_y_reg_n_0_[9]\,
      \FSM_onehot_y_reg[0]\(8) => \FSM_onehot_y_reg_n_0_[8]\,
      \FSM_onehot_y_reg[0]\(7) => \FSM_onehot_y_reg_n_0_[7]\,
      \FSM_onehot_y_reg[0]\(6) => \FSM_onehot_y_reg_n_0_[6]\,
      \FSM_onehot_y_reg[0]\(5) => \FSM_onehot_y_reg_n_0_[5]\,
      \FSM_onehot_y_reg[0]\(4) => \FSM_onehot_y_reg_n_0_[4]\,
      \FSM_onehot_y_reg[0]\(3) => \FSM_onehot_y_reg_n_0_[3]\,
      \FSM_onehot_y_reg[0]\(2) => \FSM_onehot_y_reg_n_0_[2]\,
      \FSM_onehot_y_reg[0]\(1) => \FSM_onehot_y_reg_n_0_[1]\,
      \FSM_onehot_y_reg[0]\(0) => \FSM_onehot_y_reg_n_0_[0]\,
      \FSM_onehot_y_reg[1]\ => \FSM_onehot_y[1]_i_2_n_0\,
      Q(3 downto 0) => Q(3 downto 0),
      debug_out_OBUF(0) => debug_out_OBUF(0),
      resetn => \^ar\(0),
      resetn_IBUF => resetn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SerialDataProcessor is
  port (
    \z_reg__0\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    debug_out_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    frame_in_progress_reg_0 : in STD_LOGIC;
    resetn_IBUF : in STD_LOGIC
  );
end SerialDataProcessor;

architecture STRUCTURE of SerialDataProcessor is
  signal current_bus_level_reg_C_n_0 : STD_LOGIC;
  signal current_bus_level_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal current_bus_level_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal current_bus_level_reg_LDC_n_0 : STD_LOGIC;
  signal current_bus_level_reg_P_n_0 : STD_LOGIC;
  signal frame_in_progress_i_1_n_0 : STD_LOGIC;
  signal frame_in_progress_reg_n_0 : STD_LOGIC;
  signal sync : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of current_bus_level_reg_LDC : label is "LDC";
begin
bsc: entity work.bit_sample_clock
     port map (
      CLK => CLK,
      \counter_reg[7]_0\ => current_bus_level_reg_C_n_0,
      \counter_reg[7]_1\ => current_bus_level_reg_LDC_n_0,
      \counter_reg[7]_2\ => current_bus_level_reg_P_n_0,
      \counter_reg[7]_3\ => frame_in_progress_reg_n_0,
      debug_out_OBUF(0) => debug_out_OBUF(0),
      sync => sync,
      \z_reg__0_0\ => \z_reg__0\
    );
current_bus_level_reg_C: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sync,
      CLR => current_bus_level_reg_LDC_i_2_n_0,
      D => debug_out_OBUF(0),
      Q => current_bus_level_reg_C_n_0
    );
current_bus_level_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => current_bus_level_reg_LDC_i_2_n_0,
      D => '1',
      G => current_bus_level_reg_LDC_i_1_n_0,
      GE => '1',
      Q => current_bus_level_reg_LDC_n_0
    );
current_bus_level_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debug_out_OBUF(0),
      I1 => resetn_IBUF,
      O => current_bus_level_reg_LDC_i_1_n_0
    );
current_bus_level_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn_IBUF,
      I1 => debug_out_OBUF(0),
      O => current_bus_level_reg_LDC_i_2_n_0
    );
current_bus_level_reg_P: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => sync,
      D => debug_out_OBUF(0),
      PRE => current_bus_level_reg_LDC_i_1_n_0,
      Q => current_bus_level_reg_P_n_0
    );
frame_in_progress_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF47B8"
    )
        port map (
      I0 => current_bus_level_reg_P_n_0,
      I1 => current_bus_level_reg_LDC_n_0,
      I2 => current_bus_level_reg_C_n_0,
      I3 => debug_out_OBUF(0),
      I4 => frame_in_progress_reg_n_0,
      O => frame_in_progress_i_1_n_0
    );
frame_in_progress_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => frame_in_progress_reg_0,
      D => frame_in_progress_i_1_n_0,
      Q => frame_in_progress_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_destuffer is
  port (
    resetn : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    resetn_IBUF : in STD_LOGIC;
    debug_out_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end Top_destuffer;

architecture STRUCTURE of Top_destuffer is
begin
FSM_C: entity work.Destuffer_FSM
     port map (
      AR(0) => resetn,
      CLK => CLK,
      Q(3 downto 0) => Q(3 downto 0),
      debug_out_OBUF(0) => debug_out_OBUF(0),
      resetn_IBUF => resetn_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_level is
  port (
    clock : in STD_LOGIC;
    resetn : in STD_LOGIC;
    CAN_rx : in STD_LOGIC;
    CAN_tx : out STD_LOGIC;
    byte_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    debug_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_level : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of top_level : entity is "477e1b18";
end top_level;

architecture STRUCTURE of top_level is
  signal bit_clock : STD_LOGIC;
  signal clock_IBUF : STD_LOGIC;
  signal clock_IBUF_BUFG : STD_LOGIC;
  signal debug_out_OBUF : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ds_impl_n_0 : STD_LOGIC;
  signal resetn_IBUF : STD_LOGIC;
begin
CAN_rx_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CAN_rx,
      O => debug_out_OBUF(5)
    );
CAN_tx_OBUF_inst: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => CAN_tx,
      T => '1'
    );
\byte_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => byte_out(0)
    );
\byte_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => byte_out(1)
    );
\byte_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => byte_out(2)
    );
\byte_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => byte_out(3)
    );
\byte_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => byte_out(4)
    );
\byte_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => byte_out(5)
    );
\byte_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => byte_out(6)
    );
\byte_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => byte_out(7)
    );
clock_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clock_IBUF,
      O => clock_IBUF_BUFG
    );
clock_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clock,
      O => clock_IBUF
    );
\debug_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => debug_out_OBUF(0),
      O => debug_out(0)
    );
\debug_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => debug_out_OBUF(1),
      O => debug_out(1)
    );
\debug_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => debug_out_OBUF(2),
      O => debug_out(2)
    );
\debug_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => debug_out_OBUF(3),
      O => debug_out(3)
    );
\debug_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => debug_out(4)
    );
\debug_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => debug_out_OBUF(5),
      O => debug_out(5)
    );
\debug_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => debug_out(6)
    );
\debug_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => debug_out(7)
    );
ds_impl: entity work.Top_destuffer
     port map (
      CLK => bit_clock,
      Q(3 downto 0) => debug_out_OBUF(3 downto 0),
      debug_out_OBUF(0) => debug_out_OBUF(5),
      resetn => ds_impl_n_0,
      resetn_IBUF => resetn_IBUF
    );
resetn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => resetn,
      O => resetn_IBUF
    );
sdp_impl: entity work.SerialDataProcessor
     port map (
      CLK => clock_IBUF_BUFG,
      debug_out_OBUF(0) => debug_out_OBUF(5),
      frame_in_progress_reg_0 => ds_impl_n_0,
      resetn_IBUF => resetn_IBUF,
      \z_reg__0\ => bit_clock
    );
end STRUCTURE;
