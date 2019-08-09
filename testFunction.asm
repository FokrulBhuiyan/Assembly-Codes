                                 
mov ch,5Fh
test ch,1h
jz l1
jmp l2
 
 
l1: 

mov ah,2
mov dl,'E'
int 21h
mov ah,4ch
int 21h


l2:  

mov ah,2
mov dl,'O'
int 21h