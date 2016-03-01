;;
;; memcpy.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:32:58 2016 loic frasse-mathon
;; Last update Mon Feb 29 15:06:12 2016 loic frasse-mathon
;;

	global memccpy
	
section .text

memccpy:
	mov rax, rdi
	cmp rcx, 0
	jz memcpy_end
memcpy_recur:
	mov cl, byte [rsi]
	mov [rdi], cl
	cmp cl, dl
	jz memcpy_end
	inc rdi
	inc rsi
	dec rcx
	jnz memcpy_recur
memcpy_end:
	ret
