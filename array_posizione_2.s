.section .data
	array: .word 1,8,3

.global start
start:
	LDR R0, =array
	LDR R1, [R0, #4]
