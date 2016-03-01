;;
;; strdup.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:32:29 2016 loic frasse-mathon
;; Last update Tue Mar  1 01:21:04 2016 loic frasse-mathon
;;

	global strdup
	extern malloc	

section .text

strdup:
	mov r8, rdi
	push rdi
	mov rdi, -1
	dec r8

strdup_while:
	inc rdi
	inc r8
	mov cl, byte [r8]
	cmp cl, 0
	jnz strdup_while

	inc rdi
	xor rax, rax
	call malloc wrt ..plt

	xor r8, r8
	cmp rax, r8
	jz strdup_end
	mov r8, rax
	pop r11

strdup_while2:
	mov cl, byte [r11]
	mov [r8], cl

	cmp cl, 0
	jz strdup_end

	inc r11
	inc r8
	jmp strdup_while2

strdup_end:
	ret
