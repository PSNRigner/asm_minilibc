	global strlen
	
section .text

strlen:
	mov rax, -1
	dec rdi
strlen_while:
	inc rax
	inc rdi
	mov cl,byte [rdi]
	cmp cl, 0
	jnz strlen_while
	ret
