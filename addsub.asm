mov bh,32h
mov ch,33h
xchg bh,ch

add bh,ch  
sub bh,30h

mov ah,2
mov dl,bh
int 21h

mov ah,4ch ;to exit DOS Mode
int 21h
