                  *************************
                  *   ALTAS DE SOFTWARE   *
                  *************************
SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE C:\PC_HOME\software\SOFTWARE
CLEAR
SET TALK OFF
SET COLOR TO G+/BG
SET STATUS BAR OFF
SET SCOREBOARD OFF

APPEND BLANK
m_otro='N'

@10,11 TO 13,98 DOUBLE
@11,20 SAY 'PC HOME' FONT 'ARIAL BLACK', 15
@11,50 SAY 'NUEVO SOFTWARE' COLOR 'GB+' FONT 'COMIC SCAN', 15
@10,11 TO 27,98 DOUBLE

@15,12 SAY '¿COMO SE LLAMA EL PROGRAMA?'  FONT 'MS SERIF', 12;
GET NOMBRE PICTURE '@!' FONT 'MS SERIF', 10;
MESSAGE 'DIGITAR EL NOMBRE COMPLETO DEL PROGRAMA'
	READ
@17,12 SAY '¿QUE VERSION ES?'  FONT 'MS SERIF', 12;
GET VERSION PICTURE'@!' FONT 'MS SERIF', 12;
MESSAGE ' DEBE DIGITAR A QUE VERSION PERTENECE'
	READ
@19,12 SAY '¿DE QUE MARCA ES?' FONT 'MS SERIF', 12;
get MARCA picture '@!' FONT 'MS SERIF', 12;
message 'DEBE ESPECIFICAR LA MARCA'
	read
@21,12 SAY '¿A QUE CATEGORIA PERTENECE?' FONT 'MS SERIF', 12;
get CLASIFICAC picture '@!' FONT 'MS SERIF', 12;
message 'DEBE ESPECIFICAR A QUE CATEGORIA PERTENECE'
	read
@23,12 SAY '¿CUANTO CUESTA?' FONT 'MS SERIF', 12;
get PRECIO picture '##,###,###.##' FONT 'MS SERIF', 12;
message 'PONER EL PRECIO EN MONEDA NACIONAL'
	read

clear
@17,15 say 'Desea agregar otro registro? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\software\pco_alta
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif