.section .data
	V: .word 6,4,9
	N: .word 3,5,2
	Z: .space 24 @array Z da 24 byte

.global _start
_start:
	LDR R0, =V
	LDR R1, =N
	MOV R2, #3 @elementi degli array V
	MOV R3, #3 @elementi degli array N
	LDR R6, =Z
	B _merge_V
	
_merge_V:
	LDR R4, [R0], #4 @leggi il valore da V e mettilo in R4
	STR R4, [R6], #4 @prendi il valore da R4 e mettilo in Z
	SUB R2, #1
	CMP R2, #0
	BGT _merge_V
	BEQ _merge_N

_merge_N:
	LDR R5, [R1], #4 @leggi il valore da N e mettilo in R5
	STR R5, [R6], #4 @leggi il valore da R5 e mettilo in Z
	SUB R3, #1
	CMP R3, #0
	BGT _merge_N
	BEQ _fine
	
_fine:
	MOV R0, #0
	MOV R7, #1
	SVC 0
	
@il risultato finale sarà Z=6 4 9 3 5 2	

	