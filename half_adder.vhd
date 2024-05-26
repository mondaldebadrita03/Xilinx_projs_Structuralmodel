library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity half_adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end half_adder;
architecture Behavioral of half_adder is
	component andgate01
		Port (a: in STD_LOGIC;
				  b: in STD_LOGIC;
				  y: out STD_LOGIC);
	end component;
	component xorgate01
		Port (a: in STD_LOGIC;
				  b: in STD_LOGIC;
				  y: out STD_LOGIC);
	end component;
begin
f1: andgate01 Port map(A, B, cout);
f2: xorgate01 Port map(A, B, sum);
end Behavioral;
