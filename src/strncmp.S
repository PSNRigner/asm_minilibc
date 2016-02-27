;;
;; strncmp.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:33:21 2016 loic frasse-mathon
;; Last update Sat Feb 27 14:33:22 2016 loic frasse-mathon
;;

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
