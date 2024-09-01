.section .data
  lock: .word 0

.global _start
_start:
  LDR R0, =lock
  LDR R1, [R0]
  B wait_lock
  
wait_lock:
  TST R1, #1           @ R0 AND #1
  BEQ regione_critica    @se risultato TST è 0
  BNE wait_lock          @se risultato TST 1

regione_critica:
  @BEGIN IMPOSTO LOCK A 1
  MOV R5, #1
  STR R5, [R0]
  @END IMPOSTO LOCK A 1
  
  MOV R2, #3
  
  @BEGIN IMPOSTO LOCK A 0
  MOV R6, #0
  STR R6, [R0]
  @END IMPOSTO LOCK A 0
  
  B fine
  
fine:
  MOV R7, #1
  SVC 0
  
