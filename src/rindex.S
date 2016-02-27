	global rindex
	
section .text

rindex:
	dec rdi
	mov r8, 0
	mov cl, sil
	mov rax, 0
rindex_while:
	inc rdi

	mov ch, [rdi]
	
	;; Return pointer if founded char
	cmp ch, cl
	jnz rindex_if
	mov rax, rdi
rindex_if:
	;; Loop while not at str end
	cmp ch, 0
	jnz rindex_while

	;; Return 
	ret
