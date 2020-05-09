                           ************************
                           *  ALTAS DE CLIENTES   *
                           ************************

SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE C:\PC_HOME\clientes\CLIENTES
CLEAR
SET TALK OFF
SET COLOR TO W/B+
SET STATUS BAR OFF
SET SCOREBOARD OFF
APPEND BLANK

@5,9 TO 8,110 DOUBLE
@6,12 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@6,58 SAY 'NUEVOS CLIENTES' COLOR 'GB+' FONT 'COMIC SCAN', 13
@5,9 TO 30,110 DOUBLE

m_otro='N'
@10,10 SAY '¿CUAL ES EL NOMBRE DEL CLIENTE?' FONT 'MS SERIF', 12;
GET NOMBRE PICTURE '@!' FONT 'MS SERIF', 12;
MESSAGE 'DEBE ESPECIFICAR EL NOMBRE COMPLETO'
	READ
@12,10 SAY 'R.F.C.' FONT 'MS SERIF', 12;
get RFC picture '@!' FONT 'MS SERIF', 12;
message 'DEBE INTRODUCIR EL REGISTRO FEDERAL DE CAUSANTES'
	read
@14,10 SAY 'TELEFONO' FONT 'MS SERIF', 12;
get TELEFONO picture '@!' FONT 'MS SERIF', 12;
message 'BEBE DIGITAR EL NUMERO TELEFONICO'
	read
@16,30 SAY 'DOMICILIO' FONT 'MS SERIF', 14

@18,10 SAY 'CALLE' FONT 'MS SERIF', 12;
GET CALLE PICTURE'@!' FONT 'MS SERIF', 12;
MESSAGE ' DEBE INTRODUCIR EL NOMBRE DE LA CALLE'
	READ
@18,52 SAY 'NUMERO' FONT 'MS SERIF', 12;
get NUMERO picture '@!' FONT 'MS SERIF', 12;
message 'DEBE ESPECIFICAR EL NUMERO'
	read
@20,10 SAY 'COLONIA' FONT 'MS SERIF', 12;
get COLONIA picture '@!' FONT 'MS SERIF', 12;
message 'DEBE INTRODUCIR EL NOMBRE DE LA COLONIA'
	read
@22,10 SAY 'CODIGO POSTAL' FONT 'MS SERIF', 12;
get CP picture '@!' FONT 'MS SERIF', 12;
message 'DEBE INTRODUCIR EL CODIGO POSTAL'
	read
@22,42 SAY 'DELEGACION' FONT 'MS SERIF', 12;
get DELEGACION picture '@!' FONT 'MS SERIF', 12;
message 'DEBE DIGITAR LA DELEGACION'
	read
@24,10 SAY 'CREDITO' FONT 'MS SERIF', 12;
get CREDITO picture '##,###,###.##' FONT 'MS SERIF', 12;
message 'LOS PRECIOS DEBEN SER EN MONEDA NACIONAL'
	read

clear
@17,15 say 'Desea agregar otro registro? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\clientes\pcc_alta
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif