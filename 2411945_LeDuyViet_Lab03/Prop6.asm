.MODEL SMALL
.STACK 100

.DATA
MSG DB 'Nhap mot ky tu: $'
MSG1 DB 13,10,'Nam ky tu dung truoc: $'
MSG2 DB 13,10,'Nam ky tu dung sau: $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV CL,1 
    
MLOOP:
    DEC BL
    
    INC CL
    CMP CL,6
    JLE MLOOP
    
    
    MOV CL,1
    
FLOOP:
    INC BL
    MOV DL,BL
    MOV AH,2
    INT 21H
        
    INC CL
    CMP CL,5
    JLE FLOOP 
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H

    MOV CL,1 
    INC BL
LLOOP:
    INC BL
    MOV DL,BL
    MOV AH,2
    INT 21H
    
    INC CL
    CMP CL,5
    JLE LLOOP
    
    MOV AH,4CH
    INT 21H
MAIN ENDP
END

    
    
    
    
