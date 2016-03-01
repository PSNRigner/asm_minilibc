;;
;; strlen.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:32:29 2016 loic frasse-mathon
;; Last update Tue Mar  1 04:02:06 2016 loic frasse-mathon
;;

	global atoi

section .text

atoi:
	xor eax, eax
	xor r8d, r8d

	mov cl, [rdi]
	cmp cl, 45
	jnz atoi_plus
	dec r8d
	inc rdi
	jmp atoi_while

atoi_plus:
	inc r8d
	cmp cl, 43
	jnz atoi_while
	inc rdi

atoi_while:
	mov cl, [rdi]
	
	cmp cl, 0
	jz atoi_end

	cmp cl, 48
	jl atoi_end
	cmp cl, 57
	jg atoi_end

	cmp eax, 214748364
	jl atoi_while2
	jg atoi_error

	cmp cl, 56
	jg atoi_error
	jl atoi_while2

	cmp r8d, 1
	jz atoi_error

atoi_while2:
	imul eax, 10
	sub cl, 48
	movzx r9d, cl
	add eax, r9d

	inc rdi
	jmp atoi_while

atoi_end:
	imul eax, r8d
	ret

atoi_error:
	xor eax, eax
	ret
