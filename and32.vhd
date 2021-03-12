library ieee;
use ieee.std_logic_1164.all;

entity and32 is
  port (
    a   : in  std_logic_vector (31 downto 0) := (others => '0') ;
    b   : in  std_logic_vector (31 downto 0) := (others => '0');
    c   : out std_logic_vector (31 downto 0) := (others => '0')
  );
end and32;

architecture behavioral of and32 is
begin
  c <= a and b;
end behavioral;
