********************************************
*ESTA ES LA PRESENTACION DEL SISTEMA M DUCK*
********************************************
set color to W+++/B+
clear

@1,2 SAY "C:\PC_HOME\CONFIG\ipn.BMP" BITMAP STRETCH SIZE 8,20
@1,90 SAY "C:\PC_HOME\CONFIG\cecyt5.BMP" BITMAP STRETCH SIZE 8,20
@1,30 SAY "C:\PC_HOME\CONFIG\LETRAS.BMP" BITMAP STRETCH SIZE 6,50
@8,23 say 'CECyT 5 "BENITO JUAREZ GARCIA"' font 'ARIAL BLACK',15 style 'n'

@11,10 say 'PROYECTO:' font 'ARIAL BLACK',13 style 'n'
@12,35 say 'PC-HOME' font 'ARIAL BLACK',13 


@14,10 say 'INTEGRANTES:' font 'ARIAL BLACK',13 style 'n'
@15,35 say 'GARCIA CORTES DAVID' font 'ARIAL BLACK',13
@17,35 say 'GARCIA QUIROZ ADAN' font 'ARIAL BLACK',13
@19,35 say 'VALDOVINOS RUIZ SALVADOR' font 'ARIAL BLACK',13

@21,10 say 'PROFESOR:' font 'ARIAL BLACK',13 style 'n'
@22,35 say 'HECTOR CAMPOS GONZALES'font 'ARIAL BLACK',13 

@24,10 say 'FECHA:' font 'ARIAL BLACK',13 style 'n'
@25,35 say '14 DE DICIEMBRE DE 1998' font 'ARIAL BLACK',13

@27,33 SAY "C:\PC_HOME\CONFIG\LEMA.BMP" BITMAP STRETCH SIZE 2,40

WAIT WINDOW
do C:\pc_home\config\password
