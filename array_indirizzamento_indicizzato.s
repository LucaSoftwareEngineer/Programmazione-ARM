.section .data
	V: .word 1,8,5

.global _start
_start:
	LDR R0, =V
	MOV R1, #8 @size
	MOV R3, #0 @indice
	B _mostra_elementi

_mostra_elementi:
	LDR R2, [R0, R3]
	ADD R3, #4
	CMP R3, R1
	BGT _fine
	B _mostra_elementi
	
_fine:
	MOV R7, #1
	SVC 0