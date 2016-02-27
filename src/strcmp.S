	global strcmp
	
section .text

strcmp:
	cmp byte [rdi], 0
	jz strcmp_end

	cmp byte [rsi], 0
	jz strcmp_end

	mov cl, byte [rdi]
	
	cmp cl, byte [rsi]
	jnz strcmp_end
	
	inc rdi
	inc rsi
	jmp strcmp
strcmp_end:
	movzx ecx, byte [rsi]
	movzx eax, byte [rdi]
	sub eax, ecx
	ret
