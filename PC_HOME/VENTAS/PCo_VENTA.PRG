				******************************
				***   VENTAS DE SOFTWARE   ***
				******************************

SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE C:\PC_HOME\SOFTWARE\SOFTWARE
SET TALK OFF
SET STATUS BAR OFF
SET SCOREBOARD OFF
SET COLOR TO G+/BG
CLEAR

@5,9 TO 8,110 DOUBLE
@6,12 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@6,58 SAY 'VENTAS DE SOFTWARE' COLOR 'GB+' FONT 'COMIC SCAN', 13
@5,9 TO 30,110 DOUBLE

M_OPC='N'
M_NOMBRE=SPACE(35)
M_TOTAL='   ' 
M_PIEZAS='   '
m_otro='N'
@25,10 SAY 'CUANTAS PIEZAS VA VENDER'FONT 'COURIER',10 STYLE 'B'
@26,10 GET M_PIEZAS FONT 'FIXEDSYS',13
	READ
@ 10,10 SAY '¿QUE PROGRAMA VA A VENDER?'FONT 'FIXEDSYS',13
@ 13,10 GET M_NOMBRE PICTURE '@!'FONT 'FIXEDSYS',13;
MESSAGE 'INTRODUZCA EL NOMBRE DEL PROGRAMA'
	READ
LOCATE FOR SUBSTR(M_NOMBRE,1,4) $NOMBRE
GO TOP
DO WHILE .NOT. EOF() 
	IF .NOT. FOUND()
		WAIT WINDOW "ESTE PROGRAMA NO ESTA DISPONIBLE"
	ELSE
		@ 15,10 SAY 'NOMBRE'
		@ 15,20 SAY NOMBRE FONT 'MS SERIF',12
		@ 17,10 SAY 'VERSION'
		@ 17,20 SAY VERSION FONT 'MS SERIF',12
		m_total='existencia' - 'm_piezas'
 		replace 'existencia' with 'existencia' - 'm_piezas'
		@ 19,10 SAY 'EXISTENCIAS:'
		@ 19,20 SAY EXISTENCIA FONT 'MS SERIF',12
		@ 21,10 SAY 'PRECIO'
		@ 21,20 SAY PRECIO FONT 'MS SERIF',12
		@12,4 say 'Presione "S" para imprimir factura' font 'britannic bold',13 style 'n'
		@14,4 get m_opc PICTURE '@!'
		read
		if upper (m_opc)='S'
			set print on
		endif
	ENDIF
	CONTINUE
ENDDO
@17,15 say 'Desea realizar otra venta de software? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\ventas\pco_venta
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif