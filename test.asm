mov bl,5h
test bl,01h
jz one 
jmp zero
one:
mov ah,2
mov dl,'1'
int 21h
jmp exit

zero:
mov ah,2
mov dl,'0'
int 21h  

exit:
mov ah,4ch
int 21h
