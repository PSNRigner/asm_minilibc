;;
;; strchr.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:32:32 2016 loic frasse-mathon
;; Last update Sat Feb 27 14:32:40 2016 loic frasse-mathon
;;

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
	
	cmp ch, cl
	jz strchr_ret

	cmp ch, 0
	jnz strchr_while

	mov rax, 0
	ret
strchr_ret:
	ret
