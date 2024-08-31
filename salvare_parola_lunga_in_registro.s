.global _start
_start:
	LDR R0, =0xE800E9AFEEFFF12
  B _end

_end:
  MOV R7, #1
  SVC 0
