;;
;; memcpy.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:32:58 2016 loic frasse-mathon
;; Last update Sat Feb 27 14:32:59 2016 loic frasse-mathon
;;

	global memcpy
	
section .text

memcpy:
	mov rax, rdi
memcpy_recur:
	mov cl, byte [rsi]
	mov [rdi], cl
	inc rdi
	inc rsi
	dec rdx
	jnz memcpy_recur
	ret
