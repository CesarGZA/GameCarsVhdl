
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY hw_image_generator IS
  GENERIC(
   pixels_y :  INTEGER := 480;   --row that first color will persist until
   pixels_x :  INTEGER := 640);  --column that first color will persist until
  PORT(
    disp_ena :  IN   STD_LOGIC;  --display enable ('1' = display time, '0' = blanking time)
    row      :  IN   INTEGER;    --row pixel coordinate
    column   :  IN   INTEGER;    --column pixel coordinate
    red      :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
    green    :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
    blue     :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
	dipsw	 :  IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	reloj    :  in std_logic;
	relojmuylento: in std_logic;
	relojobs: in std_logic
	);
	 
    
	 END hw_image_generator;

ARCHITECTURE behavior OF hw_image_generator IS
signal x: integer range 0 to 480;
signal y: integer range 0 to 640;
signal z: integer range 0 to 480;
signal obs: integer range -2000 to 480;
BEGIN


PROCESS(disp_ena, row, column)--objeto a mover (carro)
 BEGIN
 IF(disp_ena = '1') THEN   --display time
 --#####################################################	CARRO ##############################################################
		if (( row > x+395+1 and row < x+395+20) and (column > y+159 and column<y+159+6)) THEN--llanta sup izq
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		
		elsif (( row > x+395+1 and row < x+395+20) and (column > y+159+34 and column<y+159+40)) THEN--llanta sup der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > x+395+58 and row < x+395+80) and (column > y+159 and column<y+159+6)) THEN--lanta inf izqu
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > x+395+58 and row < x+395+80) and (column > y+159+34 and column<y+159+40)) THEN--lanta inf der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > x+395+26 and row < x+395+36) and (column > y+159+8 and column<y+159+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > x+395+56 and row < x+395+66) and (column > y+159+8 and column<y+159+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > x+395 and row < x+395+80) and (column > y+159+4 and column<y+159+36)) THEN--chasis
			red<=(others => '1');
			green<= (others => '0');
			blue <= (others => '0');
--############################################	FONDO #####################################################
--############################################ OBSTACULOS ###############################################33
		elsif (( row > obs-70+1 and row < obs-70+20) and (column > 159 and column<159+6)) THEN--llanta sup iobs-70q
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		
		elsif (( row > obs-70+1 and row < obs-70+20) and (column > 159+34 and column<159+40)) THEN--llanta sup der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-70+58 and row < obs-70+80) and (column > 159 and column<159+6)) THEN--lanta inf iobs-70qu
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-70+58 and row < obs-70+80) and (column > 159+34 and column<159+40)) THEN--lanta inf der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-70+26 and row < obs-70+36) and (column > 159+8 and column<159+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-70+56 and row < obs-70+66) and (column > 159+8 and column<159+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-70 and row < obs-70+80) and (column > 159+4 and column<159+36)) THEN--chasis
			red<=(others => '0');
			green<= (others => '1');
			blue <= (others => '0');
		
		--#################### CARRO obs2 ###########################
		elsif (( row > obs-215+1 and row < obs-215+20) and (column > 315 and column<315+6)) THEN--llanta sup iobs-215q
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-215+1 and row < obs-215+20) and (column > 315+34 and column<315+40)) THEN--llanta sup der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-215+58 and row < obs-215+80) and (column > 315 and column<315+6)) THEN--lanta inf iobs-215qu
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-215+58 and row < obs-215+80) and (column > 315+34 and column<315+40)) THEN--lanta inf der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-215+26 and row < obs-215+36) and (column > 315+8 and column<315+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-215+56 and row < obs-215+66) and (column > 315+8 and column<315+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-215 and row < obs-215+80) and (column > 315+4 and column<315+36)) THEN--chasis
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '1');
		--#################### CARRO obs3 ###########################
		elsif (( row > obs-430+1 and row < obs-430+20) and (column > 400 and column<400+6)) THEN--llanta sup iobs-430q
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-430+1 and row < obs-430+20) and (column > 400+34 and column<400+40)) THEN--llanta sup der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-430+58 and row < obs-430+80) and (column > 400 and column<400+6)) THEN--lanta inf iobs-430qu
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-430+58 and row < obs-430+80) and (column > 400+34 and column<400+40)) THEN--lanta inf der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-430+26 and row < obs-430+36) and (column > 400+8 and column<400+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-430+56 and row < obs-430+66) and (column > 400+8 and column<400+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-430 and row < obs-430+80) and (column > 400+4 and column<400+36)) THEN--chasis
			red<=(others => '1');
			green<= (others => '0');
			blue <= (others => '1');
		--#################### CARRO obs4 ###########################
		elsif (( row > obs-430+1 and row < obs-430+20) and (column > 200 and column<200+6)) THEN--llanta sup iobs-430q
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-430+1 and row < obs-430+20) and (column > 200+34 and column<200+40)) THEN--llanta sup der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-430+58 and row < obs-430+80) and (column > 200 and column<200+6)) THEN--lanta inf iobs-430qu
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-430+58 and row < obs-430+80) and (column > 200+34 and column<200+40)) THEN--lanta inf der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-430+26 and row < obs-430+36) and (column > 200+8 and column<200+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-430+56 and row < obs-430+66) and (column > 200+8 and column<200+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-430 and row < obs-430+80) and (column > 200+4 and column<200+36)) THEN--chasis
			red<=(others => '0');
			green<= (others => '1');
			blue <= (others => '1');
		--###################### carro obs5 #############################
		
		elsif (( row > obs-570+1 and row < obs-570+20) and (column > 290 and column<290+6)) THEN--llanta sup iobs-570q
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-570+1 and row < obs-570+20) and (column > 290+34 and column<290+40)) THEN--llanta sup der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-570+58 and row < obs-570+80) and (column > 290 and column<290+6)) THEN--lanta inf iobs-570qu
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-570+58 and row < obs-570+80) and (column > 290+34 and column<290+40)) THEN--lanta inf der
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');
		elsif (( row > obs-570+26 and row < obs-570+36) and (column > 290+8 and column<290+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-570+56 and row < obs-570+66) and (column > 290+8 and column<290+32)) THEN-- cabina
			red<=(others => '0');
			green<= (others => '0');
			blue <= (others => '0');	
		elsif (( row > obs-570 and row < obs-570+80) and (column > 290+4 and column<290+36)) THEN--chasis
			red<=(others => '1');
			green<= (others => '1');
			blue <= (others => '0');
		
--############################################ fondo pista ################################################
		elsif (( row > z-40 and row < z) and (column > 306 and column<318)) THEN--linea carretera
			red<=(others => '1');
			green<= (others => '1');
			blue <= (others => '0');
		
		elsif (( row > 0 and row < 475) and (column > 158 and column<473)) THEN--carretera
			red<=(others => '1');
			green<= (others => '1');
			blue <= (others => '1');
		elsif (( row > 0 and row < 475) and (column > 150 and column<156)) THEN--linea carretera
			red<=(others => '1');
			green<= (others => '1');
			blue <= (others => '0');
		elsif (( row > 0 and row < 475) and (column > 475 and column<481)) THEN--linea carretera
			red<=(others => '1');
			green<= (others => '1');
			blue <= (others => '0');
			
		elsif (( row > 0 and row < 475) and (column > 0 and column<635)) THEN--fondo
			red<=(others => '0');
			green<= (others => '1');
			blue <= (others => '0');	

		else		
			red <= (OTHERS => '0');		--es el fondo
			green<= (others => '0');
			blue <= (others => '0');	
		end if;
      
END IF;  --del enable 
END PROCESS;

PROCESS( relojmuylento, dipsw)
begin
	if(relojmuylento' event and relojmuylento = '1') then	
		if (dipsw(1)='0') then--- DERECHA
			if (y>0 and y<270) then
				y<=y+1;
			elsif (y>268) then
				y <= 269;
			else
				y <=1;
			end if ;
		elsif (dipsw(1)='1' and dipsw(0)='0') then-- IZQ
			if (y>0 and y<270) then
				y<=y-1;
			elsif (y>268) then
				y <= 269;
			else
				y <= 1;
			end if ;
		else
			x<=x;
			y<=y;
		end if;
	end if;
end process;

PROCESS( reloj, dipsw)
begin
	if(reloj' event and reloj = '1') then	
		if (dipsw(2) = '0') then
			z<=z+1;
		else
			z<=z;
		end if;
	end if;
end process;

PROCESS( relojobs, dipsw)
begin
	if(relojobs' event and relojobs = '1') then	
		if (dipsw(2) = '0') then
			obs<=obs+1;
		else
			obs<=obs;
		end if;
	end if;
end process;



END behavior;