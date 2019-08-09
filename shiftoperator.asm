mov bh,06h
shl bh,3
mov ah,2
mov dl,bh   
int 21h 

mov ch,24h
shr ch,3
mov ah,2
mov dl,ch   
int 21h
                              
mov bl,05h
sal bl,3
mov ah,2
mov dl,bl   
int 21h 

mov cl,9bh
sar cl,3
mov ah,2
mov dl,cl   
int 21h                              