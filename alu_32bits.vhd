library ieee;
use ieee.std_logic_1164.all;

entity alu_32bits is
  port (
    a    : in  std_logic_vector(31 downto 0) := (others => '0');
    b    : in  std_logic_vector(31 downto 0) := (others => '0');
    aluc : in std_logic_vector(3 downto 0) := (others => '0');
    r    : out std_logic_vector(31 downto 0) := (others => '0');
    z    : out std_logic := '0'
  );
end alu_32bits;

architecture behavioral of alu_32bits is
signal rTemp  : std_logic_vector (31 downto 0) := (others => '0');
signal zTemp : std_logic := '0'; 

begin
    
    
    
end behavioral;
