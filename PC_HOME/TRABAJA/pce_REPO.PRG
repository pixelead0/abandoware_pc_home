			*********************************
			***   REPORTES DE EMPLEADOS   ***
			*********************************
SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE c:\pc_home\trabaja\empleado
SET TALK OFF
SET STATUS BAR OFF
SET SCOREBOARD OFF
SET COLOR TO W+/BG
CLEAR

M_OPC='N'
m_otro='N'

WAIT WINDOW AT 18,22 'PRESIONE CUALQUIER TECLA VER LA LISTA DE TRABAJADORES'
		CLEAR
		LIST OFF NOMBRE,COLONIA,TELEFONO,COMISION
		WAIT
CLEAR		
@10,16 TO 13,103 DOUBLE
@11,19 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@11,60 SAY 'REPORTES DE TRABAJADORES' COLOR 'GB+' FONT 'COMIC SCAN', 13
@10,16 TO 25,103 DOUBLE

@18,20 SAY '¿DESEA IMPRIMIR LOS DATOS?(S/N)'FONT 'MS SERIF',10
@19,20 GET M_OPC picture '@!' FONT 'MS SERIF',10
READ
IF M_OPC='S'
	SET PRINT ON
ENDIF

clear
@17,15 say 'Desea volver a ver la lista de empleados? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\trabaja\pce_repo
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif