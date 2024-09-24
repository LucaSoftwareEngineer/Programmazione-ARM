.section .data
	lock: .word 0

.global _start
_start:
	LDR R0, =lock
	TST R0, #1
	BEQ regione_critica  @lock=0 => regione critica libera
	BNE _start @lock=1 => regione critica occupata
	
regione_critica:
	MOV R1, #0
	MOV R2, #1
	STR R2, [R0] @imposta lock ad 1
	ADD R3, R3, #5
	STR R1, [R0] @rilascia lock impostalo a 0
	B _start @esci da regione critica
