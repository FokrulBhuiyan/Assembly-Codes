;input y,q and initial 7 and print 
;7****
;**q**
;**y**
;****7
.model small
.stack 100h
.data
.code
main proc
;    mov ah,2
;    mov dl,'P'
;    int 21h
;    mov dl,0Dh
;    int 21h
;    mov dl,0Ah
;    int 21h
;    mov dl,'Q'
;    int 21h
     mov ah,1
     int 21h
     mov ch,al
     int 21h
     mov cl,al
     mov bh,55
     
     mov ah,2
     mov dl,0Dh
     int 21h
     mov dl,0Ah
     int 21h 
     mov dl,bh  
     int 21h
     mov dl,'*'
     int 21h
     int 21h
     int 21h
     int 21h
     
     mov dl,0Dh
     int 21h
     mov dl,0Ah
     int 21h 
     mov dl,'*'
     int 21h
     int 21h
     mov dl,cl
     int 21h
     mov dl,'*'
     int 21h
     int 21h 
     
     mov dl,0Dh
     int 21h
     mov dl,0Ah
     int 21h
     mov dl,'*'
     int 21h
     int 21h
     mov dl,ch
     int 21h
     mov dl,'*'
     int 21h
     int 21h
     
     mov dl,0Dh
     int 21h
     mov dl,0Ah
     int 21h 
     mov dl,'*'
     int 21h
     int 21h
     int 21h
     int 21h
     mov dl,bh  
     int 21h
    main endp
end main