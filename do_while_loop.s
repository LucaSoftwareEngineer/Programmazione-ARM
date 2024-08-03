.global _start
_start:
	B _main
	
_main:
	MOV R0,#1
	MOV R1,#8
	B _loop
	
_loop:
	ADD R0, #1
	CMP R0, R1
	BLT _loop
	BGT _exit

_exit:
	MOV R0, #0
	MOV R1, #0
	MOV R7, #1
  SWI 0
