.section .data
	A: .word 1,2

.global _start
_start:
	ldr r0, =A
	mov r1, #2 @size
	b somma_elementi

somma_elementi:
	ldr r2, [r0], #4
	add r3, r2
	sub r1, #1
	cmp r1, #0
	beq fine
	bgt somma_elementi

fine:
	mov r7, #1
	svc 0

@nota: la somma degli elementi del array A è nel registro R3
