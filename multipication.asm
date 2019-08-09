
mov al,05h
mov ch,0afh
imul ch 

sub ax,ax
;sub,dx,dx
sub ch,ch

mov ax,0bcdfh
mov bx,0003h
imul bx