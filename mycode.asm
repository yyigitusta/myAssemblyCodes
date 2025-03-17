




org 100h

mov cx, 6            
mov si, 0           
mov bl, 0            
mov dl, 0           

jmp loop_start      

loop_start:
    mov ax, [numbers + si]
    inc si                 
    inc si
    mov bl, value         
    cmp al, bl           
    jl skip_check         
    dec cx                
    jcxz finish           
    jmp loop_start        

skip_check:
    mov dl, divisor       
    idiv dl               
    cmp ah, bl             
    je increment_count    
    dec cx                
    jcxz finish           
    jmp loop_start        

increment_count:
    inc count             
    dec cx                
    jcxz finish           
    jmp loop_start       

finish:
    ret                    

numbers dw -1, -4, -16, -128, 4, 5 
value db 0                         
divisor db 4                       
count db 0         





