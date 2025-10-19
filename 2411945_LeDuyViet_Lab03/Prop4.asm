.MODEL SMALL
.STACK 100

.DATA
MSG DB 'Nhap mot ky tu: $'
MSG1 DB 13,10,'Nam ky tu ke tiep: $'
TAB DB 13,10,9,9,'   $' 

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
    INC BL
    MOV DL,BL
    MOV AH,2
    INT 21H 
    
SLOOP:
    INC BL   
    MOV AH,9
    LEA DX,TAB 
    INT 21H
    
    MOV DL,BL     
    MOV AH,2
    INT 21H
    
    INC CL
    CMP CL,5
    JLE SLOOP 
    
EXIT:
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN
