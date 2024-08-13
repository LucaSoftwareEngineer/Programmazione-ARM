.section .data
	V: .word 5,3,4

.global _start
_start:
	LDR R0, =V
	MOV R1, #3 @valore che cerco
	MOV R2, #3 @numero elementi array
	B _cerca
	
_cerca:
	LDR R3, [R0], #4
	CMP R3, R1
	BEQ _trovato
	SUB R2, #1
	CMP R2, #0
	BEQ _non_trovato
	BNE _cerca
	
_trovato:
	MOV R6, #1
	B _fine
	
_non_trovato:
	MOV R7, #1
	B _fine
	
_fine: 
	MOV R0, #0
  MOV R7, #1
  SVC 0
