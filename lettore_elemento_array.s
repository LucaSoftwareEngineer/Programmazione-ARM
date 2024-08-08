.section .data
numeri: .word 6, 3, 9, 1

.global _start
_start:
	LDR R0, =numeri
	LDR R0, [R0, #12]
