library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
    generic(
    W : positive := 8 
    );
    port(
        A, B   : in  std_logic_vector (W-1 downto 0);
        opcode : in  std_logic_vector (2 downto 0);
        Y      : out std_logic_vector (W-1 downto 0)
    );
end ALU;

architecture data_flow of ALU is 
begin
    with opcode select 
        Y <= B                                           when "000",
             B                                           when "001",
             NOT(A)                                      when "010", 
             A AND B                                     when "011",
             std_logic_vector(signed(A) + signed(B))     when "100", --implicitally would not work
             std_logic_vector(signed(A) - signed(B))     when "101",
             std_logic_vector(shift_left(signed(A), 1))  when "110", --sll wont work
             std_logic_vector(shift_right(signed(A), 1)) when "111",
             (others => '0') when others;
end data_flow;
    
