.section .data
	A: .word 3,4
	B: .word 4,5
	C: .space 8

.global _start
_start:
	LDR R0, =A
	LDR R1, =B
	LDR R2, =C
	MOV R3, #2 @SIZE
	B somma

somma:
	LDR R4, [R0], #4
	LDR R5, [R1], #4
	ADD R6, R4, R5
	STR R6, [R2], #4
	SUB R3, #1
	MOV R6, #0
	CMP R3, #0
	BEQ fine
	BGT somma

fine:
	MOV R7, #1
	SVC 0
