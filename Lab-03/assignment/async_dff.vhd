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
--  Student Mail: s.m.ayyoubzadeh@aut.ac.ir
--  *******************************************************
--  Additional Comments:
--	Thanks God
--*/

-----------------------------------------------------------
---  Module Name: Async D Flop
---  Description: Asynchronous D Type Flip Flop
-----------------------------------------------------------
entity d_flop is
	port (
		clk  : in  std_logic;
		rstn : in  std_logic;
		d    : in  std_logic;
		q    : out std_logic;
		qb   : out std_logic
	);
end d_flop;

architecture d_flop_arc of d_flop is
begin
 process(clk,rstn)
begin
	if (rstn = '1' ) then
		q <= '0';
		qb <= '1';
	elsif (rising_edge(clk)) then
		q <= d;
		qb <= not d;
	end if ;
end process ; 
	

end d_flop_arc;
