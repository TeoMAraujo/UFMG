library IEEE;
use IEEE.std_logic_1164.all;

entity barramento is 
    port (
        CLK   : in    std_logic;
        addr  : in    std_logic_vector(2 downto 0);
        data  : inout std_logic_vector (7 downto 0);
        readw : in    std_logic
    );
end barramento;

architecture structural of barramento is
begin
    P1: entity work.reg_8bit 
    generic map(faddr => "001") --identificação de cada per
    port map(CLK => CLK, addr => addr, data => data, readw => readw);
    
    P2: entity work.reg_8bit 
    generic map(faddr => "010")
    port map(CLK => CLK, addr => addr, data => data, readw => readw);
    
    P3: entity work.reg_8bit 
    generic map(faddr => "011")
    port map(CLK => CLK, addr => addr, data => data, readw => readw);
    
    P4: entity work.reg_8bit 
    generic map(faddr => "100")
    port map(CLK => CLK, addr => addr, data => data, readw => readw);
    
    P5: entity work.reg_8bit 
    generic map(faddr => "101")
    port map(CLK => CLK, addr => addr, data => data, readw => readw);
   
    P6: entity work.reg_8bit 
    generic map(faddr => "110")
    port map(CLK => CLK, addr => addr, data => data, readw => readw);
    
    P7: entity work.reg_8bit 
    generic map(faddr => "111")
    port map(CLK => CLK, addr => addr, data => data, readw => readw);
end structural;
    

        
           
