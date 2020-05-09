			*******************************
			***   CAMBIOS DE SOFTWARE   ***
			*******************************
USE C:\PC_HOME\SOFTWARE\SOFTWARE
SET TALK OFF
SET STATUS BAR OFF
SET SCOREBOARD OFF
SET COLOR TO G+/BG
CLEAR
@10,16 TO 13,103 DOUBLE
@11,19 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@11,65 SAY 'CAMBIOS DE SOFTWARE' COLOR 'GB+/w' FONT 'COMIC SCAN', 13
@10,16 TO 25,103 DOUBLE

M_NOMBRE=SPACE(35)
M_OPC=0
m_otro='N'

@ 16,20 SAY 'PARA EDITAR UN REGISTRO DIGITE EL NOMBRE DEL PROGRAMA'
@ 18,20 GET M_NOMBRE PICTURE '@!'
	READ
LOCATE FOR UPPER (NOMBRE)=M_NOMBRE
IF NOMBRE <> M_NOMBRE
	@25,2 SAY 'REGISTRO NO ENCONTRADO'
ELSE
	EDIT
ENDIF

clear
@17,15 say 'Desea editar otro registro? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\software\pco_camb
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif