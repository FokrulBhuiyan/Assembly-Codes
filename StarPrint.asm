.model small
.stack 100h
.data
.code
main proc

    mov cx,4
    mov bh,1

    start: 
    mov bl,1

    print:
    mov ah,2
    mov dl,"*"
    int 21h

    inc bl
    cmp bl,bh
    jle print

    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h

    inc bh
    loop start

    mov ah,4ch
    int 21h

    main endp
end main
