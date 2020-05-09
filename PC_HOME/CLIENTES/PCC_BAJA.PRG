				******************************************
				***   B A J A S  D E  C L I E N T E S  ***
				******************************************

SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE C:\PC_HOME\CLIENTES\CLIENTES
CLEAR
SET TALK OFF
SET COLOR TO W/B+
SET STATUS BAR OFF
SET SCOREBOARD OFF

@5,9 TO 8,110 DOUBLE
@6,12 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@6,58 SAY 'BAJAS DE CLIENTES' COLOR 'GB+' FONT 'COMIC SCAN', 13
@5,9 TO 30,110 DOUBLE

M_NOMBRE=SPACE(40)
M_OPC='N'
m_otro='N'

@ 10,17 SAY 'Que cliente desea eliminar'FONT 'FIXEDSYS',13
@ 12,17 GET M_NOMBRE PICTURE '@!'FONT 'FIXEDSYS',13
READ
IF.NOT. FOUND ()
	WAIT WINDOW  'REGISTRO NO ENCONTRADO'
ENDIF
LOCATE FOR UPPER (NOMBRE)=M_NOMBRE
	@ 15,21 SAY 'NOMBRE'
	@ 15,32 SAY NOMBRE FONT 'MS SERIF',12
	@ 18,21 SAY 'DIRECCION'
	@ 18,34 SAY CALLE FONT 'MS SERIF',12
	@ 18,60 SAY '#'FONT 'MS SERIF',12
	@ 18,62 SAY NUMERO FONT 'MS SERIF',12
	@ 20,34 SAY COLONIA FONT 'MS SERIF',12
	@ 22,21 SAY 'CREDITO $'
	@ 22,32 SAY CREDITO FONT 'MS SERIF',12
	@25,17 SAY '¿DESEA ELIMINAR ESTE REGISTRO? (S/N) 'FONT 'COURIER',10 STYLE 'B'
	@27,17 GET M_OPC picture '@!' FONT 'FIXEDSYS',13
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
       do C:\pc_home\clientes\pcc_baja
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif