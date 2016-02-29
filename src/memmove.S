;;
;; memmove.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:32:52 2016 loic frasse-mathon
;; Last update Mon Feb 29 14:08:35 2016 loic frasse-mathon
;;

	global memmove
	
section .text

memmove:
	mov rax, rdi
	cmp rdx, 0
	jz memmove_end
	
	mov r8, rdi
	sub r8, rsi
	cmp r8, 0
	jge memmove_right

memmove_left:
	mov cl, byte [rsi]
	mov [rdi], cl
	inc rdi
	inc rsi
	dec rdx
	jnz memmove_left
	ret

memmove_right:
	mov r8, rdx
	sub r8, 1
	mov cl, byte [rsi + r8]
	mov [rdi + r8], cl
	dec rdx
	cmp rdx, 0
	ja memmove_right
memmove_end:
	ret
