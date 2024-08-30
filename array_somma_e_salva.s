.section .data
	A: .word 4,5
	B: .word 6,7
	C: .space 16

.global _start
_start:
	LDR R0, =A
	LDR R1, =B
	LDR R2, =C
	MOV R3, #3 @size
	B somma_elemento_a_elemento
	
somma_elemento_a_elemento:
	MOV R6, #0
	LDR R4, [R0], #4
	LDR R5, [R1], #4
	ADD R6, R4, R5
	STR R6, [R2], #4
	SUB R3, #1
	CMP R3, #0
	BEQ fine
	BNE somma_elemento_a_elemento
	
fine:
	MOV R7, #1
	SVC 0
