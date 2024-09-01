.section .data
  lock: .word 1

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
  MOV R2, #3
  B fine
  
fine:
  MOV R7, #1
  SVC 0
  
