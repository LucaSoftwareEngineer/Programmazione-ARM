.section .data
	V: .word 5,6,3
	U: .word 4,2,9
	Z: .space 24

.global _start
_start:
	LDR R0, =V
	LDR R1, =U
	LDR R2, =Z
	MOV R9, #3
	MOV R10, #3
	B merge_step_1
	
merge_step_1:
	LDR R3, [R0], #4
	STR R3, [R2], #4
	SUB R9, #1
	CMP R9, #0
	BEQ merge_step_2
	BNE merge_step_1
	
merge_step_2:
	LDR R4, [R1], #4
	STR R4, [R2], #4
	SUB R10, #1
	CMP R10, #0
	BEQ fine
	BNE merge_step_2
	
fine:
	MOV R7, #1
	SVC 0
