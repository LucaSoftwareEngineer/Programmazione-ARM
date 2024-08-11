.section .data
	V: .word 5,8
	
.global _start
_start:
	LDR R0, =V @punto R0 al array
	MOV R1, #2 @contatore elementi array da sommare
	MOV R3, #0 @somma iniziale degli elementi
	B _loop

_loop:
	LDR R2, [R0], #4 @scorri vettore di 1 elemento e salvalo in R2
	ADD R3, R2 @aggiungi alla somma elemento i-esimo
	SUB R1, #1 @decrementa di 1 il contatore degli elementi del array da sommare
	CMP R1, #0
	BGT _loop @se R1>0 ripeti il ciclo
	BEQ _fine @se R1=0 termina il programma

_fine:
	MOV R7, #1
	MOV R0, #0
	SVC 0
