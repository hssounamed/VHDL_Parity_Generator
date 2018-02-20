library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all; 

entity  parity_gen_tb is
end entity;

ARCHITECTURE arch_parity_generator of parity_gen_tb is 

	component generator_parity is
		PORT(
		input_vector : in std_logic_vector;
		parity : out std_logic);
		end component;

signal test_input : std_logic_vector(7 downto 0);
signal output : std_logic;

begin 

UUT_generator_test : generator_parity port map (test_input,output);

process 
variable unsgnd : unsigned (7 downto 0);
begin

loop_1 : for i in 0 to 255 loop
unsgnd := to_unsigned(i,8);
test_input <= std_logic_vector(unsgnd);
wait for 10 ns;
end loop;
end process;
end ARCHITECTURE;
