.model small
.stack 100h
.data
msg1 db 'Enter 2 num: $'
msg2 db 0dh,0ah,'$'
msg3 db 'Sum is: $'     
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    int 21h
    mov bl,al
    add bh,bl
    sub bh,48 
    
    mov ah,9
    lea dx,msg2
    int 21h         
             
    lea dx,msg3
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h  
    
    main endp
end main