.MODEL SMALL
.STACK 100

.DATA
CRLF DB 13,10,'$'
MSG DB 'Bay gio la sang, chieu hay toi? $'
MSG1 DB 'Chao buoi sang. $'
MSG2 DB 'Chao buoi chieu. $'
MSG3 DB 'Chao buoi toi. $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
SLOOP:
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'s'
    JE SANG
    
    CMP AL,'c'
    JE CHIEU
    
    CMP AL,'t'
    JE TOI 
    
    
    
    
    JMP SLOOP
    
SANG:
    MOV AH,9
    LEA DX,CRLF
    INT 21H
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    JMP EXIT
CHIEU:      
    MOV AH,9
    LEA DX,CRLF
    INT 21H

    MOV AH,9
    LEA DX,MSG2
    INT 21H
    JMP EXIT
TOI:    

    MOV AH,9
    LEA DX,CRLF
    INT 21H
    
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    JMP EXIT
EXIT:
    MOV AH,4CH
    INT 21H
MAIN ENDP
END
                          