org 100h

mov si, 0               
mov cx, 8                

mov bh, 'e'              
mov bl, 'r'             

jmp loop_start           

loop_start:
    mov al, [sentence + si] 
    cmp al, bh             
    je found_e              
    jmp not_found          

found_e:
    inc si                  
    mov al, [sentence + si] 
    cmp al, bl              
    je found_er             
    dec cx                 
    jcxz finish             
    jmp loop_start          

found_er:
    inc count              
    inc si                  
    dec cx                  
    jcxz finish             
    jmp loop_start         

not_found:
    dec cx                  
    inc si                  
    jcxz finish             
    jmp loop_start         

finish:
    ret                     

sentence db 'erkekler'    
count db 0              