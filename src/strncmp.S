	global strncmp
	
section .text

strncmp:
	cmp byte [rdi], 0
	jz strncmp_end

	cmp byte [rsi], 0
	jz strncmp_end

	mov cl, byte [rdi]
	
	cmp cl, byte [rsi]
	jnz strncmp_end

	dec rdx
	jz strncmp_end
	
	inc rdi
	inc rsi
	jmp strncmp
strncmp_end:
	movzx ecx, byte [rsi]
	movzx eax, byte [rdi]
	sub eax, ecx
	ret
