.global _start

_start:
	//resetto i registri prima di avviare il programma
	B _reset_registri

_app:
	MOV R0, #0
	MOV R1, #1
	EOR R2, R0, R1
	B _fine

_reset_registri:
	MOV R0, #0
	MOV R1, #0
	MOV R2, #0
	B _app
	
_fine:
	B _fine
