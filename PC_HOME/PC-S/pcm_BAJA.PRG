				*************************
				***   BAJAS DE PC'S   ***
				*************************
SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE C:\PC_HOME\pc-s\pc's
SET TALK OFF
SET STATUS BAR OFF
SET SCOREBOARD OFF
SET COLOR TO G+/G
CLEAR

@5,9 TO 8,110 DOUBLE
@6,12 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@6,58 SAY 'BAJAS DE PC´S' COLOR 'GB+' FONT 'COMIC SCAN', 13
@5,9 TO 30,110 DOUBLE

M_modelo=SPACE(25)
M_OPC='N'
m_otro='N'

@ 14,15 SAY 'Que Modelo desea Buscar'FONT 'FIXEDSYS',13
@ 16,15 GET M_modelo PICTURE '@!'FONT 'FIXEDSYS',13
READ
LOCATE FOR UPPER (modelo)=M_modelo
	@ 18,17 SAY 'MARCA'
	@ 18,28 SAY marca FONT 'MS SERIF',12
	@ 20,17 SAY 'MODELO'
	@ 20,28 SAY modelo FONT 'MS SERIF',12
	@ 22,17 SAY 'PRECIO $'
	@ 22,28 SAY precio FONT 'MS SERIF',12
IF.NOT. FOUND ()
	WAIT WINDOW  'REGISTRO NO ENCONTRADO'
ENDIF
ENDIF
	@24,10 SAY 'DESEA BORRAR EL REGISTRO (S/N)'FONT 'COURIER',10 STYLE 'B'
	@26,10 GET M_OPC picture '@!' FONT 'FIXEDSYS',13
READ
IF M_OPC='S'
	DELETE
ENDIF
PACK

clear
@17,15 say 'Desea eleminar otro registro? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\pc-s\pcm_baja
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif