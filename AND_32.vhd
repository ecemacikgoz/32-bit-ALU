library ieee;
use ieee.std_logic_1164.all;

entity and_32 is
  port (
    a   : in  std_logic_vector(31 downto 0);
    b   : in  std_logic_vector(31 downto 0);
    c   : out std_logic_vector(31 downto 0)
  );
end and_32;

architecture behavioral of and_32 is
begin
  c <= a and b;
end behavioral;
