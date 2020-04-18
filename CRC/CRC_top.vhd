-- Engineer: Evan Manser
-- Create Date: 04/14/2020 11:33:47 AM
-- Module Name: CRC_top - Behavioral
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CRC_top is
    Port ( clock, resetn : in STD_LOGIC;
           bitcount : in STD_LOGIC_VECTOR (6 downto 0);
           CRC_IN : in STD_LOGIC_VECTOR (82 downto 0);
           CRC_OUT : out STD_LOGIC_VECTOR (14 downto 0);
           done : out STD_LOGIC);
end CRC_top;

architecture Behavioral of CRC_top is

component CRC_FSM is
    Port ( clock, resetn: in STD_LOGIC;
       bitcount : in STD_LOGIC_VECTOR (6 downto 0);
       done : out STD_LOGIC;
       E_in : out STD_LOGIC;
       E_out : out STD_LOGIC;
       Eq : out STD_LOGIC;
       sel : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component mux
	port (a0, a1, a2, a3, a4, a5, a6, a7 : in std_logic;
	      a8, a9, a10, a11, a12, a13, a14 : in std_logic;
	      a15, a16, a17, a18, a19, a20, a21 : in std_logic;
	      a22, a23, a24, a25, a26, a27, a28 : in std_logic;
	      a29, a30, a31, a32, a33, a34, a35 : in std_logic;
	      a36, a37, a38, a39, a40, a41, a42 : in std_logic;
	      a43, a44, a45, a46, a47, a48, a49 : in std_logic;
	      a50, a51, a52, a53, a54, a55, a56 : in std_logic;
	      a57, a58, a59, a60, a61, a62, a63 : in std_logic;
	      a64, a65, a66, a67, a68, a69, a70 : in std_logic;
	      a71, a72, a73, a74, a75, a76, a77 : in std_logic;
	      a78, a79, a80, a81, a82, a83, a84 : in std_logic;
	      a85, a86, a87, a88, a89, a90, a91 : in std_logic;
	      a92, a93, a94, a95, a96, a97 : in std_logic;
	      sel: in std_logic_vector (6 downto 0);
			y: out std_logic);
end component;

component my_rege
    generic (N : INTEGER := 98);
	port ( clock, resetn: in std_logic;
	       E, sclr: in std_logic; -- sclr: Synchronous clear
			 D: in std_logic_vector (N-1 downto 0);
	       Q: out std_logic_vector(N-1 downto 0));
end component;

component reg
	port ( clock, resetn: in std_logic;
	       E, sclr: in std_logic; -- sclr: Synchronous clear
			 D: in std_logic;
	       Q: out std_logic);
end component;

signal ein, eout, eq : std_logic;
signal out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15 : std_logic;
signal in0, xin0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, xin3, xin4, xin7, xin8, xin10, xin14 : std_logic;
signal sel : std_logic_vector (6 downto 0);
signal crcin, muxin : std_logic_vector (97 downto 0);

begin

crcin <= CRC_IN & "000000000000000";
xin0 <= in0 xor in15;
xin3 <= in3 xor in15;
xin4 <= in4 xor in15;
xin7 <= in7 xor in15;
xin8 <= in8 xor in15;
xin10 <= in10 xor in15;
xin14 <= in14 xor in15;
CRC_OUT <= out15 & out14 & out13 & out12 & out11 & out10 & out9 & out8 & out7 & out6 & out5 & out4 & out3 & out2 & out1;

preg  : my_rege generic map (N => 98) port map (clock => clock, resetn => resetn, E => ein, sclr => '0', D => crcin, Q => muxin);

ireg0 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => xin0, Q => in1);
ireg1 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => in1, Q => in2);
ireg2 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => in2, Q => in3);
ireg3 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => xin3, Q => in4);
ireg4 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => xin4, Q => in5);
ireg5 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => in5, Q => in6);
ireg6 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => in6, Q => in7);
ireg7 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => xin7, Q => in8);
ireg8 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => xin8, Q => in9);
ireg9 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => in9, Q => in10);
ireg10 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => xin10, Q => in11);
ireg11: reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => in11, Q => in12);
ireg12 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => in12, Q => in13);
ireg13 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => in13, Q => in14);
ireg14 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eq, D => xin14, Q => in15);

oreg1 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in1, Q => out1);
oreg2 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in2, Q => out2);
oreg3 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in3, Q => out3);
oreg4 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in4, Q => out4);
oreg5 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in5, Q => out5);
oreg6 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in6, Q => out6);
oreg7 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in7, Q => out7);
oreg8 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in8, Q => out8);
oreg9 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in9, Q => out9);
oreg10 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in10, Q => out10);
oreg11 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in11, Q => out11);
oreg12 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in12, Q => out12);
oreg13 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in13, Q => out13);
oreg14 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in14, Q => out14);
oreg15 : reg port map (clock => clock, resetn => resetn, sclr => '0', E => eout, D => in15, Q => out15);

inmux : mux port map (a97 => muxin(15), a96 => muxin(16), a95 => muxin(17), a94 => muxin(18), a93 => muxin(19), a92 => muxin(20), a91 => muxin(21), a90 => muxin(22),
                      a89 => muxin(23), a88 => muxin(24), a87 => muxin(25), a86 => muxin(26), a85 => muxin(27), a84 => muxin(28), a83 => muxin(29), a82 => muxin(30),
                      a81 => muxin(31), a80 => muxin(32), a79 => muxin(33), a78 => muxin(34), a77 => muxin(35), a76 => muxin(36), a75 => muxin(37), a74 => muxin(38),
                      a73 => muxin(39), a72 => muxin(40), a71 => muxin(41), a70 => muxin(42), a69 => muxin(43), a68 => muxin(44), a67 => muxin(45), a66 => muxin(46),
                      a65 => muxin(47), a64 => muxin(48), a63 => muxin(49), a62 => muxin(50), a61 => muxin(51), a60 => muxin(52), a59 => muxin(53), a58 => muxin(54),
                      a57 => muxin(55), a56 => muxin(56), a55 => muxin(57), a54 => muxin(58), a53 => muxin(59), a52 => muxin(60), a51 => muxin(61), a50 => muxin(62),
                      a49 => muxin(63), a48 => muxin(64), a47 => muxin(65), a46 => muxin(66), a45 => muxin(67), a44 => muxin(68), a43 => muxin(69), a42 => muxin(70),
                      a41 => muxin(71), a40 => muxin(72), a39 => muxin(73), a38 => muxin(74), a37 => muxin(75), a36 => muxin(76), a35 => muxin(77), a34 => muxin(78),
                      a33 => muxin(79), a32 => muxin(80), a31 => muxin(81), a30 => muxin(82), a29 => muxin(83), a28 => muxin(84), a27 => muxin(85), a26 => muxin(86),
                      a25 => muxin(87), a24 => muxin(88), a23 => muxin(89), a22 => muxin(90), a21 => muxin(91), a20 => muxin(92), a19 => muxin(93), a18 => muxin(94),
                      a17 => muxin(95), a16 => muxin(96), a15 => muxin(97), a14 => muxin(0), a13 => muxin(1), a12 => muxin(2), a11 => muxin(3), a10 => muxin(4),
                      a9 => muxin(5), a8 => muxin(6), a7 => muxin(7), a6 => muxin(8), a5 => muxin(9), a4 => muxin(10), a3 => muxin(11), a2 => muxin(12),
                      a1 => muxin(13), a0 => muxin(14), sel => sel, y => in0);
                      
fs : CRC_FSM port map (clock => clock, resetn => resetn, bitcount => bitcount, E_in => ein, E_out => eout, Eq => eq, sel => sel, done => done);
                      



end Behavioral;
