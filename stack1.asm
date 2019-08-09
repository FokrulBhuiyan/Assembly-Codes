.stack 100h
.code
main proc
     
     mov bx,5h
     push bx    ;sp= 0000h,[sp]=0100h
     push bx    ;sp= 0005h,[sp+2]=feh+2=0100h
     mov cx,7h
     push cx    ;sp= 0007h,[sp-2]=00f8h
     
end main