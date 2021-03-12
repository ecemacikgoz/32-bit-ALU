library ieee;
use ieee.std_logic_1164.all;

entity addsub32 is
  port (
    a   : in  std_logic_vector(31 downto 0);
    b   : in  std_logic_vector(31 downto 0);
    sub : in  std_logic;
    s   : out std_logic_vector(31 downto 0)
  );
end addsub32;

architecture behavioral of addsub32 is
signal sTemp  : std_logic_vector (31 downto 0) := (others => '0');
begin
  s <= sTemp;
  addSub : process(a, b, sub)
  begin
    case sub is
      when "0" => sTemp <= a + b;
      when others => sTemp <= a - b;
    end case;
  end process addSub;
end behavioral;
