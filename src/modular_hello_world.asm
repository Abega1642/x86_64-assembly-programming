section .data

text db "Modular hello world!", 0x0a

	section .text
	global  _start

_start:

	call _print_hello_world

	mov rax, 0x3c
	mov rdi, 0x00
	syscall

_print_hello_world:
	mov rax, 0x01
	mov rdi, 0x01
	mov rsi, text
	mov rdx, 0x15
	syscall
	ret
