.model small
.stack 100h
.data     
    msg1 db 0dh,0ah,'Enter y for convert and n for exit: $'
    msg2 db 0dh,0ah,'This is invalid!!! $'
    msg3 db 0dh,0ah,'How many digits : $'    
    msg4 db 0dh,0ah,'Enter the dec. number: $'
    msg5 db 0dh,0ah,'The Result is: $'
    msg6 db 0dh,0ah,'Enter 1st digit: $'
    msg7 db 0dh,0ah,'Enter 2nd digit: $'
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    option:
    
    mov ah,9
    lea dx,msg1
    int 21h 
    
    mov ah,1
    int 21h
    
    cmp al,'Y'
    je y
    cmp al,'y'
    je y
    cmp al,'N'
    je n
    cmp al,'n'
    je n
    jmp invalid
    
    y:
      mov ah,9
      lea dx,msg3
      int 21h
      
      mov ah,1
      int 21h
      
      cmp al,'1'
      je one
      cmp al,'2'
      je two
      jmp invalid 
      
      one: 
          mov ah,9
          lea dx,msg4
          int 21h
          
          mov ah,1
          int 21h
          mov bh,al
          
          cmp bh,'0'
          jge c1
          jmp c2
          
          c1:
             cmp bh,'7'
             jle l1
             jmp c2
             
             l1:
                mov ah,9
                lea dx,msg5
                int 21h
                
                mov ah,2   
                mov dl,bh
                int 21h
                jmp option
          
          c2:
            cmp bh,'8'
            je l2
            cmp bh,'9'
            je l2
            jmp invalid
            
            l2:
               mov ah,9
               lea dx,msg5
               int 21h
               
               mov dl,'1'
               mov ah,2
               int 21h
               
               sub bh,8
               mov dl,bh
               int 21h
               jmp option 
          
      
      two:
          mov ah,9
          lea dx,msg6
          int 21h
      
          mov ah,1
          int 21h
          mov bh,al
          
          mov ah,9
          lea dx,msg7
          int 21h
      
          mov ah,1
          int 21h
          mov ch,al 
          
          cmp bh,'1'
          je c3
          cmp bh,'2'
          je c4
          jmp invalid
          
          c3:
             cmp ch,'0'
             jge f1
             jmp f2
             
             f1:
                cmp ch,'5'
                jle p1
                jmp f2
                
                p1:
                   mov ah,9
                   lea dx,msg5
                   int 21h
               
                   mov dl,'1'
                   mov ah,2
                   int 21h 
             
                   add ch,2
                   mov dl,ch
                   int 21h
                   jmp option 
                   
             f2:
                cmp ch,'6'
                jge p2
                jmp invalid
                
                p2:
                   cmp ch,'9'
                   jle r1
                   jmp invalid
                   
                   r1:
                       mov ah,9
                       lea dx,msg5
                       int 21h
                   
                       mov dl,'2'
                       mov ah,2
                       int 21h 
                 
                       sub ch,6
                       mov dl,ch
                       int 21h
                       jmp option 
             
          
          c4:
             cmp ch,'0'
             jge r2
             jmp invalid
             
             r2:
                cmp ch,'3'
                jle r3
                jmp invalid
                
                r3:
                   mov ah,9
                   lea dx,msg5
                   int 21h
               
                   mov dl,'2'
                   mov ah,2
                   int 21h 
             
                   add ch,4
                   mov dl,ch
                   int 21h
                   jmp option  
                
                
    
    invalid:
      mov ah,9
      lea dx,msg2
      int 21h  
      jmp option
    
    
    n:
      mov ah,4ch
      int 21h
    
    main endp
end main
    
    