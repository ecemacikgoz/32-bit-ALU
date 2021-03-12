library IEEE;
use IEEE.std_logic_1164.all;
entity mux_4 is
  port(
    subs1      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs2      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs3      : in  std_logic_vector(31 downto 0) := (others => '0');
    subs4      : in  std_logic_vector(31 downto 0) := (others => '0');
    selAluc    : in  std_logic_vector(1 downto 0)  := '00';
    r          : out std_logic_vector(31 downto 0) := (others => '0');
  end mux_4;
architecture rtl of mux_4 is
begin
p_mux : process(a1,a2,a3,a4,sel)
begin
  case selAluc is
    when "00" => r <= subs1 ;
    when "01" => r <= subs2 ;
    when "10" => r <= subs3 ;
    when others => r <= subs4 ;
  end case;
end process p_mux;
end rtl;
