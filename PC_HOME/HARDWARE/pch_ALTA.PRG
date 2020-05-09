                    ************************
                    *  ALTAS DE HARDWARE   *
                    ************************
SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL

USE C:\PC_HOME\HARDWARE\hardware
CLEAR
SET TALK OFF
SET COLOR TO GR+/RB
SET STATUS BAR OFF
SET SCOREBOARD OFF
APPEND BLANK

@5,9 TO 8,115 DOUBLE
@6,14 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@6,70 SAY 'NUEVO EQUIPO DE HARDWARE' COLOR R+ FONT 'COMIC SCAN', 13
@4,9 TO 30,115 DOUBLE

m_otro='N'
@12,13 SAY '¿QUE ES LO QUE DESEA AGREGAR?' FONT 'MS SERIF', 10;
GET NOMBRE PICTURE '@!' FONT 'MS SERIF', 10;
MESSAGE 'DEBE ESPECIFICAR EL NOMBRE DEL PRODUCTO'
	READ
@14,13 SAY '¿QUE MARCA ES?' FONT 'MS SERIF', 10;
GET  MARCA PICTURE'@!' FONT 'MS SERIF', 10;
MESSAGE ' DEBE DIGITAR LA MARCA'
	READ
@16,13 SAY '¿QUE MODELO ES?' FONT 'MS SERIF', 10;
get MODELO picture '@!' FONT 'MS SERIF', 10;
message 'DEBE ESPECIFICAR EL MODELO'
	read
@18,13 SAY 'DESCRIBA BREVEMENTE EL PRODUCTO' FONT 'MS SERIF', 10
@20,13 get OTRO picture '@!' FONT 'MS SERIF', 10;
message 'SEA BREVE'
	read
@22,13 SAY '¿CUAL ES EL PRECIO?' FONT 'MS SERIF', 10;
get PRECIO picture '##,###,###.##' FONT 'MS SERIF', 10;
message 'DEBE DIGITAR LE PRECIO EN MONEDA NACIONAL'
	read

clear
@17,15 say 'Desea agregar otro registro? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\hardware\pch_alta
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif