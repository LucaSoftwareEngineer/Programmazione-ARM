.global _start
_start:
	MOV R0, #2
	MOV R1, #3
	MUL R2, R0, R1
	B _fine
	
_fine:
	MOV R7, #1
	MOV R0, #0
	SVC 0
