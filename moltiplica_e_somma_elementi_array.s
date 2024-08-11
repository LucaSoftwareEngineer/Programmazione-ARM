@realizzare V1(0)*V2(0)+V1(1)+V2(1)

.section .data
	V1: .word 3,7
	V2: .word 6,4

.global _start
_start:
	LDR R1, =V1 @array V1
	LDR R2, =V2 @array V2
	MOV R3, #2 @numero elementi array
	MOV R6, #0 @risultato iniziale
	B _loop
	
_loop:
	LDR R4, [R1], #4
	LDR R5, [R2], #4
	MUL R7, R4, R5 @V1(i)*V2(i)
	ADD R6, R7 @R6+R7
	SUB R3, #1
	CMP R3, #0
	BGT _loop
	BEQ _fine
	
_fine:
	MOV R7, #1
	MOV R0, #0
	SVC 0
