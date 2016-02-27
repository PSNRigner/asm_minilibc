;;
;; strstr.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:32:21 2016 loic frasse-mathon
;; Last update Sat Feb 27 14:32:23 2016 loic frasse-mathon
;;

	global strstr
	
section .text

strstr:
	dec rdi
strstr_while:
	inc rdi

	mov ch, byte [rdi]

	cmp ch, 0
	jz strstr_end

	mov r8, rdi
	mov r9, rsi
	dec r8
	dec r9

strstr_while_2:
	inc r8
	inc r9
	mov dl, byte [r8]
	mov cl, byte [r9]

	cmp cl, 0
	jz strstr_ret

	cmp dl, cl
	jz strstr_while_2

	jmp strstr_while

strstr_ret:
	mov rax, rdi
	ret

strstr_end:
	mov rax, 0
	ret
