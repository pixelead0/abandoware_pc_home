*************************************************************
*************************************************************
****     Menu de OPCIONES propiedad de P C H O M E 		 ****
****     Este Programa o alguno de los archivos de  	 ****
****     este directorio no pueden ser reproducidos  	 ****
****     o modificados, ya que si esto pasa, su 		 ****
****     computadora prodría tener problemas.			 ****
****  ¡ P O R   S U   A T E N C I O N   G R A C I A S !  ****
*************************************************************
*************************************************************
CLEAR
SET COLOR TO
SET SYSMENU SAVE
SET SYSMENU off
********************************************
* Aqui se definen los nombres de los menus *
********************************************
ON KEY LABEL ESC KEYBOARD CHR(13)
DEFINE MENU pc
DEFINE PAD repo OF pc PROMPT 'Report\<es' COLOR SCHEME 3 ;
	KEY ALT+E, ''
DEFINE PAD consu OF pc PROMPT '\<Consultas' COLOR SCHEME 3 ;
	KEY ALT+C, ''
DEFINE PAD vent OF pc PROMPT '\<Ventas' COLOR SCHEME 3 ;
	KEY ALT+V, ''
DEFINE PAD sal OF pc PROMPT 'Sa\<lir' COLOR SCHEME 3 ;
	KEY ALT+L, ''
ON PAD repo OF pc ACTIVATE POPUP reportes
ON PAD consu OF pc ACTIVATE POPUP consultas
ON PAD vent OF pc ACTIVATE POPUP ventas
ON PAD sal OF pc ACTIVATE POPUP salida

****************************************************
***** Se define el contenido del menu REPORTES *****
****************************************************
DEFINE POPUP reportes MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF reportes PROMPT '\<Proveedores' ;
	KEY ALT+P, 'P'
DEFINE BAR 2 OF reportes PROMPT '\<Clientes' ;
	KEY ALT+C, 'C'
DEFINE BAR 3 OF reportes PROMPT '\<Hardware' ;
	KEY ALT+H, 'H'
DEFINE BAR 4 OF reportes PROMPT 'S\<oftware' ;
	KEY ALT+O, 'O'
DEFINE BAR 5 OF reportes PROMPT 'Co\<mputadoras' ;
	KEY ALT+M, 'M'
DEFINE BAR 6 OF reportes PROMPT '\<Empleados ' ;
	KEY ALT+E, 'E'
ON SELECTION BAR 1 OF reportes do c:\pc_home\proveedo\pcp_repo
ON SELECTION BAR 2 OF reportes do c:\pc_home\clientes\pcc_repo
ON SELECTION BAR 3 OF reportes do c:\pc_home\hardwaer\pch_repo
ON SELECTION BAR 4 OF reportes do c:\pc_home\software\pco_repo
ON SELECTION BAR 5 OF reportes do c:\pc_home\pc-s\pcm_repo
ON SELECTION BAR 6 OF reportes do c:\pc_home\trabaja\pce_repo
*******************************************************
****** Se define el contenido del menu CONSULTAS ******
*******************************************************
DEFINE POPUP consultas MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF consultas PROMPT '\<Proveedores' ;
	KEY ALT+P, 'P'
DEFINE BAR 2 OF consultas PROMPT '\<Clientes' ;
	KEY ALT+C, 'C'
DEFINE BAR 3 OF consultas PROMPT '\<Hardware' ;
	KEY ALT+H, 'H'
DEFINE BAR 4 OF consultas PROMPT 'S\<oftware' ;
	KEY ALT+O, 'O'
DEFINE BAR 5 OF consultas PROMPT 'Co\<mputadoras' ;
	KEY ALT+M, 'M'
DEFINE BAR 6 OF consultas PROMPT '\<Empleados ' ;
	KEY ALT+E, 'E'
ON SELECTION BAR 1 OF consultas do c:\pc_home\proveedo\pcp_cons
ON SELECTION BAR 2 OF consultas do c:\pc_home\clientes\pcc_cons
ON SELECTION BAR 3 OF consultas do c:\pc_home\hardware\pch_cons
ON SELECTION BAR 4 OF consultas do c:\pc_home\software\pco_cons
ON SELECTION BAR 5 OF consultas do c:\pc_home\pc-s\pcm_cons
ON SELECTION BAR 6 OF consultas do c:\pc_home\trabaja\pce_cons
******************************************************
******* Se define el contenido del menu VENTAS *******
******************************************************
DEFINE POPUP ventas MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF ventas  PROMPT '\<Hardware' ;
	KEY ALT+H, 'H'
DEFINE BAR 2 OF ventas PROMPT 'S\<oftware' ;
	KEY ALT+O, 'O'
DEFINE BAR 3 OF ventas PROMPT 'Co\<mputadoras' ;
	KEY ALT+M, 'M'
ON SELECTION BAR 1 OF ventas do c:\pc_home\hardware\pch_venta
ON SELECTION BAR 2 OF ventas do c:\pc_home\software\pco_venta
ON SELECTION BAR 3 OF ventas do c:\pc_home\pc-s\pcm_venta
******************************************************
******* Se define el contenido del menu SALIR ********
******************************************************
DEFINE POPUP salida MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF salida PROMPT 'Regresar a Fo\<x Pro' ;
	KEY CTRL+X, 'CTRL+X' 
DEFINE BAR 2 OF salida PROMPT 'Regresar a \<Windows' ;
	KEY CTRL+W, 'CTRL+W'
ON SELECTION BAR 1 OF salida do c:\pc_home\config\pc_sali2
ON SELECTION BAR 2 OF salida quit
ACTIVATE MENU pc
DEACTIVATE MENU pc
RELEASE MENU pc EXTENDED
SET SYSMENU TO DEFAULT
ON KEY LABEL ESC