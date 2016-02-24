	global memcpy
	
section .text

memcpy:
	mov rax, rdi
memcpy_recur:
	mov cl, byte [rsi]
	mov [rdi], cl
	inc rdi
	inc rsi
	dec rdx
	jnz memcpy_recur
	ret
