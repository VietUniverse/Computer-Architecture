.MODEL Small
.STACK 100

.DATA               

CRLF DB 13,10,'$'
MSG DB 'Hay nhap mot ky tu: $'
MSG1 DB 'Ky tu dung truoc: $'
MSG2 DB 'Ky tu dung sau: $'  
INPUT DB ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV INPUT,AL
    
    MOV AH,9
    LEA DX,CRLF
    INT 21H
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV DL,INPUT
    DEC DL
    MOV AH,2
    INT 21H
    
    MOV AH,9
    LEA DX,CRLF
    INT 21H
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV DL,INPUT
    INC DL
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
MAIN ENDP
END
    
    