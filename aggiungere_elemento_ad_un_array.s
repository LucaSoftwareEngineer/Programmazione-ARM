.section .data
	V: .word 5,6,8

.global _start
_start:
	LDR R0, =V	@puntatore al array V
	MOV R1, #3	@numero elementi del array V
	MOV R2, #4  @valore da aggiungere a V
	STR R2, [R0, #12] @aggiungi valore in V nella posizione 12
	B _fine
	
_fine:
	MOV R0, #0
	MOV R7, #1
	SVC 0

@il risultato sarà V=5 6 8 4