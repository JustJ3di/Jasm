section .data
    num1: equ 30
    num2: equ 120
    msg:    db "Sum is correct", 10
section .text      
    global _start
    
_start:
    ;; rax = num1 
    mov rax, num1
    ;; rax = num2
    mov rbx, num2
    ;;rax = rax + rbx
    add rax, rbx
    cmp rax, 150
    jne .exit
    jmp .rightSum

.rightSum:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 15
    syscall
    jmp .exit

.exit:
    mov rax , 60
    mov rdi , 0
    syscall

    