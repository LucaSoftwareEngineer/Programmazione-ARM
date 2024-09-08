.global _start
_start:
	MOV r0,#5
	push {r0}
	MOV r0,#3
	pop {r0}
	B _end
_end:
	MOV R7,#1
	SVC 0