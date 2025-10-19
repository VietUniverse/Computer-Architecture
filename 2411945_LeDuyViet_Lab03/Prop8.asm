.MODEL SMALL
.STACK 100

.DATA
MSG DB 'Hay nhap mot chu thuong (a-z): $'
MSG1 DB 13,10,'Chu hoa tuong ung la: $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
MLOOP:    
    MOV AH,0
    MOV AL,3
    INT 10H
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'a'
    JL MLOOP
    
    CMP AL,'z'
    JG MLOOP
    
    MOV BL,AL
    SUB BL,32
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV DL,BL
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
MAIN ENDP
END
    