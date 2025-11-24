section  .data
question db "Hello, what is your name? > "
answer   db "Welcome to this assembly programming "

section .bss
input   resb 0x1e

section .text
global  _start

_start:

	call _display_question
	call _get_user_input
	call _display_answer_text
	call _display_user_input

	mov rax, 0x3c
	mov rdi, 0
	syscall

_display_question:
	mov rax, 0x01
	mov rdi, 0x01
	mov rsi, question
	mov rdx, 0x1c
	syscall
	ret

_get_user_input:
	mov rax, 0x00
	mov rdi, 0x00
	mov rsi, input
	mov rdx, 0x1e
	syscall
	ret

_display_answer_text:
	mov rax, 0x01
	mov rdi, 0x01
	mov rsi, answer
	mov rdx, 0x25
	syscall
	ret

_display_user_input:
	mov rax, 0x01
	mov rdi, 0x01
	mov rsi, input
	mov rdx, 0x1e
	syscall
	ret
