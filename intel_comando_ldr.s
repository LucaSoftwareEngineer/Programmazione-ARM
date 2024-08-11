.section .data
  V: .word 4,7,3

.global _start
_start:
  LDR R0, =V @puntatore al array V
  LDR R1, [R0], #4 @primo elemento del array
  LDR R2, [R0], #4 @secondo elemento del array
  LDR R3, [R0], #4 @terzo elemento del array
  B _fine

_fine:
  MOV R0, #0
  MOV R7, #1
  SVC 0
