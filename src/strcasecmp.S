;;
;; strcasecmp.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:33:10 2016 loic frasse-mathon
;; Last update Sat Feb 27 14:33:11 2016 loic frasse-mathon
;;

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
