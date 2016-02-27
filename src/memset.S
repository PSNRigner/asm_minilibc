;;
;; memset.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:33:03 2016 loic frasse-mathon
;; Last update Sat Feb 27 14:33:04 2016 loic frasse-mathon
;;

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
