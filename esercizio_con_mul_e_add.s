//Scrivere un programma in linguaggio assembly ARM che,
//presi due dati a e b in memoria, calcola l’espressione (a+3)*b
//ponendo il risultato in un registro.

.global _start
_start:
	MOV R0, #2 @a
	MOV R1, #5 @b
	ADD R0, #3 @a+3
	MUL R2, R0, R1 @(a+3)*b
	B _fine
	
_fine:
	MOV R7, #1
	MOV R0, #0
	SVC 0
