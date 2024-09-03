.global _start
_start:
    MOV R0, #4
    MOV R1, #2
    UDIV R2, R1, R2
    B _end

_end:
    MOV R7, #1
    SVC 0