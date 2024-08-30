.section .data
	V: .word 3,4,6

.global _start
_start:
	LDR R0, =V
	MOV R2, #0 @risultato_somma
	MOV R1, #3 @size
	CMP R1, #0
	BEQ _fine
	B _somma
	
_somma:
	LDR R6, [R0], #4
	ADD R2, R6
	SUB R1, #1
	CMP R1, #0
	BEQ _fine
	B _somma
	
_fine:
	MOV R7, #1
	SVC 0
	
