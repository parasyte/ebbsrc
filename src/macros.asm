

.MACRO EBBTEXT str
    .REPEAT .STRLEN(str), i
        .BYTE .strat(str, i) | $80
    .ENDREPEAT
.ENDMACRO

.MACRO PADDEDEBBTEXT str, len
    EBBTEXT str
    .REPEAT len-.STRLEN(str)
        .BYTE $00
    .ENDREPEAT
.ENDMACRO

.MACRO EBBTEXTZ str
    EBBTEXT str
    .BYTE $00
.ENDMACRO
