.global _start
_start:
    MOV R0, 4
    LSL R1, R0, #1 @ R1 = 4 * 2^1
    B _end

_end:
    MOV R7, #1
    SVC 0