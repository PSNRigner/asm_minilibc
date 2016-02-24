	global memset
	
section .text

memset:
	mov rax, rdi
memset_recur:
	mov [rdi], sil
	inc rdi
	dec rdx
	jnz memset_recur
	ret
