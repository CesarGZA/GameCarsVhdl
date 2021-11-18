library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

entity relojlento is
port( clkl: in std_logic;
		lento: inout std_logic:= '0'
	  );
end relojlento;

architecture arqrelojlento of relojlento is
signal conteo: integer range 0 to 20000;
begin
process(clkl)
 begin
  if(clkl' event and clkl='1') then
     --conteo<=conteo+1;
       if(conteo=20000) then
          conteo<=0;
          lento<=not(lento);
		 else
			conteo<=conteo+1;
       end if;
   end if;
	
 end process;

end arqrelojlento;