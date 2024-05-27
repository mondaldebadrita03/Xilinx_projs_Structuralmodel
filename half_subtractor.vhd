library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity half_subtractor is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           D : out  STD_LOGIC;
           Bout : out  STD_LOGIC);
end half_subtractor;
architecture Behavioral of half_subtractor is
	component andgate01
		port (a: in STD_LOGIC;
				  b: in STD_LOGIC;
				  c: out STD_LOGIC);
	end component;
	component xorgate01
		Port (e: in STD_LOGIC;
				  f: in STD_LOGIC;
				  g: out STD_LOGIC);
	end component;
	component notgate01
		Port (h: in STD_LOGIC;
				  i: out STD_LOGIC);
	end component;
	signal j: STD_LOGIC;
begin
x1: xorgate01 Port map(A, B, D);
x2: notgate01 Port map(A,j);
x3: andgate01 Port map(j,B, Bout);
end Behavioral;
