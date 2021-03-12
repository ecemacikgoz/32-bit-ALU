library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift is
  port (
    sa      : in  std_logic_vector(4 downto 0) := (others => '0');
    d       : in  std_logic_vector(31 downto 0) := (others => '0');
    right   : in  std_logic_vector(1 downto 0) := '00';
    arith   : in  std_logic_vector(1 downto 0) := '00';
    sh      : out std_logic_vector(31 downto 0):= (others => '0')
  );
end shift;

architecture behavioral of shift is
signal times  : integer := 0;
signal shTemp : std_logic_vector (31 downto 0) := (others => '0');
begin
  times <= to_integer(unsigned(sa));
  shifter : process(sa, d, right, left, arith)
  begin     
     if right = '1' and arith = '0' then
        for i in times downto 0 loop
          for j in 31 downto 0 loop
            
            
          end loop;
        end loop;
     elsif right = '1' and arith = '1' then
      
     else 
       
     end if;
  end process;
  
       
       if (dir='0') then -- Rotate right if dir='0'
         reg <= reg(0) & reg(width-1 downto 1);
       else
         reg <= reg(width-2 downto 0) & reg(width-1);
       end if;
  
variable shft : integer;
            variable out_right_arithmetic : std_logic_vector(31 downto 0);
            variable out_right_logical    : std_logic_vector(31 downto 0);
            variable out_left_logical     : std_logic_vector(31 downto 0);
          begin
            shft := to_integer(shift);
            if logical = '0' then
              out_right_arithmetic := (31 downto 32-shft => input(31)) &
                                      input(31 downto shft);
              output <= out_right_arithmetic after 250 ps;
            else
              if left = '1' then
                out_left_logical := input(31-shft downto 0) &
                                    (shft-1 downto 0 => '0');
                output <= out_left_logical after 250 ps;
              else
                out_right_logical := (31 downto 32-shft => '0') &
                                     input(31 downto shft);
                output <= out_right_logical after 250 ps;
              end if;
            end if;                   
  
  
end behavioral;
       
