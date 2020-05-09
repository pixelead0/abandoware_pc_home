			******************************
			***   CAMBIOS DE HARDWARE  ***
			******************************
SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE C:\PC_HOME\HARDWARE\HARDWARE
SET TALK OFF
SET STATUS BAR OFF
SET SCOREBOARD OFF
SET COLOR TO GR+/RB
CLEAR

@10,9 TO 13,105 DOUBLE
@11,14 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@11,60 SAY 'BAJAS DE EQUIPO DE HARDWARE' COLOR R+ FONT 'COMIC SCAN', 13
@9,9 TO 20,105 DOUBLE

M_NOMBRE=SPACE(25)
M_OPC=0
m_otro='N'

@ 15,15 SAY 'PARA EDITAR UN REGISTRO DIGITE EL NOMBRE DEL PRODUCTO'
@ 17,15 GET M_NOMBRE PICTURE '@!'
	READ
LOCATE FOR UPPER (NOMBRE)=M_NOMBRE
IF NOMBRE <> M_NOMBRE
	@18,22 SAY 'REGISTRO NO ENCONTRADO'
ELSE
	EDIT
ENDIF

clear
@17,15 say 'Desea volver a ver la lista de pc´s? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\HARDWARE\pch_camb
ELSE
	set print off
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif