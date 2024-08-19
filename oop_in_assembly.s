.section .data
	codice: .word 0
	marca: .word 0
	modello: .word 0
	velocita_processore: .word 0
	dimensioni_ram: .word 0
	dimensioni_disco: .word 0
	dimensioni_monitor: .word 0
	anno_acquisto: .word 0

.global _start
_start:
	@computer numero 1
	LDR R0, =codice
	MOV R1, #1
	STR R1, [R0, #4]
	LDR R0, =marca
	MOV R1, #0X10
	STR R1, [R0, #4]
	LDR R0, =modello
	MOV R1, #0X10
	STR R1, [R0, #4]
	LDR R0, =velocita_processore
	MOV R1, #4
	STR R1, [R0, #4]
	LDR R0, =dimensioni_ram
	MOV R1, #8
	STR R1, [R0, #4]
	LDR R0, =dimensioni_disco
	MOV R1, #0x20
	STR R1, [R0, #4]
	LDR R0, =dimensioni_monitor
	MOV R1, #0X50
	STR R1, [R0, #4]
	LDR R0, =anno_acquisto
	MOV R1, #0X24
	STR R1, [R0, #4]
	@computer numero 2
	LDR R0, =codice
	MOV R1, #2
	STR R1, [R0, #4]
	LDR R0, =marca
	MOV R1, #0X10
	STR R1, [R0, #4]
	LDR R0, =modello
	MOV R1, #0X10
	STR R1, [R0, #4]
	LDR R0, =velocita_processore
	MOV R1, #4
	STR R1, [R0, #4]
	LDR R0, =dimensioni_ram
	MOV R1, #8
	STR R1, [R0, #4]
	LDR R0, =dimensioni_disco
	MOV R1, #0x20
	STR R1, [R0, #4]
	LDR R0, =dimensioni_monitor
	MOV R1, #0X50
	STR R1, [R0, #4]
	LDR R0, =anno_acquisto
	MOV R1, #0X24
	STR R1, [R0, #4]
	
	B _end
_end:
	MOV R7, #1
	SVC 0
