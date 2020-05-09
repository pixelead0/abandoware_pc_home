@ECHO OFF
C:
CD\
ECHO. SE ESTAN PREPARANDO LOS ARCHIVOS PARA SER USADOS
ECHO. POR FAVOR ESPERE UN MOMENTO
MD C:\PC_HOME
CD C:\PC_HOME
XCOPY A:\*.hom C:\PC_HOME
ren c:\pc_home\*.hom *.exe
disk_1
ECHO.
ECHO. Para cancelar pulse Ctrl + C
PAUSE
system
ECHO.
ECHO.
ECHO.
XCOPY A:\LEAME.TXT C:\PC_HOME
XCOPY A:\pkunzip.exe C:\PC_HOME
XCOPY A:\PC_HOME.PRG C:\PC_HOME
MD PROVEEDO
MD CLIENTES
MD HARDWARE
MD SOFTWARE
MD PC-S
MD TRABAJA
MD CONFIG
MD VENTAS
PKUNZIP A:\PCP.ZIP C:\PC_HOME\PROVEEDO\ /O
PKUNZIP A:\PCC.ZIP C:\PC_HOME\CLIENTES\ /O
PKUNZIP A:\PCH.ZIP C:\PC_HOME\HARDWARE\ /O
PKUNZIP A:\PCO.ZIP C:\PC_HOME\SOFTWARE\ /O
PKUNZIP A:\PCM.ZIP C:\PC_HOME\PC-S\ /O
PKUNZIP A:\PCE.ZIP C:\PC_HOME\TRABAJA\ /O
PKUNZIP A:\PC.ZIP C:\PC_HOME\CONFIG\ /O
PKUNZIP A:\PCV.ZIP C:\PC_HOME\VENTAS\ /O
DEL C:\PC_HOME\disk_1.exe
DEL C:\PC_HOME\system.exe
DEL C:\PC_HOME\PKUNZIP.exe
CD\
A:
type leame.txt|more
ECHO.
ECHO.                                                
ECHO.    PARA EJECUTAR EL PROGRAMA POSTERIORMENTE    
ECHO.    HAGA CLICK EN EL ARCHIVO:                   
ECHO.                                                
ECHO.                 C:\PC_HOME\PC_HOME.PRG         
ECHO.                                                
ECHO.
