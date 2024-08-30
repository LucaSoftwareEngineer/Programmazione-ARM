.section .data
	cella_1: .word 5
	cella_2: .word 4

.global _start
_start:
	LDR R0, =cella_1
	LDR R1, =cella_2
	
	LDR R2, [R0]
	LDR R3, [R1]
	
	STR R3, [R0]
	STR R2, [R1]
	
	B _end

_end:	
	MOV R7, #1
	SVC 0
