library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real;

ENTITY parity_gen is
PORT(
	input_vector : in std_logic_vector;
	parity : out std_logic);
end parity_gen;

ARCHITECTURE arch_parity_generator of parity_gen is 

begin
	


	process(input_vector)

	variable test : integer := 0;
	variable aux : integer := 0;
		begin 
		for i in 0 to 7 loop 
		if (input_vector(i) = '1') then
		test := test + 1;
		end if ;
		end loop ;
		aux := test mod 2;
		if ( aux = 0 ) then 
		parity <= '1';
		ELSE 
		parity <= '0';
		END IF;
	end process;


end arch_parity_generator ;

 
