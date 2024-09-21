.global _start
_start:
	
	MOV R0, #3 @questo è n
	LSL R1, R0, #6 @n * 64	
	LSL R2, R0, #1 @n * 2
	ADD R3, R1, R2 @ (n*64)+(n*2) = n*66
	
	B _end
	
_end:
	MOV R7, #1
	SVC 0
