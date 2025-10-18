.MODEL Small
.STACK 100

.DATA
CRLF DB 13,10,'$'
MSG DB 'Hello World!$'
MSG1 DB 'Hello Solar System!$'
MSG2 DB 'Hello Universe!$'

.CODE

main proc
    MOV AX, @DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX, MSG
    INT 21h
    
    MOV AH,9
    LEA DX, CRLF
    INT 21H     
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,9
    LEA DX,CRLF
    INT 21H    
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV AH,4CH
    INT 21h
    
MAIN Endp
END