.MODEL SMALL
.STACK 100H
.DATA         
.code
main proc
mov al,'5'
mov bl,al 
mov cx,8

ab:
shl bl,1
jc one
jmp zero

one:  
mov ah,2
mov dl,'1'
int 21h
LOOP ab 
jmp exit

zero: 
mov ah,2
mov dl,'0'
int 21h
loop ab

exit:
mov ah,4ch
int 21h
                             
    MAIN ENDP
 END MAIN