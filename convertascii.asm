.model small
.stack 100h
.data

.code

main proc

    
    mov ah,1 
    int 21h 
    mov bl,al
    sub bl,0ch 
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
;    
;    mov ah,9
;    lea dx,msg2
;    int 21h 
    
    mov ah,2 
    mov dl,'6'
    int 21h 
    mov dl,bl
    int 21h        
    
    main endp
end main