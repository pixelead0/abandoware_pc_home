			***************************
			***   CAMBIOS DE PC'S   ***
			***************************
SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE C:\PC_HOME\PC-S\PC'S
SET TALK OFF
SET STATUS BAR OFF
SET SCOREBOARD OFF
SET COLOR TO G+/G
CLEAR
@10,16 TO 13,103 DOUBLE
@11,19 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@11,65 SAY 'CAMBIOS DE PC´S' COLOR 'GB+/w' FONT 'COMIC SCAN', 13
@10,16 TO 25,103 DOUBLE

m_otro='N'
M_MODELO=SPACE(25)
M_OPC=0

@ 15,20 SAY 'PARA EDITAR UN REGISTRO DIGITE EL MODELO'
@ 17,20 GET M_MODELO PICTURE '@!'
	READ
LOCATE FOR UPPER (MODELO)=M_MODELO
IF MODELO <> M_MODELO
	@25,2 SAY 'REGISTRO NO ENCONTRADO'
ELSE
	EDIT
ENDIF

clear
@17,15 say 'Desea editar otro registro? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\pc-s\pcm_camb
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif