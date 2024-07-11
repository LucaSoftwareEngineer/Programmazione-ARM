//scrivere un programma che calcola il quadrato di un numero
.global _start
_start:
	mov r0, #0x05 //inserisco un numero in r0
	B _quadrato	
_quadrato:
	mov r1, r0 
	mul r1, r0 //calcolo il quadrato di r0 e metto il risultato in r1
	B _fine
_fine:
	B _fine
