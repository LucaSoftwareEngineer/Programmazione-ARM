.global _start
_start:
	MOV R0, #1
	MOV R1, #1
	AND R2, R0, R1 @ r0 and r1
	EOR R3, R0, R1 @ r0 xor r1
	ORR R4, R0, R1 @ r0 or r1
