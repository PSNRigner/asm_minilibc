;;
;; strlen.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:32:29 2016 loic frasse-mathon
;; Last update Sat Feb 27 14:32:30 2016 loic frasse-mathon
;;

	global strlen
	
section .text

strlen:
	mov rax, -1
	dec rdi
strlen_while:
	inc rax
	inc rdi
	mov cl,byte [rdi]
	cmp cl, 0
	jnz strlen_while
	ret
