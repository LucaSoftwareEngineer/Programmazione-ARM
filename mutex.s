.section .data
	mutex: .word 1

.global _start
_start:
	LDR R0, =mutex
	LDR R6, [R0]
	CMP R6, #1
	BEQ _regione_critica
	BNE _fine
	
_regione_critica:
	MOV R1, #2
	MOV R2, #5
	ADD R3, R1, R2
	B _fine

_fine:
	MOV R7, #1
	SVC 0
