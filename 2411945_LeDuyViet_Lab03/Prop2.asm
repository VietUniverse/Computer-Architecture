.MODEL SMALL
.STACK 100

.DATA

MSG DB 'Nhap mot ky tu: $'
MSG1 DB 13,10,'Ky tu nhap khac chu/so$'
MSG2 DB 13,10,'Ky tu nhap la chu$'
MSG3 DB 13,10,'Ky tu nhap la so$'  

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    
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
    
    JMP KHAC
CHU:
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    JMP EXIT
SO:
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    
    JMP EXIT
KHAC:
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    JMP EXIT
EXIT:
    MOV AH,4CH
    INT 21H
MAIN ENDP
END
    
