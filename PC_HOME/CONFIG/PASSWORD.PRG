**********programa para password******
private intentos
for intentos = 0 to 3
   set color to  ,x
   m_passw=space(9)
   clear
   @12,20 say 'TECLEA EL PASSWORD' get m_passw PICTURE '@!'
   read
       do case
        case m_passw= '25MAX37BE'
	         do c:\pc_home\CONFIG\menu
        case m_passw= 'YOMANDOAQ'
	         do c:\pc_home\CONFIG\menu2
        case m_passw= 'VENTASSUP'
    	     do c:\pc_home\CONFIG\menu3
        case m_passw= 'CUALQUIER'
    	     do c:\pc_home\CONFIG\menu4
      otherwise
	         @12,20 say 'NO TIENE ACCESO AL SISTEMA'
	          wait window 'pulse cualquier tecla para otro intento'
	  endcase
endfor  
SET COLOR TO
CLEAR