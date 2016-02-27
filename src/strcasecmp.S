	global strcasecmp
	
section .text

strcasecmp:
	mov cl, byte [rdi]
	mov dl, byte [rsi]

	cmp cl, 65
	jl strcasecmp_1
	cmp cl, 90
	jg strcasecmp_1
	add cl, 32
strcasecmp_1:
	cmp dl, 65
	jl strcasecmp_2
	cmp dl, 90
	jg strcasecmp_2
	add dl, 32
strcasecmp_2:
	cmp byte [rdi], 0
	jz strcasecmp_end

	cmp byte [rsi], 0
	jz strcasecmp_end

	cmp cl, dl
	jnz strcasecmp_end
	
	inc rdi
	inc rsi
	jmp strcasecmp
	
strcasecmp_end:
	movzx eax, cl
	movzx ecx, dl
	sub eax, ecx
	ret
