global entry_point

section .text
entry_point:
	mov rax, 1     		; 1 - write syscall
	mov rdi, 1       	; 1 - stdout fd
	mov rsi, hw_str		; addr of "Hello, World!" in .rodata
	mov rdx, 13		; size of "Hello, World!"
	syscall

	mov rax, 60		; 60 - sys_exit syscall
	mov rdi, 0		; exit code
	syscall
	
section .rodata
hw_str:	 db "Hello, World!"
