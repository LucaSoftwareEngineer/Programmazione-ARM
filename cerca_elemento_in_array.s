.section .data
	array: .word 1,8,3

.global start
start:
	MOV R0, #8 @valore che cerco nel array
	LDR R7, =array @indirizzo array
	
	@recupero il primo valore
	LDR R1, [R7,#0]
	
	@confronto se è uguale al mio
	CMP R1, R0
	BEQ trovato
	
	@recupero il secondo valore
	LDR R1, [R7,#4]
	
	@confronto se è uguale al mio
	CMP R1, R0
	BEQ trovato
	
	@recupero il terzo valore
	LDR R1, [R7,#4]
	
	@confronto se è uguale al mio
	CMP R1, R0
	BEQ trovato
	BNE fine
	
trovato:
	MOV R2, #1 @se ho trovato l'elemento nel array R2 diventa vero
	B fine

fine:
	B fine
