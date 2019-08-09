.stack 100h
.code
main proc
     xor bh,bh
     mov ah,1
     int 21h
     mov bl,al
     push bx
     
     int 21h
     mov bl,al
     push bx
      
     int 21h
     mov bl,al
     push bx
     
     int 21h
     mov bl,al
     push bx
     
     mov ah,2
     pop cx  
     mov dl,cl
     int 21h 
     
     pop cx  
     mov dl,cl
     int 21h
     
     pop cx  
     mov dl,cl
     int 21h
     
     pop cx  
     mov dl,cl
     int 21h
          
     main endp
end main

