.section .data
	V: .word 5,8,3,9

.global _start
_start:
	LDR R0, =V
	MOV R6, #4
	MOV R3, #0
	B _loop

_loop:
	LDR R2, [R0], #4
	ADD R3, R2
	SUB R6, #1
	CMP R6, #0
	BGT _loop
	BEQ _fine

_fine:
	MOV R7, #1
	MOV R0, #0
	SVC 0
