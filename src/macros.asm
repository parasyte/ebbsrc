.feature line_continuations

.MACRO EBBTEXT str
    .REPEAT .STRLEN(str), i
        ; Current byte
        utf8char .set .strat(str, i)

        ; Previous byte
        .if (i > 0)
            utf8char1 .set .strat(str, i - 1)
        .else
            utf8char1 .set $FF
        .endif

        ; Two bytes ago
        .if (i > 1)
            utf8char2 .set .strat(str, i - 2)
        .else
            utf8char2 .set $FF
        .endif

        ; Re-encode a small subset of UTF-8 to EarthBound Beginnings text format
        .if (utf8char = '?')
           .BYTE $A2
        .elseif ((utf8char2 = $E2) && (utf8char1 = $A0) && (utf8char = $A4)) ; '⠤'
           .BYTE $A3
        .elseif ((utf8char1 = $C2) && (utf8char = $B7)) ; '·'
            .BYTE $A5
        .elseif (utf8char = ':')
            .BYTE $AA
        .elseif (utf8char = ';')
            .BYTE $AB
        .elseif ((utf8char2 = $E1) && (utf8char1 = $85) && (utf8char = $87)) ; 'ᅇ'
            .BYTE $BA
        .elseif ((utf8char1 = $CE) && (utf8char = $B1)) ; 'α'
            .BYTE $BB
        .elseif ((utf8char1 = $CE) && (utf8char = $B2)) ; 'β'
            .BYTE $BC
        .elseif ((utf8char1 = $CE) && (utf8char = $B3)) ; 'γ'
            .BYTE $BD
        .elseif ((utf8char1 = $CF) && (utf8char = $80)) ; 'π'
            .BYTE $BE
        .elseif ((utf8char1 = $CE) && (utf8char = $A9)) ; 'Ω'
            .BYTE $BF
        .elseif ((utf8char2 = $E2) && (utf8char1 = $99) && (utf8char = $A6)) ; '♦'
            .BYTE $BF
        .elseif ((utf8char2 = $E2) && (utf8char1 = $96) && (utf8char = $9B)) ; '▛'
            .BYTE $DB
        .elseif ((utf8char2 = $E2) && (utf8char1 = $96) && (utf8char = $80)) ; '▀'
            .BYTE $DC
        .elseif ((utf8char2 = $E2) && (utf8char1 = $96) && (utf8char = $9C)) ; '▜'
            .BYTE $DD
        .elseif ((utf8char2 = $E2) && (utf8char1 = $96) && (utf8char = $8C)) ; '▌'
            .BYTE $DE
        .elseif ((utf8char2 = $E2) && (utf8char1 = $96) && (utf8char = $90)) ; '▐'
            .BYTE $DF
        .elseif ((utf8char2 = $E2) && (utf8char1 = $86) && (utf8char = $92)) ; '→'
           .BYTE $E0
        .elseif ((utf8char2 = $E2) && (utf8char1 = $96) && (utf8char = $99)) ; '▙'
            .BYTE $FB
        .elseif ((utf8char2 = $E2) && (utf8char1 = $96) && (utf8char = $84)) ; '▄'
            .BYTE $FC
        .elseif ((utf8char2 = $E2) && (utf8char1 = $96) && (utf8char = $9F)) ; '▟'
            .BYTE $FD
        .elseif ((utf8char2 = $E2) && (utf8char1 = $96) && (utf8char = $AC)) ; '▬'
            .BYTE $FE
        .elseif ((utf8char2 = $E2) && (utf8char1 = $96) && (utf8char = $BA)) ; '►'
            .BYTE $FF
        .elseif ((utf8char & $80) = $00)
            .BYTE utf8char | $80
        .elseif ( \
            (utf8char <> $85) && (utf8char <> $86) && (utf8char <> $96) && (utf8char <> $99) && \
            (utf8char <> $A0) && (utf8char <> $C2) && (utf8char <> $CE) && (utf8char <> $CF) && \
            (utf8char <> $E1) && (utf8char <> $E2) \
        )
            .error .sprintf("Unexpected UTF-8 character at index %d", i)
            .fatal "Terminating due to previous error"
        .endif
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

; Run-Length Encoding macro.
; The given character is copied `len` times to the output.
.MACRO EBBRLE str, len
    .BYTE $22
    EBBTEXT str
    .BYTE len
.ENDMACRO
