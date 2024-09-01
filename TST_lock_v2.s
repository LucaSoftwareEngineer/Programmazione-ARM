.section .data
	lock: .word 0

.global _start
_start:
	ldr r0, =lock
	ldr r1, [r0]
	tst r1, #1
	BEQ regione_critica
	BNE _start
	
regione_critica:
	@imposto il lock ad 1
	mov r2, #1
	str r2, [r0]
	@eseguo il codice della regione critica
	mov r3, #5
	add r3, #2
	@imposto il lock ad 0
	mov r2, #0
	str r2, [r0]
	@termina il programma
	B fine

fine: 
	mov r7, #1
	svc 0
