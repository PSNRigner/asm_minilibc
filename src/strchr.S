	global strchr
	
section .text

strchr:
	mov rax, rdi
	dec rax
	mov r8, 0
	mov cl, sil
strchr_while:
	inc rax

	mov ch, [rax]
	
	;; Return pointer if founded char
	cmp ch, cl
	jz strchr_ret

	;; Loop while not at str end
	cmp ch, 0
	jnz strchr_while

	;; Return null if no result
	mov rax, 0
	ret
strchr_ret:
	ret
