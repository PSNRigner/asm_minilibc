;;
;; test.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 16:34:33 2016 loic frasse-mathon
;; Last update Sat Feb 27 18:26:30 2016 loic frasse-mathon
;;

	global strcspn
	
section .text

strcspn:
	dec rdi
	xor rax, rax
	dec rax
strcspn_while:
	inc rdi
	inc rax

	mov ch, byte [rdi]

	cmp ch, 0
	jz strcspn_ret

	mov r9, rsi
	dec r9

strcspn_while_2:
	inc r9
	mov dl, byte [rdi]
	mov cl, byte [r9]

	cmp cl, 0
	jz strcspn_while

	cmp dl, cl
	jz strcspn_ret

	jmp strcspn_while_2

strcspn_ret:
	ret
