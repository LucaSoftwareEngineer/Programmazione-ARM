.section .data
	V: .word 5,6,8
	
.global _start
_start:
	LDR R0, =V @puntatore al array V
	MOV R1, #6 @valore che devo cercare nel array
	MOV R3, #3 @elementi del array
	B _cerca
	
_cerca:
	LDR R2, [R0], #4
	SUB R3, #1
	CMP R3, #0
	BEQ _fine
	CMP R2, R1
	BEQ _trovato
	BNE _cerca

_trovato:
	MOV R5, #1
	B _fine
_fine:
	MOV R0, #0
	MOV R7, #1
	SVC 0
