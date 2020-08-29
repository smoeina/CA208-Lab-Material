--/*
--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  Designed by Ali Mohammadpour(@alimpk)
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

-----------------------------------------------------------
---  Module Name: Async T Flop
---  Description: Asynchronous Toggle Flip Flop
-----------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
entity t_flop is
	port (
		clk : in  std_logic;
		rst : in  std_logic;
		t   : in  std_logic;
		q   : out std_logic;
		qb  : out std_logic
	);
end t_flop;

architecture t_flop_arc of t_flop is
begin
	 process(clk, rst) begin
        if rst = '1' then
			q <= '0';
			qb <= '1';
        elsif rising_egde(clk) then
            if t = '1' then
				q <= not q;
				qb <= not q;
            end if;
        end if;
    end process; 

end t_flop_arc;
