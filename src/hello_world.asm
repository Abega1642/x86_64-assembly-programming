
section .data
		text db "Hello, world! New to Assembly programming!", 0x0a

section .text
		global _start

_start:
	mov rax, 0x01
	mov rdi, 0x01
	mov rsi, text
	mov rdx, 0x2b
	syscall

	mov rax, 0x3c
	mov rdi, 0x00
	syscall
