;;
;; strcmp.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:33:13 2016 loic frasse-mathon
;; Last update Sat Feb 27 14:33:13 2016 loic frasse-mathon
;;

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
