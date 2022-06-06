section .data
    num1: equ 10
    num2: equ 140
    msg:    db "Sum is correct", 10
section .text      

    global _start

_start:
    mov rax, num1
    mov rbx, num2
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

    