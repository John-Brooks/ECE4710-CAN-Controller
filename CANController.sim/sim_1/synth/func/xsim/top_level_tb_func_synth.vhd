-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Apr 20 21:24:12 2020
-- Host        : DESKTOP-DQL28P8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/John/source/ECE4710-CAN-Controller/CANController.sim/sim_1/synth/func/xsim/top_level_tb_func_synth.vhd
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
    bit_clock : out STD_LOGIC;
    CLK : in STD_LOGIC;
    debug_out_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \z_reg__0_0\ : in STD_LOGIC;
    \z_reg__0_1\ : in STD_LOGIC;
    \z_reg__0_2\ : in STD_LOGIC;
    \z_reg__0_3\ : in STD_LOGIC
  );
end bit_sample_clock;

architecture STRUCTURE of bit_sample_clock is
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter[7]_i_5_n_0\ : STD_LOGIC;
  signal \counter[7]_i_6_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sync : STD_LOGIC;
  signal z : STD_LOGIC;
  signal z0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \z__0_i_1\ : label is "soft_lutpair6";
begin
bit_clock_BUFG_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => z,
      I1 => \z_reg__0_3\,
      O => bit_clock
    );
\counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      I1 => sync,
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => sync,
      I1 => sel0(0),
      I2 => sel0(1),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEB"
    )
        port map (
      I0 => sync,
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
      I0 => sync,
      I1 => \counter[7]_i_5_n_0\,
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
      I0 => sync,
      I1 => \counter[7]_i_6_n_0\,
      I2 => sel0(3),
      I3 => sel0(4),
      I4 => \counter[7]_i_5_n_0\,
      O => p_0_in(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC00FE01"
    )
        port map (
      I0 => sel0(4),
      I1 => \counter[7]_i_6_n_0\,
      I2 => sel0(3),
      I3 => sel0(5),
      I4 => \counter[7]_i_5_n_0\,
      I5 => sync,
      O => p_0_in(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F04040F"
    )
        port map (
      I0 => \counter[7]_i_6_n_0\,
      I1 => \counter[7]_i_5_n_0\,
      I2 => sync,
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
      I3 => sync,
      I4 => \counter[7]_i_5_n_0\,
      I5 => \counter[7]_i_6_n_0\,
      O => p_0_in(7)
    );
\counter[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B847"
    )
        port map (
      I0 => \z_reg__0_2\,
      I1 => \z_reg__0_1\,
      I2 => \z_reg__0_0\,
      I3 => debug_out_OBUF(0),
      I4 => \z_reg__0_3\,
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
\counter[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => debug_out_OBUF(0),
      I1 => \z_reg__0_0\,
      I2 => \z_reg__0_1\,
      I3 => \z_reg__0_2\,
      O => sync
    );
\counter[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(7),
      I4 => sel0(6),
      O => \counter[7]_i_5_n_0\
    );
\counter[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      O => \counter[7]_i_6_n_0\
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
\z__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => \counter[7]_i_5_n_0\,
      I4 => sync,
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
    debug_out_OBUF : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_y_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    bit_clock_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \FSM_onehot_y_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end counter;

architecture STRUCTURE of counter is
  signal \FSM_onehot_y[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_y[9]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_y_reg[0]\ : STD_LOGIC;
  signal \Qt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Qt[1]_i_1_n_0\ : STD_LOGIC;
  signal \Qt[2]_i_1_n_0\ : STD_LOGIC;
  signal \Qt[3]_i_1_n_0\ : STD_LOGIC;
  signal \Qt[4]_i_1_n_0\ : STD_LOGIC;
  signal \Qt[4]_i_2_n_0\ : STD_LOGIC;
  signal \Qt[5]_i_1_n_0\ : STD_LOGIC;
  signal \Qt[6]_i_1_n_0\ : STD_LOGIC;
  signal \Qt[6]_i_2_n_0\ : STD_LOGIC;
  signal \Qt[6]_i_3_n_0\ : STD_LOGIC;
  signal Qt_reg : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal \^debug_out_obuf\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal z_i_1_n_0 : STD_LOGIC;
  signal z_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_y[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_y[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Qt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Qt[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Qt[6]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of z_i_2 : label is "soft_lutpair0";
begin
  \FSM_onehot_y_reg[0]\ <= \^fsm_onehot_y_reg[0]\;
  debug_out_OBUF(4 downto 0) <= \^debug_out_obuf\(4 downto 0);
\FSM_onehot_y[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF54"
    )
        port map (
      I0 => \FSM_onehot_y[9]_i_3_n_0\,
      I1 => Q(4),
      I2 => Q(8),
      I3 => Q(9),
      O => D(0)
    );
\FSM_onehot_y[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEEE"
    )
        port map (
      I0 => \FSM_onehot_y[1]_i_2_n_0\,
      I1 => Q(0),
      I2 => \FSM_onehot_y[9]_i_3_n_0\,
      I3 => Q(8),
      I4 => \FSM_onehot_y_reg[1]\(0),
      O => D(1)
    );
\FSM_onehot_y[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(7),
      O => \FSM_onehot_y[1]_i_2_n_0\
    );
\FSM_onehot_y[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => \FSM_onehot_y[9]_i_3_n_0\,
      I1 => Q(4),
      I2 => \FSM_onehot_y_reg[1]\(0),
      I3 => \^fsm_onehot_y_reg[0]\,
      O => D(2)
    );
\FSM_onehot_y[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88C0"
    )
        port map (
      I0 => Q(8),
      I1 => \FSM_onehot_y[9]_i_3_n_0\,
      I2 => Q(4),
      I3 => \FSM_onehot_y_reg[1]\(0),
      O => D(3)
    );
\FSM_onehot_y[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5757575F"
    )
        port map (
      I0 => Qt_reg(6),
      I1 => Qt_reg(4),
      I2 => Qt_reg(5),
      I3 => \^debug_out_obuf\(2),
      I4 => \^debug_out_obuf\(3),
      O => \FSM_onehot_y[9]_i_3_n_0\
    );
\Qt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \FSM_onehot_y[1]_i_2_n_0\,
      I1 => \^fsm_onehot_y_reg[0]\,
      I2 => Q(8),
      I3 => Q(4),
      I4 => \^debug_out_obuf\(0),
      O => \Qt[0]_i_1_n_0\
    );
\Qt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557AAAAAAA8"
    )
        port map (
      I0 => \^debug_out_obuf\(0),
      I1 => Q(4),
      I2 => Q(8),
      I3 => \^fsm_onehot_y_reg[0]\,
      I4 => \FSM_onehot_y[1]_i_2_n_0\,
      I5 => \^debug_out_obuf\(1),
      O => \Qt[1]_i_1_n_0\
    );
\Qt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFA800"
    )
        port map (
      I0 => \^debug_out_obuf\(1),
      I1 => \FSM_onehot_y[1]_i_2_n_0\,
      I2 => \Qt[6]_i_2_n_0\,
      I3 => \^debug_out_obuf\(0),
      I4 => \^debug_out_obuf\(2),
      O => \Qt[2]_i_1_n_0\
    );
\Qt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557AAAAAAA8"
    )
        port map (
      I0 => \Qt[4]_i_2_n_0\,
      I1 => Q(4),
      I2 => Q(8),
      I3 => \^fsm_onehot_y_reg[0]\,
      I4 => \FSM_onehot_y[1]_i_2_n_0\,
      I5 => \^debug_out_obuf\(3),
      O => \Qt[3]_i_1_n_0\
    );
\Qt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFA800"
    )
        port map (
      I0 => \^debug_out_obuf\(3),
      I1 => \FSM_onehot_y[1]_i_2_n_0\,
      I2 => \Qt[6]_i_2_n_0\,
      I3 => \Qt[4]_i_2_n_0\,
      I4 => Qt_reg(4),
      O => \Qt[4]_i_1_n_0\
    );
\Qt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^debug_out_obuf\(2),
      I1 => \^debug_out_obuf\(1),
      I2 => \^debug_out_obuf\(0),
      O => \Qt[4]_i_2_n_0\
    );
\Qt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557AAAAAAA8"
    )
        port map (
      I0 => \Qt[6]_i_3_n_0\,
      I1 => Q(4),
      I2 => Q(8),
      I3 => \^fsm_onehot_y_reg[0]\,
      I4 => \FSM_onehot_y[1]_i_2_n_0\,
      I5 => Qt_reg(5),
      O => \Qt[5]_i_1_n_0\
    );
\Qt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFA800"
    )
        port map (
      I0 => Qt_reg(5),
      I1 => \FSM_onehot_y[1]_i_2_n_0\,
      I2 => \Qt[6]_i_2_n_0\,
      I3 => \Qt[6]_i_3_n_0\,
      I4 => Qt_reg(6),
      O => \Qt[6]_i_1_n_0\
    );
\Qt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(8),
      I5 => Q(4),
      O => \Qt[6]_i_2_n_0\
    );
\Qt[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^debug_out_obuf\(3),
      I1 => Qt_reg(4),
      I2 => \^debug_out_obuf\(0),
      I3 => \^debug_out_obuf\(1),
      I4 => \^debug_out_obuf\(2),
      O => \Qt[6]_i_3_n_0\
    );
\Qt[88]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      O => \^fsm_onehot_y_reg[0]\
    );
\Qt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \Qt[0]_i_1_n_0\,
      Q => \^debug_out_obuf\(0)
    );
\Qt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \Qt[1]_i_1_n_0\,
      Q => \^debug_out_obuf\(1)
    );
\Qt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \Qt[2]_i_1_n_0\,
      Q => \^debug_out_obuf\(2)
    );
\Qt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \Qt[3]_i_1_n_0\,
      Q => \^debug_out_obuf\(3)
    );
\Qt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \Qt[4]_i_1_n_0\,
      Q => Qt_reg(4)
    );
\Qt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \Qt[5]_i_1_n_0\,
      Q => Qt_reg(5)
    );
\Qt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \Qt[6]_i_1_n_0\,
      Q => Qt_reg(6)
    );
z_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => z_i_2_n_0,
      I1 => Qt_reg(4),
      I2 => Qt_reg(5),
      I3 => Qt_reg(6),
      O => z_i_1_n_0
    );
z_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^debug_out_obuf\(2),
      I1 => \^debug_out_obuf\(3),
      I2 => \^debug_out_obuf\(1),
      I3 => \^debug_out_obuf\(0),
      O => z_i_2_n_0
    );
z_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => z_i_1_n_0,
      Q => \^debug_out_obuf\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shift_reg is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Re_Count : in STD_LOGIC;
    resetn_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    bit_clock_BUFG : in STD_LOGIC;
    \Qt_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end shift_reg;

architecture STRUCTURE of shift_reg is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal can_frame : STD_LOGIC_VECTOR ( 80 downto 0 );
begin
  AR(0) <= \^ar\(0);
  Q(7 downto 0) <= \^q\(7 downto 0);
\Qt[88]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Re_Count,
      I1 => resetn_IBUF,
      O => \^ar\(0)
    );
\Qt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => \Qt_reg[0]_0\(0),
      Q => can_frame(0)
    );
\Qt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(9),
      Q => can_frame(10)
    );
\Qt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(10),
      Q => can_frame(11)
    );
\Qt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(11),
      Q => can_frame(12)
    );
\Qt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(12),
      Q => can_frame(13)
    );
\Qt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(13),
      Q => can_frame(14)
    );
\Qt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(14),
      Q => can_frame(15)
    );
\Qt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(15),
      Q => can_frame(16)
    );
\Qt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(16),
      Q => can_frame(17)
    );
\Qt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(17),
      Q => can_frame(18)
    );
\Qt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(18),
      Q => can_frame(19)
    );
\Qt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(0),
      Q => can_frame(1)
    );
\Qt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(19),
      Q => can_frame(20)
    );
\Qt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(20),
      Q => can_frame(21)
    );
\Qt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(21),
      Q => can_frame(22)
    );
\Qt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(22),
      Q => can_frame(23)
    );
\Qt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(23),
      Q => can_frame(24)
    );
\Qt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(24),
      Q => can_frame(25)
    );
\Qt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(25),
      Q => can_frame(26)
    );
\Qt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(26),
      Q => can_frame(27)
    );
\Qt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(27),
      Q => can_frame(28)
    );
\Qt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(28),
      Q => can_frame(29)
    );
\Qt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(1),
      Q => can_frame(2)
    );
\Qt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(29),
      Q => can_frame(30)
    );
\Qt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(30),
      Q => can_frame(31)
    );
\Qt_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(31),
      Q => can_frame(32)
    );
\Qt_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(32),
      Q => can_frame(33)
    );
\Qt_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(33),
      Q => can_frame(34)
    );
\Qt_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(34),
      Q => can_frame(35)
    );
\Qt_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(35),
      Q => can_frame(36)
    );
\Qt_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(36),
      Q => can_frame(37)
    );
\Qt_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(37),
      Q => can_frame(38)
    );
\Qt_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(38),
      Q => can_frame(39)
    );
\Qt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(2),
      Q => can_frame(3)
    );
\Qt_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(39),
      Q => can_frame(40)
    );
\Qt_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(40),
      Q => can_frame(41)
    );
\Qt_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(41),
      Q => can_frame(42)
    );
\Qt_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(42),
      Q => can_frame(43)
    );
\Qt_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(43),
      Q => can_frame(44)
    );
\Qt_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(44),
      Q => can_frame(45)
    );
\Qt_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(45),
      Q => can_frame(46)
    );
\Qt_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(46),
      Q => can_frame(47)
    );
\Qt_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(47),
      Q => can_frame(48)
    );
\Qt_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(48),
      Q => can_frame(49)
    );
\Qt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(3),
      Q => can_frame(4)
    );
\Qt_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(49),
      Q => can_frame(50)
    );
\Qt_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(50),
      Q => can_frame(51)
    );
\Qt_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(51),
      Q => can_frame(52)
    );
\Qt_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(52),
      Q => can_frame(53)
    );
\Qt_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(53),
      Q => can_frame(54)
    );
\Qt_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(54),
      Q => can_frame(55)
    );
\Qt_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(55),
      Q => can_frame(56)
    );
\Qt_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(56),
      Q => can_frame(57)
    );
\Qt_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(57),
      Q => can_frame(58)
    );
\Qt_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(58),
      Q => can_frame(59)
    );
\Qt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(4),
      Q => can_frame(5)
    );
\Qt_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(59),
      Q => can_frame(60)
    );
\Qt_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(60),
      Q => can_frame(61)
    );
\Qt_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(61),
      Q => can_frame(62)
    );
\Qt_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(62),
      Q => can_frame(63)
    );
\Qt_reg[64]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(63),
      Q => can_frame(64)
    );
\Qt_reg[65]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(64),
      Q => can_frame(65)
    );
\Qt_reg[66]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(65),
      Q => can_frame(66)
    );
\Qt_reg[67]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(66),
      Q => can_frame(67)
    );
\Qt_reg[68]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(67),
      Q => can_frame(68)
    );
\Qt_reg[69]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(68),
      Q => can_frame(69)
    );
\Qt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(5),
      Q => can_frame(6)
    );
\Qt_reg[70]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(69),
      Q => can_frame(70)
    );
\Qt_reg[71]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(70),
      Q => can_frame(71)
    );
\Qt_reg[72]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(71),
      Q => can_frame(72)
    );
\Qt_reg[73]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(72),
      Q => can_frame(73)
    );
\Qt_reg[74]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(73),
      Q => can_frame(74)
    );
\Qt_reg[75]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(74),
      Q => can_frame(75)
    );
\Qt_reg[76]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(75),
      Q => can_frame(76)
    );
\Qt_reg[77]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(76),
      Q => can_frame(77)
    );
\Qt_reg[78]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(77),
      Q => can_frame(78)
    );
\Qt_reg[79]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(78),
      Q => can_frame(79)
    );
\Qt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(6),
      Q => can_frame(7)
    );
\Qt_reg[80]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(79),
      Q => can_frame(80)
    );
\Qt_reg[81]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(80),
      Q => \^q\(0)
    );
\Qt_reg[82]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => \^q\(0),
      Q => \^q\(1)
    );
\Qt_reg[83]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => \^q\(1),
      Q => \^q\(2)
    );
\Qt_reg[84]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => \^q\(2),
      Q => \^q\(3)
    );
\Qt_reg[85]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => \^q\(3),
      Q => \^q\(4)
    );
\Qt_reg[86]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => \^q\(4),
      Q => \^q\(5)
    );
\Qt_reg[87]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => \^q\(5),
      Q => \^q\(6)
    );
\Qt_reg[88]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => \^q\(6),
      Q => \^q\(7)
    );
\Qt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(7),
      Q => can_frame(8)
    );
\Qt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => E(0),
      CLR => \^ar\(0),
      D => can_frame(8),
      Q => can_frame(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Destuffer_FSM is
  port (
    debug_out_OBUF : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : out STD_LOGIC;
    bit_clock_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_y_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn_IBUF : in STD_LOGIC
  );
end Destuffer_FSM;

architecture STRUCTURE of Destuffer_FSM is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal con_n_9 : STD_LOGIC;
  signal \^resetn\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_y[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_y[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_y[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_y[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_y[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_y[8]_i_1\ : label is "soft_lutpair3";
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
  E(0) <= \^e\(0);
  resetn <= \^resetn\;
\FSM_onehot_y[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[1]\,
      I1 => \FSM_onehot_y_reg[1]_0\(0),
      O => \FSM_onehot_y[2]_i_1_n_0\
    );
\FSM_onehot_y[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[2]\,
      I1 => \FSM_onehot_y_reg[1]_0\(0),
      O => \FSM_onehot_y[3]_i_1_n_0\
    );
\FSM_onehot_y[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[3]\,
      I1 => \FSM_onehot_y_reg[1]_0\(0),
      O => \FSM_onehot_y[4]_i_1_n_0\
    );
\FSM_onehot_y[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[5]\,
      I1 => \FSM_onehot_y_reg[1]_0\(0),
      O => \FSM_onehot_y[6]_i_1_n_0\
    );
\FSM_onehot_y[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[6]\,
      I1 => \FSM_onehot_y_reg[1]_0\(0),
      O => \FSM_onehot_y[7]_i_1_n_0\
    );
\FSM_onehot_y[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[7]\,
      I1 => \FSM_onehot_y_reg[1]_0\(0),
      O => \FSM_onehot_y[8]_i_1_n_0\
    );
\FSM_onehot_y[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn_IBUF,
      O => \^resetn\
    );
\FSM_onehot_y_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      D => con_n_9,
      PRE => \^resetn\,
      Q => \FSM_onehot_y_reg_n_0_[0]\
    );
\FSM_onehot_y_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => \^resetn\,
      D => con_n_8,
      Q => \FSM_onehot_y_reg_n_0_[1]\
    );
\FSM_onehot_y_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => \^resetn\,
      D => \FSM_onehot_y[2]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[2]\
    );
\FSM_onehot_y_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => \^resetn\,
      D => \FSM_onehot_y[3]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[3]\
    );
\FSM_onehot_y_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => \^resetn\,
      D => \FSM_onehot_y[4]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[4]\
    );
\FSM_onehot_y_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => \^resetn\,
      D => con_n_7,
      Q => \FSM_onehot_y_reg_n_0_[5]\
    );
\FSM_onehot_y_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => \^resetn\,
      D => \FSM_onehot_y[6]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[6]\
    );
\FSM_onehot_y_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => \^resetn\,
      D => \FSM_onehot_y[7]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[7]\
    );
\FSM_onehot_y_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => \^resetn\,
      D => \FSM_onehot_y[8]_i_1_n_0\,
      Q => \FSM_onehot_y_reg_n_0_[8]\
    );
\FSM_onehot_y_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => bit_clock_BUFG,
      CE => '1',
      CLR => \^resetn\,
      D => con_n_6,
      Q => \FSM_onehot_y_reg_n_0_[9]\
    );
\Qt[88]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_y_reg_n_0_[4]\,
      I1 => \FSM_onehot_y_reg_n_0_[8]\,
      I2 => con_n_5,
      I3 => \FSM_onehot_y_reg_n_0_[7]\,
      I4 => \FSM_onehot_y_reg_n_0_[5]\,
      I5 => \FSM_onehot_y_reg_n_0_[6]\,
      O => \^e\(0)
    );
con: entity work.counter
     port map (
      AR(0) => AR(0),
      D(3) => con_n_6,
      D(2) => con_n_7,
      D(1) => con_n_8,
      D(0) => con_n_9,
      E(0) => \^e\(0),
      \FSM_onehot_y_reg[0]\ => con_n_5,
      \FSM_onehot_y_reg[1]\(0) => \FSM_onehot_y_reg[1]_0\(0),
      Q(9) => \FSM_onehot_y_reg_n_0_[9]\,
      Q(8) => \FSM_onehot_y_reg_n_0_[8]\,
      Q(7) => \FSM_onehot_y_reg_n_0_[7]\,
      Q(6) => \FSM_onehot_y_reg_n_0_[6]\,
      Q(5) => \FSM_onehot_y_reg_n_0_[5]\,
      Q(4) => \FSM_onehot_y_reg_n_0_[4]\,
      Q(3) => \FSM_onehot_y_reg_n_0_[3]\,
      Q(2) => \FSM_onehot_y_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_y_reg_n_0_[1]\,
      Q(0) => \FSM_onehot_y_reg_n_0_[0]\,
      bit_clock_BUFG => bit_clock_BUFG,
      debug_out_OBUF(4 downto 0) => debug_out_OBUF(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SerialDataProcessor is
  port (
    bit_clock : out STD_LOGIC;
    CLK : in STD_LOGIC;
    debug_out_OBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
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
  signal frame_in_progress : STD_LOGIC;
  signal frame_in_progress_i_1_n_0 : STD_LOGIC;
  signal frame_in_progress_reg_n_0 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of current_bus_level_reg_LDC : label is "LDC";
begin
bsc: entity work.bit_sample_clock
     port map (
      CLK => CLK,
      bit_clock => bit_clock,
      debug_out_OBUF(0) => debug_out_OBUF(1),
      \z_reg__0_0\ => current_bus_level_reg_C_n_0,
      \z_reg__0_1\ => current_bus_level_reg_LDC_n_0,
      \z_reg__0_2\ => current_bus_level_reg_P_n_0,
      \z_reg__0_3\ => frame_in_progress_reg_n_0
    );
current_bus_level_C_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000047B8"
    )
        port map (
      I0 => current_bus_level_reg_P_n_0,
      I1 => current_bus_level_reg_LDC_n_0,
      I2 => current_bus_level_reg_C_n_0,
      I3 => debug_out_OBUF(1),
      I4 => debug_out_OBUF(0),
      O => frame_in_progress
    );
current_bus_level_reg_C: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => frame_in_progress,
      CLR => current_bus_level_reg_LDC_i_2_n_0,
      D => debug_out_OBUF(1),
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
      I0 => debug_out_OBUF(1),
      I1 => resetn_IBUF,
      O => current_bus_level_reg_LDC_i_1_n_0
    );
current_bus_level_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn_IBUF,
      I1 => debug_out_OBUF(1),
      O => current_bus_level_reg_LDC_i_2_n_0
    );
current_bus_level_reg_P: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => frame_in_progress,
      D => debug_out_OBUF(1),
      PRE => current_bus_level_reg_LDC_i_1_n_0,
      Q => current_bus_level_reg_P_n_0
    );
frame_in_progress_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555510154540"
    )
        port map (
      I0 => debug_out_OBUF(0),
      I1 => current_bus_level_reg_P_n_0,
      I2 => current_bus_level_reg_LDC_n_0,
      I3 => current_bus_level_reg_C_n_0,
      I4 => debug_out_OBUF(1),
      I5 => frame_in_progress_reg_n_0,
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
    debug_out_OBUF : out STD_LOGIC_VECTOR ( 4 downto 0 );
    resetn : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bit_clock_BUFG : in STD_LOGIC;
    CLK : in STD_LOGIC;
    resetn_IBUF : in STD_LOGIC;
    \Qt_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Top_destuffer;

architecture STRUCTURE of Top_destuffer is
  signal E_ShiftR : STD_LOGIC;
  signal Re_Count : STD_LOGIC;
  signal \^debug_out_obuf\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal shiftreg_n_0 : STD_LOGIC;
begin
  debug_out_OBUF(4 downto 0) <= \^debug_out_obuf\(4 downto 0);
FSM_C: entity work.Destuffer_FSM
     port map (
      AR(0) => shiftreg_n_0,
      E(0) => E_ShiftR,
      \FSM_onehot_y_reg[1]_0\(0) => \Qt_reg[0]\(0),
      bit_clock_BUFG => bit_clock_BUFG,
      debug_out_OBUF(4 downto 0) => \^debug_out_obuf\(4 downto 0),
      resetn => resetn,
      resetn_IBUF => resetn_IBUF
    );
Re_Count_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^debug_out_obuf\(4),
      Q => Re_Count,
      R => '0'
    );
shiftreg: entity work.shift_reg
     port map (
      AR(0) => shiftreg_n_0,
      E(0) => E_ShiftR,
      Q(7 downto 0) => Q(7 downto 0),
      \Qt_reg[0]_0\(0) => \Qt_reg[0]\(0),
      Re_Count => Re_Count,
      bit_clock_BUFG => bit_clock_BUFG,
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
end top_level;

architecture STRUCTURE of top_level is
  signal bit_clock : STD_LOGIC;
  signal bit_clock_BUFG : STD_LOGIC;
  signal byte_out_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal can_frame : STD_LOGIC_VECTOR ( 88 downto 81 );
  signal clock_IBUF : STD_LOGIC;
  signal clock_IBUF_BUFG : STD_LOGIC;
  signal debug_out_OBUF : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ds_impl_n_5 : STD_LOGIC;
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
bit_clock_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => bit_clock,
      O => bit_clock_BUFG
    );
\byte_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => byte_out_OBUF(0),
      O => byte_out(0)
    );
\byte_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => byte_out_OBUF(1),
      O => byte_out(1)
    );
\byte_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => byte_out_OBUF(2),
      O => byte_out(2)
    );
\byte_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => byte_out_OBUF(3),
      O => byte_out(3)
    );
\byte_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => byte_out_OBUF(4),
      O => byte_out(4)
    );
\byte_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => byte_out_OBUF(5),
      O => byte_out(5)
    );
\byte_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => byte_out_OBUF(6),
      O => byte_out(6)
    );
\byte_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => byte_out_OBUF(7),
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
\databytes_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => debug_out_OBUF(4),
      CE => '1',
      CLR => ds_impl_n_5,
      D => can_frame(81),
      Q => byte_out_OBUF(0)
    );
\databytes_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => debug_out_OBUF(4),
      CE => '1',
      CLR => ds_impl_n_5,
      D => can_frame(82),
      Q => byte_out_OBUF(1)
    );
\databytes_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => debug_out_OBUF(4),
      CE => '1',
      CLR => ds_impl_n_5,
      D => can_frame(83),
      Q => byte_out_OBUF(2)
    );
\databytes_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => debug_out_OBUF(4),
      CE => '1',
      CLR => ds_impl_n_5,
      D => can_frame(84),
      Q => byte_out_OBUF(3)
    );
\databytes_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => debug_out_OBUF(4),
      CE => '1',
      CLR => ds_impl_n_5,
      D => can_frame(85),
      Q => byte_out_OBUF(4)
    );
\databytes_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => debug_out_OBUF(4),
      CE => '1',
      CLR => ds_impl_n_5,
      D => can_frame(86),
      Q => byte_out_OBUF(5)
    );
\databytes_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => debug_out_OBUF(4),
      CE => '1',
      CLR => ds_impl_n_5,
      D => can_frame(87),
      Q => byte_out_OBUF(6)
    );
\databytes_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => debug_out_OBUF(4),
      CE => '1',
      CLR => ds_impl_n_5,
      D => can_frame(88),
      Q => byte_out_OBUF(7)
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
      I => debug_out_OBUF(4),
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
      CLK => clock_IBUF_BUFG,
      Q(7 downto 0) => can_frame(88 downto 81),
      \Qt_reg[0]\(0) => debug_out_OBUF(5),
      bit_clock_BUFG => bit_clock_BUFG,
      debug_out_OBUF(4 downto 0) => debug_out_OBUF(4 downto 0),
      resetn => ds_impl_n_5,
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
      bit_clock => bit_clock,
      debug_out_OBUF(1 downto 0) => debug_out_OBUF(5 downto 4),
      frame_in_progress_reg_0 => ds_impl_n_5,
      resetn_IBUF => resetn_IBUF
    );
end STRUCTURE;
