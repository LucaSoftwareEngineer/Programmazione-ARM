.section .data
	V: .word 4,7,2

.global _start
_start:
	LDR R0, =V
	mov r1, #3 @size
	MOV r3, #0
	B cerca_max

cerca_max:
	LDR R2, [R0], #4
	CMP R3, R2
	BLT cambia_max
	SUB R1, #1
	CMP R1, #0
	BGT cerca_max
	B fine

cambia_max:
	MOV R3, R2
	SUB R1, #1
	CMP R1, #0
	BGT cerca_max
	B fine

fine:
	MOV R7, #1
	SVC 0
