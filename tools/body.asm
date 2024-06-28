;******************************************
;
;       POWERED BY LUCA SANTORO
; STUDENT AT GUGLIELMO MARCONI UNIVERSITY
;
;******************************************

.model small
.stack 100h
.data
    ; nome_variabile tipo(db o dw) valore
.code
.startup
    ; operazioni con registri e variabili

    mov ah, 4ch ;eseguo il programma
    int 21h ;termino il programma
end
