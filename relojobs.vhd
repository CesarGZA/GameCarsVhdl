library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;

entity relojobs is
port( clkl: in std_logic;
		mlento: inout std_logic:='0'
	  );
end relojobs;

architecture arqrelojobs of relojobs is
signal conteo: integer range 0 to 100000;
begin
process(clkl)
 begin
  if(clkl' event and clkl='1') then
     --conteo<=conteo+1;
       if(conteo=100000) then
          conteo<=0;
          mlento<=not(mlento);
		 else
			conteo<=conteo+1;
       end if;
   end if;
	
 end process;

end arqrelojobs;