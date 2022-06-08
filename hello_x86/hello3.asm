section .text
	
	global _start

_start:
	mov rax, 1
	cmp rax, 1
	jne bad
	jmp good
	;;sys_write()
good:	
	mov rax, WRITE
	mov rdi, STDOUT
	mov rsi, goodend
	mov rdx, len_good
	syscall
	jmp exit

bad:
	mov rax, WRITE
	mov rdi, STDOUT
	mov rsi, badend
	mov rdx, len_bad
	syscall
	jmp exit
	;;sys_exit()
exit:
	mov rax, EXIT
	mov rdi, 0
	syscall



section .data
	goodend db "uguale  !", 0xa
	len_good equ $ - goodend
	badend db "diversi !", 0xa
	len_bad equ $ - badend


	;;sys call
	EXIT equ 60
	WRITE equ 1
	STDOUT equ 1
	