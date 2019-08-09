mov al,'1'
and al,01h  
shl bl,1
or bl,al 
mov al,'0'
and al,00h  
shl bl,1
or bl,al
mov al,'1'
and al,01h  
shl bl,1
or bl,al

mov dl,bl
mov ah,2
int 21h


