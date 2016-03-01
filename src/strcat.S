;;
;; strcat.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Sat Feb 27 14:32:58 2016 loic frasse-mathon
;; Last update Mon Feb 29 15:06:00 2016 loic frasse-mathon
;;

	global strcat
	
section .text

strcat:
	mov rax, rdi
	
strcat_1:
	mov dl, [rdi]
	cmp dl, 0
	jz strcat_2
	inc rdi
	jmp strcat_1
	
strcat_2:
	mov cl, [rsi]
	cmp cl, 0
	jz strcat_end
	
	mov [rdi], cl
	inc rdi
	inc rsi
	jmp strcat_2
	
strcat_end:
	mov [rdi], cl
	ret
