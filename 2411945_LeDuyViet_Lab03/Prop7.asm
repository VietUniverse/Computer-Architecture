.MODEL SMALL
.STACK 100

.DATA

MSG DB 13,10,'Nhap mot ky tu (hoac esc): $'
MSG1 DB 13,10,'Ky tu nhap la chu $'
MSG2 DB 13,10,'Ky tu nhap la so $'
MSG3 DB 13,10,'Ky tu nhap khong la chu/so'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

MLOOP:
    
    MOV AH,9
    LEA DX, MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,27
    JE ESC
    
    CMP AL,'0'
    JL KHAC
    
    CMP AL,'9'
    JLE SO
    
    CMP AL,'A'
    JL KHAC
    
    CMP AL,'Z'
    JLE CHU
    
    CMP AL,'a'
    JL KHAC
    
    CMP AL,'z'
    JLE CHU
    

   
    JMP MLOOP
KHAC:
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    
    JMP MLOOP
SO:
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    JMP MLOOP
CHU: 
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    JMP MLOOP
    
ESC:
    MOV AH,4CH
    INT 21H

MAIN ENDP
END
    
    