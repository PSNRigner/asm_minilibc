;;
;; fabs.S for  in /home/frasse_l/Projets/asm_minilibc
;; 
;; Made by loic frasse-mathon
;; Login   <frasse_l@epitech.net>
;; 
;; Started on  Tue Mar  1 02:55:47 2016 loic frasse-mathon
;; Last update Tue Mar  1 02:55:52 2016 loic frasse-mathon
;;

	global fabs

section .text

fabs:
	mov r8, 0
	cvtsi2sd xmm1, r8
	comisd xmm0, xmm1
	jae fabs_end
	mov r8, -1
	cvtsi2sd xmm1, r8
	mulsd xmm0, xmm1
fabs_end:
	ret
