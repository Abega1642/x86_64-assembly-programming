
section .data
	greeting_message db "Hello low level programming fan!", 0x0a, 0x00
	goodbey_message db "See you next time low level programming fan!", 0x0a, 0x00

section .text
	global _start

_start:
	mov rax, greeting_message
	call _printf

	mov  rax, goodbey_message
	call _printf

	mov rax, 0x3c
	mov rdi, 0x00
	syscall



_printf:
	push rax
	mov rbx, 0x00

_printlp:
	inc rax,
	inc rbx,
	mov cl, [rax]
	cmp cl, 0x00
	jne _printlp

	mov rax, 0x01
	mov rdi, 0x01
	pop rsi
	mov rdx, rbx
	syscall

	ret
