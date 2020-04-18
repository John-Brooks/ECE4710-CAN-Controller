library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux is
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
end mux;

architecture structure of mux is

begin

	with sel select
	   y <= a97 when  "0000000",
	        a96 when  "0000001",
	        a95 when  "0000010",
	        a94 when  "0000011",
	        a93 when  "0000100",
	        a92 when  "0000101",
	        a91 when  "0000110",
	        a90 when  "0000111",
	        a89 when  "0001000",
	        a88 when  "0001001",
	        a87 when  "0001010",
	        a86 when  "0001011",
	        a85 when  "0001100",
	        a84 when  "0001101",
	        a83 when  "0001110",
	        a82 when  "0001111",
	        a81 when  "0010000",
	        a80 when  "0010001",
	        a79 when  "0010010",
	        a78 when  "0010011",
	        a77 when  "0010100",
	        a76 when  "0010101",
	        a75 when  "0010110",
	        a74 when  "0010111",
	        a73 when  "0011000",
	        a72 when  "0011001",
	        a71 when  "0011010",
	        a70 when  "0011011",
	        a69 when  "0011100",
	        a68 when  "0011101",
	        a67 when  "0011110",
	        a66 when  "0011111",
	        a65 when  "0100000",
	        a64 when  "0100001",
	        a63 when  "0100010",
	        a62 when  "0100011",
	        a61 when  "0100100",
	        a60 when  "0100101",
	        a59 when  "0100110",
	        a58 when  "0100111",
	        a57 when  "0101000",
	        a56 when  "0101001",
	        a55 when  "0101010",
	        a54 when  "0101011",
	        a53 when  "0101100",
	        a52 when  "0101101",
	        a51 when  "0101110",
	        a50 when  "0101111",
	        a49 when  "0110000",
	        a48 when  "0110001",
	        a47 when  "0110010",
	        a46 when  "0110011",
	        a45 when  "0110100",
	        a44 when  "0110101",
	        a43 when  "0110110",
	        a42 when  "0110111",
	        a41 when  "0111000",
	        a40 when  "0111001",
	        a39 when  "0111010",
	        a38 when  "0111011",
	        a37 when  "0111100",
	        a36 when  "0111101",
	        a35 when  "0111110",
	        a34 when  "0111111",
	        a33 when  "1000000",
	        a32 when  "1000001",
	        a31 when  "1000010",
	        a30 when  "1000011",
	        a29 when  "1000100",
	        a28 when  "1000101",
	        a27 when  "1000110",
	        a26 when  "1000111",
	        a25 when  "1001000",
	        a24 when  "1001001",
	        a23 when  "1001010",
	        a22 when  "1001011",
	        a21 when  "1001100",
	        a20 when  "1001101",
	        a19 when  "1001110",
	        a18 when  "1001111",
	        a17 when  "1010000",
	        a16 when  "1010001",
	        a15 when  "1010010",
	        a14 when  "1010011",
	        a13 when  "1010100",
	        a12 when  "1010101",
	        a11 when  "1010110",
	        a10 when  "1010111",
	        a9 when  "1011000",
	        a8 when  "1011001",
	        a7 when  "1011010",
	        a6 when  "1011011",
	        a5 when  "1011100",
	        a4 when  "1011101",
	        a3 when  "1011110",
	        a2 when  "1011111",
	        a1 when  "1100000",
	        a0 when  "1100001",
	        a97 when  others;
	        

	        
end structure;

