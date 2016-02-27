;;
;; rindex.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:32:42 2016 loic frasse-mathon
;; Last update Sat Feb 27 14:32:50 2016 loic frasse-mathon
;;

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
	
	cmp ch, cl
	jnz rindex_if
	mov rax, rdi
rindex_if:
	cmp ch, 0
	jnz rindex_while

	ret
