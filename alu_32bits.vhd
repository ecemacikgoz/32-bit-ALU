library ieee;
use ieee.std_logic_1164.all;

entity alu_32bits is
  port (
    a    : in  std_logic_vector(31 downto 0);
    b    : in  std_logic_vector(31 downto 0);
    aluc : in std_logic_vector(3 downto 0);
    r    : out std_logic_vector(31 downto 0);
    z    : out std_logic
  );
end alu_32bits;

architecture behavioral of alu_32bits is
begin
    
    
    
end behavioral;