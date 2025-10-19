.MODEL Small
.STACK 100

.DATA
CRLF DB 13,10,'$'
MSG DB 'Nhap ky tu thu nhat: $'
MSG1 DB 'Nhap ky tu thu hai: $'
MSG2 DB 'Ky tu tong: $'
RES DB ?

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS, AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,9
    LEA DX,CRLF
    INT 21H
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    
    ADD AL,BH
    MOV RES,AL
    
    MOV AH,9
    LEA DX,CRLF
    INT 21H
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV DL,RES    
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
