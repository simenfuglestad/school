-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/18/2019 12:41:07"
                                                            
-- Vhdl Test Bench template for design  :  tell_biler
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tell_biler_vhd_tst IS
END tell_biler_vhd_tst;
ARCHITECTURE tell_biler_arch OF tell_biler_vhd_tst IS
-- constants
constant periode : time := 10 us;                                              
-- signals                                                   
SIGNAL antall_biler : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL bil_inn : STD_LOGIC;
SIGNAL bil_ut : STD_LOGIC;
SIGNAL clock_50 : STD_LOGIC;
SIGNAL reset_clk : STD_LOGIC;
COMPONENT tell_biler
	PORT (
	antall_biler : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	bil_inn : IN STD_LOGIC;
	bil_ut : IN STD_LOGIC;
	clock_50 : IN STD_LOGIC;
	reset_clk : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : tell_biler
	PORT MAP (
-- list connections between master ports and signals
	antall_biler => antall_biler,
	bil_inn => bil_inn,
	bil_ut => bil_ut,
	clock_50 => clock_50,
	reset_clk => reset_clk
	);

p_clk : process
begin
	clock_50 <= '0';
	loop
		wait for periode/2;
		clock_50 <= not clock_50;
	end loop;
	wait;
end process p_clk;

init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once 
	bil_inn <= '0', '1' after 40 us, '0' after 78 us, '1' after 150 us, '0' after 250 us;
	bil_ut <= '0', '1' after 270 us, '0' after 300 us, '1' after 320 us, '0' after 360 us;                
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END tell_biler_arch;
