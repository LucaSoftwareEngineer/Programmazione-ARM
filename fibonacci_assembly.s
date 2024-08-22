.section .data
	fibonacci: .word 1,1,2,3,5,8,13

.global _start
_start:
	LDR R0, =fibonacci
	MOV R1, #7 @elementi del array
	B _calcolo_termine_ennesimo
	
_calcolo_termine_ennesimo:
	LDR R2, [R0, #20]
	LDR R3, [R0, #24]
	MOV R4, #0
	ADD R4, R2
	ADD R4, R3 @in R4 il termine ennesimo della serie di fibonacci
	B _end
	
_end:
	MOV R7, #1
	SVC 0
