//Scrivere un programma in linguaggio assemblativo 8088 che,
//presi due dati a e b in memoria, calcola l’espressione (a+3)*b
//ponendo il risultato nel registro accumulatore.

.global _start
_start:
	mov r0, #0x01 //questo è A
	mov r1, #0x04 //questo è B
	mov r2, #0x03 //questo è 3
	B _espressione
	
_espressione:
	mov r3, r0
	add r3, r2
	mul r3, r1
	B _fine

_fine:
	B _fine
