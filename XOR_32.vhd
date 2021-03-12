library ieee;
use ieee.std_logic_1164.all;

entity xor_32 is
  port (
    a   : in  std_logic_vector(31 downto 0);
    b   : in  std_logic_vector(31 downto 0);
    c   : out std_logic_vector(31 downto 0)
  );
end xor_32;

architecture behavioral of xor_32 is
begin
  c <= a xor b;
end behavioral;
