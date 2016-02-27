	global strpbrk
	
section .text

strpbrk:
	dec rdi
strpbrk_while:
	inc rdi

	mov ch, byte [rdi]

	cmp ch, 0
	jz strpbrk_end

	mov r9, rsi
	dec r8
	dec r9

strpbrk_while_2:
	inc r9
	mov dl, byte [rdi]
	mov cl, byte [r9]

	cmp cl, 0
	jz strpbrk_while

	cmp dl, cl
	jz strpbrk_ret

	jmp strpbrk_while_2

strpbrk_ret:
	mov rax, rdi
	ret

strpbrk_end:
	mov rax, 0
	ret
