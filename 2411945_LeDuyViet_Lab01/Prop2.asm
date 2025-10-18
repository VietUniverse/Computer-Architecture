.MODEL Small
.STACK 100
.DATA 
CRLF DB 13,10,'$'
TB DB 'Hay nhap mot ky tu: $'
c DB ?
TB1 DB 'Ky tu da nhap: $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, TB
    INT 21H
    

    MOV AH, 1
    INT 21H
    
    MOV c, AL
    
     MOV AH, 9
    LEA DX, CRLF
    INT 21H
    
    
    MOV AH, 9
    LEA DX, TB1
    INT 21H
    
    MOV AH, 2
    MOV DL, c
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END