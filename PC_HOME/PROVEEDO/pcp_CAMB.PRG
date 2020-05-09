			**********************************
			***   CAMBIOS DE PROVEEDORES   ***
			**********************************
SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE C:\PC_HOME\proveedo\proveedo
SET TALK OFF
SET STATUS BAR OFF
SET SCOREBOARD OFF
SET COLOR TO GR+/B
CLEAR

@10,16 TO 13,103 DOUBLE
@11,19 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@11,65 SAY 'CAMBIOS DE PROVEEDORES' COLOR 'GB+/w' FONT 'COMIC SCAN', 13
@10,16 TO 25,103 DOUBLE

M_nombre=SPACE(25)
M_OPC=0
M_OTRO='N'

@ 18,18 SAY 'PARA CAMBIAR UN REGISTRO EL NOMBRE DEL PROVEEDOR'
@ 20,18 GET M_nombre PICTURE '@!'
	READ
LOCATE FOR UPPER (nombre)=M_nombre
IF nombre <> M_nombre
	@23,25 SAY 'REGISTRO NO ENCONTRADO'
ELSE
	EDIT
ENDIF

clear
@17,15 say 'Desea cambiar otro registro? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\proveedo\pcp_CAMB
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif 
