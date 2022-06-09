section .data
    msg db "ciao stringa sonica", 0xa
	len equ $ - msg
section .text
    global _start
_start:
    mov rbx, msg
    mov rax, rbx
nextchar:
    cmp byte[rax], 0
    jz finished
    inc rax ;rax++
    jmp nextchar
finished:
    sub rax, rbx
    mov rdx, rax
    mov rax , 1
    mov rsi , msg
    syscall
    mov rax, 60
    mov rbx, 0
    syscall
