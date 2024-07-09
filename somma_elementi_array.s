.data
	vettore: .word 0x01,0x02,0x03,0x04

.global _start
_start:
	LDR R9, =vettore
	LDR R0, [R9, #0]
	LDR R1, [R9, #4]
	LDR R2, [R9, #8]
	LDR R3, [R9, #12]
	
	B _somma
	
_somma: 
	MOV R4, R0
	ADD R4, R1
	ADD R4, R2
	ADD R4, R3
	
	B _fine
	
_fine:
	B _fine
