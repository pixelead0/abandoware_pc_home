                  *******************************
                  *  PROGRAMA DE ALTAS DE PC'S  *
                  *******************************
SET SYSMENU OFF
HIDE MENU ALL
HIDE WINDOW ALL
USE C:\PC_HOME\pc-s\PC'S
CLEAR
SET TALK OFF
SET COLOR TO G+/G
SET STATUS BAR OFF
SET SCOREBOARD OFF
APPEND BLANK
m_otro='N'

@5,11 TO 8,98 DOUBLE
@6,20 SAY 'PC HOME' FONT 'ARIAL BLACK', 13
@6,50 SAY 'NUEVAS PC�S' COLOR 'GB+' FONT 'COMIC SCAN', 13
@5,11 TO 30,98 DOUBLE

@9,12 SAY 'MARCA DE LA PC'  FONT 'MS SERIF', 10;
GET MARCA PICTURE '@!' FONT 'MS SERIF', 10;
MESSAGE 'DEBE DIGITAR LA MARCA DE LA COMPUTADORA'
	READ
@11,12 SAY '�QUE MODELO ES?'  FONT 'MS SERIF', 10;
GET  MODELO PICTURE'@!' FONT 'MS SERIF', 10;
MESSAGE ' DEBE DIGITAR EL MODELO'
	READ
@13,12 SAY 'CUAL ES EL TAMA�O DEL DISCO DURO' FONT 'MS SERIF', 10;
get DISCO_DURO picture '@!' FONT 'MS SERIF', 10;
message 'DEBE DIGITAR EL TAMA�O DEL HDD'
	read
@15,12 SAY 'CUANTA MEMORIA RAM TIENE' FONT 'MS SERIF', 10;
get MEMO_RAM picture '@!' FONT 'MS SERIF', 10;
message 'DEBE DIGITAR EL TAMA�O DE LA MEMORIA'
	read
@17,12 SAY 'QUE TIPO DE PROCESADOR Y QUE VELOCIDAD TIENE' FONT 'MS SERIF', 10;
get PROCESADOR picture '@!' FONT 'MS SERIF', 10;
message 'EL TIPO DE PROCESADOR Y LA VELOCIDAD EN Mhz'
	read
@19,12 SAY 'QUE VELOCIDAD TIENE EL FAX' FONT 'MS SERIF', 10;
get FAX_MODEM picture '@!' FONT 'MS SERIF', 10;
message 'VELOCIDAD EN KBPS'
	read
@21,12 SAY 'DE QUE VELOCIDAD ES EL CD ROM' FONT 'MS SERIF', 10;
get CD_ROM picture '@!' FONT 'MS SERIF', 10;
message 'DEBE DIGITAR LA VELOCIDAD DEL CD ROM'
	read
@23,12 SAY 'DE QUE TAMA�O ES EL MONITOR' FONT 'MS SERIF', 10;
get MONITOR picture '@!' FONT 'MS SERIF', 10;
MESSAGE 'ESPECIFICAR EL TAMA�O EN PULGADAS'
	READ
@25,12 SAY '�QUE MAS TIENE?' FONT 'MS SERIF', 10;
get OTRO picture '@!' FONT 'MS SERIF', 8;
MESSAGE 'DEBE DIGITAR LOS DEMAS ACCESOCIOS QUE TIENE LA PC'
	READ
@27,12 SAY '�CUANTO CUESTA?' FONT 'MS SERIF', 10;
get PRECIO picture '##,###,###.##' FONT 'MS SERIF', 10;
MESSAGE 'DEBE DIGITAR EL PRECIO EN MONEDA NACIONAL'
	READ

clear
@17,15 say 'Desea agregar otro registro? (s/n)' font 'times new roman',13 style 'n'
@19,16 get m_otro picture '@!'
  read
if m_otro='S'
       do C:\pc_home\pc-s\pcm_alta
ELSE
	SET TALK ON
	SET COLOR TO 
	SET STATUS BAR ON
	SET SCOREBOARD ON
	USE
  	return      
endif