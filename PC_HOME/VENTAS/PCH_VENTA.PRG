				******************************
				***   VENTAS DE HARDWARE   ***
				******************************

SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE C:\PC_HOME\HARDWARE\HARDWARE
SET TALK OFF
SET STATUS BAR OFF
SET SCOREBOARD OFF
SET COLOR TO G+/BG
CLEAR

@5,9 TO 8,110 DOUBLE
@6,12 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@6,58 SAY 'VENTAS DE HARDWARE' COLOR 'GB+' FONT 'COMIC SCAN', 13
@5,9 TO 30,110 DOUBLE

M_OPC='N'
M_NOMBRE=SPACE(25)
M_TOTAL='   ' 
m_otro='N'

@ 10,10 SAY 'INTRODUZCA EL NOMBRE DEL PRODUCTO A VENDER'FONT 'FIXEDSYS',13
@ 13,10 GET M_NOMBRE PICTURE '@!'FONT 'FIXEDSYS',13;
MESSAGE 'INTRODUZCA EL NOMBRE DEL PRODUCTO'
	READ
LOCATE FOR SUBSTR(M_NOMBRE,1,4) $NOMBRE
GO TOP
DO WHILE .NOT. EOF() 
	IF .NOT. FOUND()
		WAIT WINDOW "ESTE PRODUCTO NO EXISTE O NO ESTA DISPONIBLE"
	ELSE
		@ 15,10 SAY 'NOMBRE'
		@ 15,20 SAY NOMBRE FONT 'MS SERIF',12
		@ 17,10 SAY 'MODELO'
		@ 17,20 SAY MODELO FONT 'MS SERIF',12
		@ 19,10 SAY 'DESCRIPCION:'
		@ 19,20 SAY OTRO FONT 'MS SERIF',12
		@ 21,10 SAY 'PRECIO'
		@ 21,20 SAY PRECIO FONT 'MS SERIF',12
		@24,14 say 'Presione "S" para imprimir factura' font 'britannic bold',13 style 'n'
		@26,14 get m_opc PICTURE '@!'
		read
		if upper (m_opc)='S'
			set print on
		endif
	ENDIF
	CONTINUE
ENDDO
CLEAR
@17,15 say 'Desea realizar otra venta de software? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\ventas\pcm_venta
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif