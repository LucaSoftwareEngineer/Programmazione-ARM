.global _start

_start:
	//resetto i registri prima di avviare il programma
	B _reset_registri

_app:
	//assegno a R0 il valore 0
	MOV R0, #0
 	//assegno a R1, il valore
	MOV R1, #1
 	//tramite il comando EOR eseguo lo XOR tra R0 e R1 e salvo il risultato in R2
	EOR R2, R0, R1
	B _fine

_reset_registri:
	MOV R0, #0
	MOV R1, #0
	MOV R2, #0
	B _app
	
_fine:
	B _fine
