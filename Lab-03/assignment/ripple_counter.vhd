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
--  Student ID  : 9731114
--  Student Name: Seyed Moein Ayyoubzadeh
--  Student Mail: s.m.ayyoubzadeh[at]aut[dot]ac[dot]ir
--  *******************************************************
--  Additional Comments:
--	Thanks God...
--*/

-----------------------------------------------------------
---  Module Name: Ripple Counter 
---  Description: 4 Bit Ripple Counter
-----------------------------------------------------------
entity ripple_counter is

	port (
		clk     : in  std_logic;
		rst     : in  std_logic;
		count : out std_logic_vector(3 downto 0)
	);
end ripple_counter;
signal wires : std_logic_vector(9 downto 0);

architecture comprator_arc of ripple_counter is
begin
First_TFF :  entity work.async_tff port map(clk <= clk , rst <= rst,t <= '1',count(3) <= q,wires(1) <= qb);
Second_TFF :  entity work.async_tff port map(clk <= wires(1) , rst <= rst,t <= '1',count(2) <= q,wires(3) <= qb);
Third_TFF :  entity work.async_tff port map(clk <= wires(3) , rst <= rst,t <= '1',count(1) <= q,wires(5) <= qb);
Forth_TFF :  entity work.async_tff port map(clk <= wires(5) , rst <= rst,t <= '1',count(0) <= q,wires(7) <= qb);


end comprator_arc;
