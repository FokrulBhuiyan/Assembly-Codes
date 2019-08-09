; range in 0-9
.model small
.stack 100h
.data
   msg  db 0dh,0ah,'Enter y for yes and n for Exit: $'  
   msg1 db 0dh,0ah,'Enter 1st Digit: -$'
   msg2 db 0dh,0ah,'Enter 2nd Digit: -$' 
   msg3 db 0dh,0ah,'Enter + for add and - for neg: $' 
   msg4 db 0dh,0ah,'This is invalid!!! $'  
   msg5 db 0dh,0ah,'The result is: $'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    option:  
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,'Y'
    je y 
    cmp al,'y'
    je y 
    cmp al,'N'
    je exit 
    cmp al,'n'
    je exit 
    jmp invalid
    
    y:   
    
        mov ah,9
        lea dx,msg1
        int 21h
        
        mov ah,1
        int 21h
        mov bl,al  
          
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,1
        int 21h
        mov cl,al 
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,1
        int 21h
        mov dh,al
        
        cmp dh,'+'
        je ad
        cmp dh,'-'
        je su
        jmp invalid
        
        ad:
           mov ah,9
           lea dx,msg5
           int 21h 
           
           mov ah,2
           mov dl,'-'
           int 21h
           
           add bl,cl
           sub bl,30h
           mov dl,bl
           int 21h 
           jmp option
           
        su: 
           cmp bl,cl
           jl l1
           cmp bl,cl
           jg l2
           jmp invalid
           
           l1:
              mov ah,9
              lea dx,msg5
              int 21h   
              
              mov ah,2
              sub cl,bl
              add cl,30h
              mov dl,cl
              int 21h 
              jmp option
              
           l2:
              mov ah,9
              lea dx,msg5
              int 21h 
           
              mov ah,2
              mov dl,'-'
              int 21h  
              
              sub bl,cl
              add bl,30h
              mov dl,bl
              int 21h 
              jmp option
        
    invalid:
    mov ah,9
    lea dx,msg4
    int 21h
    jmp option
    
 
    exit:
       mov ah,4ch
       int 21h
    
    main endp
 end main
