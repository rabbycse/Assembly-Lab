.MODEL SMALL
.STACK 100H
.DATA

     MSG1 DB 'ENTER A UPPER CASE LETTER:$'
     MSG2 DB 0DH,0AH,'IN LOWER CASE IS IT: $'
     
     CHAR DB ?
     
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H   
    ADD AL,20H
    MOV CHAR,AL
  
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,CHAR
    INT 21H
    
    MOV AH,4CH
    INT 21H
  MAIN ENDP
END MAIN
    
    