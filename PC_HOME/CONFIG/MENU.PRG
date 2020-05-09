*************************************************************
*************************************************************
****													 ****
****     Menu de OPCIONES propiedad de P C H O M E 		 ****
****     Este Programa o alguno de los archivos de  	 ****
****     este directorio no pueden ser reproducidos  	 ****
****     o modificados, ya que si esto pasa, su 		 ****
****     computadora prodría tener problemas.			 ****
****  ¡ P O R   S U   A T E N C I O N   G R A C I A S !  ****
****													 ****
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
DEFINE PAD alta OF pc PROMPT '\<Altas' COLOR SCHEME 3 ;
	KEY ALT+A, ''
DEFINE PAD baja OF pc PROMPT '\<Bajas' COLOR SCHEME 3 ;
	KEY ALT+B, ''
DEFINE PAD camb OF pc PROMPT 'Cambio\<s' COLOR SCHEME 3 ;
	KEY ALT+S, ''
DEFINE PAD consu OF pc PROMPT '\<Consultas' COLOR SCHEME 3 ;
	KEY ALT+C, ''
DEFINE PAD repo OF pc PROMPT 'Report\<es' COLOR SCHEME 3 ;
	KEY ALT+E, ''
DEFINE PAD vent OF pc PROMPT '\<Ventas' COLOR SCHEME 3 ;
	KEY ALT+V, ''
DEFINE PAD sal OF pc PROMPT 'Sa\<lir' COLOR SCHEME 3 ;
	KEY ALT+L, ''
ON PAD baja OF pc ACTIVATE POPUP bajas
ON PAD alta OF pc ACTIVATE POPUP altas
ON PAD camb OF pc ACTIVATE POPUP cambios
ON PAD repo OF pc ACTIVATE POPUP reportes
ON PAD consu OF pc ACTIVATE POPUP consultas
ON PAD vent OF pc ACTIVATE POPUP ventas
ON PAD sal OF pc ACTIVATE POPUP salida
*******************************************
** Se define el contenido del menu BAJAS **
*******************************************
DEFINE POPUP bajas MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF bajas PROMPT '\<Proveedores'
DEFINE BAR 2 OF bajas PROMPT '\<Clientes'
DEFINE BAR 3 OF bajas PROMPT '\<Hardware'
DEFINE BAR 4 OF bajas PROMPT 'S\<oftware'
DEFINE BAR 5 OF bajas PROMPT 'Co\<mputadoras'
DEFINE BAR 6 OF bajas PROMPT '\<Empleados'
ON SELECTION BAR 1 OF bajas do c:\pc_home\PROVEEDO\pcp_baja
ON SELECTION BAR 2 OF bajas do c:\pc_home\CLIENTES\pcc_baja
ON SELECTION BAR 3 OF bajas do c:\pc_home\HARDWARE\pch_baja
ON SELECTION BAR 4 OF bajas do c:\pc_home\SOFTWARE\pco_baja
ON SELECTION BAR 5 OF bajas do c:\pc_home\PC-S\pcm_baja
ON SELECTION BAR 6 OF bajas do c:\pc_home\TRABAJA\pce_baja
*********************************************
*** Se define el contenido del menu ALTAS ***
*********************************************
DEFINE POPUP altas MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF altas PROMPT '\<Proveedores' ;
	KEY CTRL+P, 'CTRL+P'
DEFINE BAR 2 OF altas PROMPT '\<Clientes' ;
	KEY CTRL+C, 'CTRL+C'
DEFINE BAR 3 OF altas PROMPT '\<Hardware' ;
	KEY CTRL+H, 'CTRL+H'
DEFINE BAR 4 OF altas PROMPT 'S\<oftware' ;
	KEY CTRL+O, 'CTRL+O'
DEFINE BAR 5 OF altas PROMPT 'Co\<mputadoras' ;
	KEY CTRL+M, 'CTRL+M'
DEFINE BAR 6 OF altas PROMPT '\<Empleados' ;
	KEY CTRL+E, 'CTRL+E'
ON SELECTION BAR 1 OF altas do c:\pc_home\PROVEEDO\pcp_alta
ON SELECTION BAR 2 OF altas do c:\pc_home\CLIENTES\pcc_alta
ON SELECTION BAR 3 OF altas do c:\pc_home\HARDWARE\pch_alta
ON SELECTION BAR 4 OF altas do c:\pc_home\SOFTWARE\pco_alta
ON SELECTION BAR 5 OF altas do c:\pc_home\PC-S\pcm_alta
ON SELECTION BAR 6 OF altas do c:\pc_home\TRABAJA\pce_alta

*************************************************
**** Se define el contenido del menu CAMBIOS ****
*************************************************
DEFINE POPUP cambios MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF cambios PROMPT '\<Proveedores'
DEFINE BAR 2 OF cambios PROMPT '\<Clientes'
DEFINE BAR 3 OF cambios PROMPT '\<Hardware'
DEFINE BAR 4 OF cambios PROMPT 'S\<oftware'
DEFINE BAR 5 OF cambios PROMPT 'Co\<mputadoras'
DEFINE BAR 6 OF cambios PROMPT '\<Empleados'
ON SELECTION BAR 1 OF cambios do c:\pc_home\PROVEEDO\pcp_camb
ON SELECTION BAR 2 OF cambios do c:\pc_home\CLIENTES\pcc_camb
ON SELECTION BAR 3 OF cambios do c:\pc_home\HARDWARE\pch_camb
ON SELECTION BAR 4 OF cambios do c:\pc_home\SOFTWARE\pco_camb
ON SELECTION BAR 5 OF cambios do c:\pc_home\PC-S\pcm_camb
ON SELECTION BAR 6 OF cambios do c:\pc_home\TRABAJA\pce_camb
****************************************************
***** Se define el contenido del menu REPORTES *****
****************************************************
DEFINE POPUP reportes MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF reportes PROMPT '\<Proveedores'
DEFINE BAR 2 OF reportes PROMPT '\<Clientes'
DEFINE BAR 3 OF reportes PROMPT '\<Hardware'
DEFINE BAR 4 OF reportes PROMPT 'S\<oftware'
DEFINE BAR 5 OF reportes PROMPT 'Co\<mputadoras'
DEFINE BAR 6 OF reportes PROMPT '\<Empleados '
ON SELECTION BAR 1 OF reportes do c:\pc_home\PROVEEDO\pcp_repo
ON SELECTION BAR 2 OF reportes do c:\pc_home\CLIENTES\pcc_repo
ON SELECTION BAR 3 OF reportes do c:\pc_home\HARDWARE\pch_repo
ON SELECTION BAR 4 OF reportes do c:\pc_home\SOFTWARE\pco_repo
ON SELECTION BAR 5 OF reportes do c:\pc_home\PC-S\pcm_repo
ON SELECTION BAR 6 OF reportes do c:\pc_home\TRABAJA\pce_repo
*******************************************************
****** Se define el contenido del menu CONSULTAS ******
*******************************************************
DEFINE POPUP consultas MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF consultas PROMPT '\<Proveedores'
DEFINE BAR 2 OF consultas PROMPT '\<Clientes'
DEFINE BAR 3 OF consultas PROMPT '\<Hardware'
DEFINE BAR 4 OF consultas PROMPT 'S\<oftware'
DEFINE BAR 5 OF consultas PROMPT 'Co\<mputadoras'
DEFINE BAR 6 OF consultas PROMPT '\<Empleados '
ON SELECTION BAR 1 OF consultas do c:\pc_home\PROVEEDO\pcp_cons
ON SELECTION BAR 2 OF consultas do c:\pc_home\CLIENTES\pcc_cons
ON SELECTION BAR 3 OF consultas do c:\pc_home\HARDWARE\pch_cons
ON SELECTION BAR 4 OF consultas do c:\pc_home\SOFTWARE\pco_cons
ON SELECTION BAR 5 OF consultas do c:\pc_home\PC-S\pcm_cons
ON SELECTION BAR 6 OF consultas do c:\pc_home\TRABAJA\pce_cons
******************************************************
******* Se define el contenido del menu VENTAS *******
******************************************************
DEFINE POPUP ventas MARGIN RELATIVE SHADOW COLOR SCHEME 4
DEFINE BAR 1 OF ventas  PROMPT 'H\<ardware' ;
	KEY CTRL+A, 'CTRL+A'
DEFINE BAR 2 OF ventas PROMPT '\<Software' ;
	KEY CTRL+S, 'CTRL+S'
DEFINE BAR 3 OF ventas PROMPT 'Comp\<utadoras' ;
	KEY CTRL+U, 'CTRL+U'
ON SELECTION BAR 1 OF ventas do c:\pc_home\HARDWARE\pch_venta
ON SELECTION BAR 2 OF ventas do c:\pc_home\SOFTWARE\pco_venta
ON SELECTION BAR 3 OF ventas do c:\pc_home\PC-S\pcm_venta
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
RELEASE MENU pc EXTENDED
SET SYSMENU TO DEFAULT
ON KEY LABEL ESC