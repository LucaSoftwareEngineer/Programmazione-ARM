.global _start
_start:
	//resetto i registri prima di avviare il programma
	B _reset_registri
	
_reset_registri:
	//porto i registri del processore a 0
	MOV R0, #0
	MOV R1, #0
	MOV R2, #0
	B _app
	
_app:
	//assegno al registro 0 il valore di A
	MOV R0,#0
	
	//assegno al registro 1 il valore di B
	MOV R1,#1
	
	//avvio il confronto tra A e B
	CMP R0, R1
	
	//se A è maggiore di B
	BGT _maggiore
	
	//se A è minore di B
	BLT _minore
	
	//se A è uguale a B
	BEQ _uguale
	
_maggiore:
	//scrivo 1 nel registro R3 per dire che A>B
	MOV R2, #1
	B _fine
	
_minore:
	//scrivo 2 nel registro R3 per dire che A<B
	MOV R2, #2
	B _fine
	
_uguale:
	//scrivo 3 nel registro R3 per dire che A=B
	MOV R2, #3
	B _fine
	
_fine:
	B _fine
