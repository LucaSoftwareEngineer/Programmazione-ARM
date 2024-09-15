.global _start
_start:
	MOV R0, #1 @numero n
	LSL R1, R0, #6
	LSL R2, R0, #1
	ADD R3, R1, R2
	B _end
_end:
	MOV R7, #1
	SVC 0
