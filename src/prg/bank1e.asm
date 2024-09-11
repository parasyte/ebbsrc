.SEGMENT "PRG1E"

.INCLUDE "common.asm"

UNKNOWN_C000:
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $B6, $42, $04, $00, $00, $00, $00, $00, $20
    .BYTE $49, $B5, $AA, $AA, $4A, $24, $01, $51, $DA, $B6, $AA, $6D, $F7, $FF, $FF, $FF
    .BYTE $FF, $FF, $F6, $76, $DB, $AB, $55, $A5, $44, $10, $20, $00, $00, $04, $08, $90
    .BYTE $28, $51, $AA, $5A, $B5, $6D, $7B, $F7, $EE, $DD, $B7, $77, $5B, $5B, $B5, $52
    .BYTE $49, $12, $12, $09, $12, $22, $49, $48, $A5, $2A, $55, $65, $B5, $B5, $AD, $B6
    .BYTE $6D, $DB, $B6, $6D, $DB, $B6, $B5, $AD, $D6, $AA, $2A, $55, $4A, $A5, $24, $49
    .BYTE $2A, $09, $95, $A2, $54, $49, $53, $B5, $44, $6A, $D5, $6A, $AD, $D6, $44, $00
    .BYTE $AB, $6A, $D5, $44, $44, $AD, $44, $44, $44, $54, $44, $95, $44, $52, $00, $00
    .BYTE $FF, $B7, $20, $0B, $00, $00, $00, $00, $C0, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $00, $00, $00, $00, $00, $00, $C0, $0B, $00, $00, $80, $FD, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $17, $00, $00, $00, $00, $00, $00, $00, $F0, $FF, $FF
    .BYTE $FF, $FF, $FF, $7E, $51, $ED, $44, $81, $10, $01, $82, $18, $2B, $42, $53, $81
    .BYTE $6F, $D8, $DB, $EB, $E7, $BF, $EB, $1F, $FB, $95, $24, $48, $00, $02, $00, $E0
    .BYTE $C5, $C0, $BF, $F8, $FF, $FF, $BA, $0E, $7E, $C4, $50, $68, $2A, $56, $02, $6F
    .BYTE $77, $4E, $F8, $45, $95, $20, $56, $50, $63, $3F, $F4, $FF, $F0, $9D, $F8, $21
    .BYTE $B2, $20, $8E, $0D, $18, $CF, $82, $AF, $8A, $E3, $3F, $78, $FD, $18, $CE, $02
    .BYTE $87, $58, $E0, $C4, $47, $E9, $DF, $F1, $53, $3B, $8A, $97, $38, $08, $A9, $03
    .BYTE $DE, $E2, $F8, $0F, $9E, $EC, $89, $B2, $07, $38, $E2, $63, $F1, $E3, $C3, $7B
    .BYTE $42, $AF, $28, $8E, $2A, $8E, $42, $83, $5A, $1D, $FA, $B1, $EB, $AB, $D6, $62
    .BYTE $DA, $A1, $E2, $D0, $34, $9C, $85, $8E, $AE, $C4, $7A, $72, $1D, $A6, $55, $1C
    .BYTE $B9, $52, $3D, $8B, $9E, $9D, $4E, $96, $2A, $0B, $E2, $A8, $A4, $95, $2D, $BB
    .BYTE $72, $AD, $F4, $91, $5A, $8B, $52, $25, $4E, $9C, $5A, $79, $6A, $D7, $A4, $8E
    .BYTE $9C, $74, $B0, $A2, $B4, $89, $67, $35, $6D, $2B, $37, $B6, $45, $A5, $A9, $C5
    .BYTE $A4, $42, $34, $26, $54, $44, $44, $04, $44, $00, $4A, $44, $00, $00, $00, $00
    .BYTE $00, $ED, $BA, $98, $76, $78, $97, $AB, $CD, $A7, $47, $76, $48, $45, $66, $77
    .BYTE $89, $FC, $97, $64, $FC, $97, $65, $FC, $86, $01, $23, $45, $67, $89, $AB, $CD
    .BYTE $EF, $FE, $A9, $ED, $FD, $79, $BD, $FE, $D9, $45, $78, $99, $AA, $BB, $CC, $DD
    .BYTE $EF, $7A, $DE, $FF, $EF, $FD, $DF, $FE, $EF, $EF, $FD, $EF, $FE, $DF, $FF, $EE
    .BYTE $EE, $FF, $EF, $FF, $FF, $FF, $EF, $EF, $FF, $FF, $EF, $FF, $FF, $FF, $EF, $EF
    .BYTE $FF, $BF, $FF, $EE, $EE, $ED, $ED, $DD, $BB, $BB, $AA, $AA, $99, $98, $87, $76
    .BYTE $65, $54, $44, $33, $22, $22, $22, $22, $22, $22, $22, $11, $11, $11, $11, $11
    .BYTE $11, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

UNKNOWN_C200:
    LDA #$0F
    STA UNKNOWN_0100
    LDA #$03
    ORA $EF
    STA BANKSELECT
    LDX #$09
    LDY #$02
@UNKNOWN0:
    DEY
    BNE @UNKNOWN0
    BIT $00
    JMP UNKNOWN_C220
UNKNOWN_C218:
    STA IRQLATCH
    LDA #$02
    ORA $EF
    TAX
UNKNOWN_C220:
    LDY #$04
@UNKNOWN2:
    DEY
    BNE @UNKNOWN2
    RTS

UNKNOWN_C226:
    LDA #$0F
    STA UNKNOWN_0100
    RTS

UNKNOWN_C22C:
    .BYTE $00, $01, $02, $03, $08, $09, $96, $97, $98, $99, $9A, $9B, $9C, $9D, $9E, $9F
    .BYTE $A0, $A1, $A2, $A3, $A4, $2A, $2B, $2C, $2D, $2E, $AA, $AB, $AC, $AD, $AE, $93
    .BYTE $04, $05, $06, $07, $0E, $0F, $D6, $D7, $D8, $D9, $DA, $DB, $DC, $DD, $DE, $DF
    .BYTE $E0, $E1, $E2, $E3, $E4, $6A, $6B, $6C, $6D, $6E, $EA, $EB, $EC, $ED, $EE, $D3

UNKNOWN_C26C:
    LDA #$D9
    LDX #$91
    STA $74
    STX $75
UNKNOWN_C274:
    JSR UNKNOWN_C542
    JSR UNKNOWN_FD33
    LDA #$19
    LDX #$B2
    LDY #$A2
    JSR UNKNOWN_FDF3
    LDA #$00
    STA $EC
    LDA #$FF
    STA UNKNOWN_07F7
    LDA #$0F
    STA SND_CHN
    JSR UNKNOWN_FD41
    LDX #$00
@UNKNOWN0:
    LDA #$25
    STA UNKNOWN_0540,X
    INX
    LDA #$C2
    STA UNKNOWN_0540,X
    INX
    CPX #$1A
    BNE @UNKNOWN0
    LDA #$00
    STA UNKNOWN_0540,X
    INX
    STA UNKNOWN_0540,X
    LDA #$0F
    STA $EC
@UNKNOWN1:
    JSR UNKNOWN_C322
@UNKNOWN2:
    JSR UNKNOWN_FD33
    LDX #$00
    STX $E6
    JSR UNKNOWN_C83D
    STY $E6
    INC $77
    LDY #$00
    LDA ($74),Y
    PHA
    INY
    LDA ($74),Y
    PHA
    INY
    TYA
    JSR UNKNOWN_CB38
    LDA $72
    CMP #$00
    BNE @UNKNOWN4
    JSR UNKNOWN_C83D
    JSR UNKNOWN_C306
    PLA
    TAX
    PLA
    CMP UNKNOWN_0540,X
    BCC @UNKNOWN3
    STA UNKNOWN_0540,X
@UNKNOWN3:
    LDA $72
    CMP #$00
    BNE @UNKNOWN2
    RTS
@UNKNOWN4:
    INC $77
    JSR UNKNOWN_C86D
    JSR UNKNOWN_C306
    PLA
    TAX
    PLA
    CMP UNKNOWN_0540,X
    BCC @UNKNOWN5
    STA UNKNOWN_0540,X
@UNKNOWN5:
    JMP @UNKNOWN1

UNKNOWN_C306:
    STY $E6
    JSR UNKNOWN_C46E
    LDA #$00
    STA $0400,X
    STA $E6
    LDA #$80
    STA $E5
    LDA #$19
    LDX #$1D
    LDY #$A3
    JSR UNKNOWN_FDF3
    JMP UNKNOWN_FD4A

UNKNOWN_C322:
    LDA #$00
    LDX #$06
    JMP BANK_SWAP

UNKNOWN_C329:
    .BYTE $20, $01, $17, $21, $4B, $92, $01, $25, $16, $21, $10, $67, $00, $25, $18, $FB
    .BYTE $22, $FC, $1C, $FD
UNKNOWN_C33D:
    .BYTE $00
UNKNOWN_C33E:
    .BYTE $20, $01, $15, $21, $4B, $92, $01, $25, $14, $21, $10, $67, $01, $25, $16, $21
    .BYTE $2E, $67, $00, $25, $18, $FB, $22, $FC, $1C, $FD, $00
UNKNOWN_C359:
    .BYTE $20, $01, $13, $21, $4B, $92, $01, $25, $12, $21, $10, $67, $01, $25, $14, $21
    .BYTE $2E, $67, $01, $25, $16, $21, $4C, $67, $00, $25, $18, $FB, $22, $FC, $1C, $FD
    .BYTE $00
UNKNOWN_C37A:
    .BYTE $24, $A0, $23, $38, $00, $00, $07, $23, $10, $00, $01, $03, $23, $14, $00, $02
    .BYTE $04, $23, $16, $00, $02, $04, $23, $11, $00, $03, $08, $A0, $25, $00

UNKNOWN_C398:
    ORA ($04,X)
    LDY #$A0
    AND ($A0,X)
    LDA ($00,X)
UNKNOWN_C3A0:
    LDA #$6A
    LDX #$92
UNKNOWN_C3A4:
    STA $74
    STX $75
    LDA $EC
    BEQ @UNKNOWN0
    JMP $C2B3
@UNKNOWN0:
    JMP UNKNOWN_C274

UNKNOWN_C3B2:
    LDA #$9B
    LDX #$92
    JMP UNKNOWN_C3A4

UNKNOWN_C3B9:
    LDA #$CF
    LDX #$92
    JMP UNKNOWN_C3A4

UNKNOWN_C3C0:
    LDA #$00
    LDX #$93
    JMP UNKNOWN_C3A4

UNKNOWN_C3C7:
    LDA #$17
    LDX #$93
    JMP UNKNOWN_C3A4

UNKNOWN_C3CE:
    LDA #$5F
    LDX #$93
    JMP UNKNOWN_C3A4

UNKNOWN_C3D5:
    JSR UNKNOWN_C542
    LDA #$48
    LDX #$92
    JMP UNKNOWN_C3A4

UNKNOWN_C3DF:
    LDA #$6A
    LDX #$93
    JMP UNKNOWN_C3A4

UNKNOWN_C3E6:
    LDA #$8D
    LDX #$93
    JMP UNKNOWN_C3A4

UNKNOWN_C3ED:
    LDA #$1E
    LDX #$95
    JMP UNKNOWN_C3A4

UNKNOWN_C3F4:
    PHP
    JSR UNKNOWN_CFAC
    JSR UNKNOWN_FDC0
    LDA #$01
    STA $E5
    LDA #$00
    STA UNKNOWN_07F7
    PLP
    RTS

UNKNOWN_C406:
    LDA #$FF
UNKNOWN_C408:
    STA $60
    JSR UNKNOWN_FDE7
    LDA #$00
@UNKNOWN0:
    PHA
    TAX
    LDA $0600,X
    BEQ @UNKNOWN2
    LDA $0618,X
    STA $74
    LDA $0619,X
    STA $75
    LDY #$01
    LDA $0601,X
    AND $60
    STA ($74),Y
    LDY #$14
@UNKNOWN1:
    LDA $0603,X
    STA ($74),Y
    INX
    INY
    CPY #$18
    BCC @UNKNOWN1
@UNKNOWN2:
    PLA
    CLC
    ADC #$20
    BPL @UNKNOWN0
    JSR UNKNOWN_FDED
UNKNOWN_C43F:
    JSR UNKNOWN_C542
    LDA $F6
    PHA
    JSR UNKNOWN_C322
    LDA #$48
    LDX #$92
    STA $74
    STX $75
    JSR UNKNOWN_C6D2
    BNE @UNKNOWN4
@UNKNOWN3:
    JSR UNKNOWN_C6DB
@UNKNOWN4:
    LDA #$02
    JSR UNKNOWN_CB38
    LDA $72
    CMP #$00
    BNE @UNKNOWN3
    INC $77
    JSR UNKNOWN_C6D2
    PLA
    LDX #$06
    JMP BANK_SWAP
UNKNOWN_C46E:
    LDA $7E
    LSR
    ADC #$00
    TAX
    LDA $77
    AND #$1E
    ASL
    ASL
    ASL
    STA $7A
    LDA $76
    ADC #$01
    LSR
    ORA $7A
    STA $7A
    TAY
    JSR UNKNOWN_FDE7
    LDA #$FF
@UNKNOWN5:
    STA $6600,Y
    INY
    DEX
    BNE @UNKNOWN5
    JSR UNKNOWN_FDED
    LDX $0402
    LDY $0403
    TYA
    CLC
    AND #$03
    ADC #$03
    ADC $7E
    LSR
    LSR
    STA $7C
    TYA
    AND #$80
    STA $79
    TXA
    LSR
    ROR $79
    LSR
    ROR $79
    TYA
    AND #$1C
    ORA $79
    LSR
    LSR
    ORA #$C0
    STA $79
    ORA #$F8
    STA $7B
    TXA
    ORA #$03
    STA $78
    TYA
    AND #$42
    LSR
    LSR
    ADC #$00
    EOR #$FF
    ADC #$01
    CLC
    ADC $7A
    TAY
    LDX $E6
    LDA #$07
    STA $0400,X
    INX
    LDA $7C
    STA $0400,X
    INX
    LDA $78
    STA $0400,X
    INX
    LDA $79
    STA $0400,X
    INX
    LDA $6600,Y
    AND #$03
    STA $7A
    INY
    LDA $6600,Y
    AND #$0C
    ORA $7A
    STA $7A
    TYA
    CLC
    ADC #$0F
    TAY
    LDA $6600,Y
    AND #$30
    ORA $7A
    STA $7A
    INY
    LDA $6600,Y
    AND #$C0
    ORA $7A
    STA $0400,X
    INX
    TYA
    SEC
    SBC #$0F
    TAY
    DEC $7C
    BNE UNKNOWN_C528
    STX $E6
    RTS
UNKNOWN_C528:
    INC $7B
    BEQ @UNKNOWN0
    INC $79
    JMP $C4E5
@UNKNOWN0:
    LDA #$04
    EOR $78
    STA $78
    LDA #$F8
    STA $7B
    AND $79
    STA $79
    JMP $C4E5

UNKNOWN_C542:
    JSR UNKNOWN_FDE7
    LDX #$10
    LDY #$00
    STY $6707
@UNKNOWN1:
    JSR UNKNOWN_C62E
    BCS @UNKNOWN7
    INC $6707
    JSR UNKNOWN_C665
    TYA
    PHA
    LDY #$00
@UNKNOWN2:
    JSR UNKNOWN_C637
    CPY #$14
    BNE @UNKNOWN2
    TYA
    PHA
    LDY #$01
    LDA ($60),Y
    LDY #$0E
@UNKNOWN3:
    ASL
    BCC @UNKNOWN5
    PLA
    TYA
    PHA
    LDY #$00
@UNKNOWN4:
    LDA UNKNOWN_C398,Y
    STA UNKNOWN_6700,X
    INX
    INY
    CPY #$05
    BNE @UNKNOWN4
    PLA
    TAY
    LDA UNKNOWN_C61E,Y
    STA UNKNOWN_6700,X
    INX
    LDA UNKNOWN_C61E + 1,Y
    STA UNKNOWN_6700,X
    INX
    LDY #$1B
    BNE @UNKNOWN6
@UNKNOWN5:
    DEY
    DEY
    BPL @UNKNOWN3
    PLA
    TAY
    JSR UNKNOWN_C637
@UNKNOWN6:
    LDA UNKNOWN_C37A,Y
    STA UNKNOWN_6700,X
    INX
    INY
    CPY #$1E
    BNE @UNKNOWN6
    PLA
    TAY
    LDA $6707
    CMP #$03
    BCS @UNKNOWN8
@UNKNOWN7:
    INY
    CPY #$04
    BCC @UNKNOWN1
@UNKNOWN8:
    LDA #$00
    STA $6704
    STA $6705
    STA $6706
    SEC
    LDA #$03
    SBC $6707
    TAX
    LDY #$00
@UNKNOWN9:
    JSR UNKNOWN_C62E
    BCS @UNKNOWN10
    STA $6704,X
    INX
    CPX #$03
    BCS @UNKNOWN11
@UNKNOWN10:
    INY
    CPY #$04
    BCC @UNKNOWN9
@UNKNOWN11:
    LDA $6707
    ASL
    TAX
    LDA #$04
    STA UNKNOWN_6700
    STA $670A
    CPX #$04
    BCS @UNKNOWN12
    LDA #$00
@UNKNOWN12:
    STA $670D
    LDA UNKNOWN_C616,X
    STA UNKNOWN_6700 + 1
    LDA UNKNOWN_C616 + 1,X
    STA $6702
    LDA $6713
    STA $670B
    LDA $6714
    STA $670C
    LDA #$9D
    STA $670E
    LDA #$C3
    STA $670F
    JMP UNKNOWN_FDED

UNKNOWN_C616:
    .WORD UNKNOWN_C33D
    .WORD UNKNOWN_C329
    .WORD UNKNOWN_C33E
    .WORD UNKNOWN_C359

UNKNOWN_C61E:
    .WORD $8629
    .WORD $8622
    .WORD $861B
    .WORD $8614
    .WORD $860D
    .WORD $8606
    .WORD $85FF
    .WORD $85F8

UNKNOWN_C62E:
    SEC
    LDA $7408,Y
    BEQ @UNKNOWN0
    CMP #$06
@UNKNOWN0:
    RTS

UNKNOWN_C637:
    LDA UNKNOWN_C37A,Y
    STA UNKNOWN_6700,X
    INX
    INY
    LDA UNKNOWN_C37A,Y
    STA UNKNOWN_6700,X
    INX
    INY
    LDA UNKNOWN_C37A,Y
    STA UNKNOWN_6700,X
    INX
    INY
    CLC
    LDA UNKNOWN_C37A,Y
    ADC $60
    STA UNKNOWN_6700,X
    INX
    INY
    LDA UNKNOWN_C37A,Y
    ADC $61
    STA UNKNOWN_6700,X
    INX
    INY
    RTS

UNKNOWN_C665:
    STA $61
    LDA #$00
    LSR $61
    ROR
    LSR $61
    ROR
    ADC #$00
    STA $60
    LDA $61
    ADC #$74
    STA $61
    RTS

UNKNOWN_C67A:
    JSR UNKNOWN_C6D2
    BNE @UNKNOWN1
@UNKNOWN0:
    JSR UNKNOWN_C6DB
@UNKNOWN1:
    CMP #$00
    BNE @UNKNOWN0
    INC $77
    JMP UNKNOWN_C6D2

UNKNOWN_C68B:
    PHA
    JSR UNKNOWN_FD33
    JSR UNKNOWN_C9D7
    LDA #$05
    STA $0400
    LDA #$01
    STA $0401
    LDA $78
    STA $0402
    LDA $79
    STA $0403
    PLA
    STA $0404
    LDA #$00
    STA $0405
    STA $E6
    LDA #$80
    STA $E5
    RTS

UNKNOWN_C6B6:
    LDA $70
    CLC
    SBC $7E
    BCC @UNKNOWN1
    TAY
@UNKNOWN0:
    LDA #$A0
    JSR UNKNOWN_CA1F
    DEY
    BPL @UNKNOWN0
    LDY $E6
    LDA $0401,Y
    BEQ @UNKNOWN1
    TXA
    TAY
@UNKNOWN1:
    STY $E6
    RTS

UNKNOWN_C6D2:
    JSR UNKNOWN_FD33
    LDX #$00
    STX $E6
    BEQ UNKNOWN_C6D2_B1
UNKNOWN_C6DB:
    JSR UNKNOWN_FD33
    LDX #$00
    STX $E6
    JSR UNKNOWN_C86D
    JSR UNKNOWN_C6B6
UNKNOWN_C6D2_B1:
    JSR UNKNOWN_C83D
    JSR UNKNOWN_C6B6
    LDA #$00
    STA $0400,Y
    STA $E6
    LDA #$80
    STA $E5
UNKNOWN_C6D2_2:
    JSR UNKNOWN_CB1A
    LDA $72
    CMP #$01
    BNE @UNKNOWN1
    INC $77
    INC $77
@UNKNOWN1:
    RTS

UNKNOWN_C707:
    JSR UNKNOWN_FD33
    LDA #$33
    STA $E6
    PHA
    JSR UNKNOWN_C83D
    JSR UNKNOWN_C6B6
    STY $7B
    PLA
    TAX
    LDA #$05
    STA $0400
    LDA #$01
    STA $0401
    LDA #$00
    STA $0400,Y
    CPX $7B
    BCS UNKNOWN_C6D2_2
    LDA #$08
    STA $0400,Y
    LDA $0401,X
    STA $7E
    STA $0401,Y
    LDA #$A0
    STA $0404,Y
    CLC
    LDA $0403,X
    STA $0403
    ADC #$20
    STA $0403,Y
    LDA $0402,X
    STA $0402
    ADC #$00
    STA $0402,Y
    TXA
    CLC
    ADC #$04
    TAX
    TYA
    CLC
    ADC #$05
    TAY
@UNKNOWN1:
    LDA $0400,X
    STA $0404
    CMP #$A0
    BEQ @UNKNOWN2
    LDA UNKNOWN_07EF
    BMI @UNKNOWN2
    EOR #$01
    STA UNKNOWN_07EF
    LSR
    BCC @UNKNOWN2
    LDA #$0E
    STA UNKNOWN_07EF+2
@UNKNOWN2:
    LDA #$00
    STA $0405
    STA $E6
    LDA #$80
    STA $E5
    JSR UNKNOWN_FD33
    BIT UNKNOWN_07EF
    BVC @UNKNOWN4
    TXA
    PHA
    LDA $0404
    LDX #$28
    CMP #$AE
    BEQ @UNKNOWN3
    CMP #$AC
    BEQ @UNKNOWN3
    LDX #$03
@UNKNOWN3:
    JSR UNKNOWN_FD3A
    PLA
    TAX
@UNKNOWN4:
    INC $0403
    INX
    DEC $7E
    BNE @UNKNOWN1
    JMP $C723

UNKNOWN_C7AF:
    CMP #$01
    BNE @UNKNOWN6
    PHA
    LDX #$A4
@UNKNOWN5:
    LDA $0432,X
    STA $045B,X
    DEX
    BNE @UNKNOWN5
    PLA
@UNKNOWN6:
    RTS

UNKNOWN_C7C1:
    LDA #$33
@UNKNOWN0:
    CLC
    ADC #$29
    DEX
    BNE @UNKNOWN0
    STX $7F
    TAX
    PHA
    JSR UNKNOWN_C7D4
    STA $7F
    PLA
    TAX
UNKNOWN_C7D4:
    JSR UNKNOWN_FD33
    STX $E6
@UNKNOWN2:
    LDA $0400,X
    BEQ @UNKNOWN5
    EOR #$05
    BNE @UNKNOWN4
    ORA $7F
    BNE @UNKNOWN3
    JSR UNKNOWN_C80E
@UNKNOWN3:
    TXA
    CLC
    ADC #$04
    ADC $0401,X
    TAX
    BCC @UNKNOWN2
@UNKNOWN4:
    JSR UNKNOWN_C80E
    TXA
    CLC
    ADC #$05
    TAX
    BCC @UNKNOWN2
@UNKNOWN5:
    STA $7F
    SEC
    LDA $E6
    SBC #$29
    TAX
    LDA #$80
    STA $E5
    CPX #$5C
    BCS UNKNOWN_C7D4
    RTS

UNKNOWN_C80E:
    SEC
    LDA $0403,X
    SBC #$20
    STA $0403,X
    LDA $0402,X
    STA $7B
    SBC #$00
    STA $0402,X
    EOR $7B
    AND #$04
    BEQ @UNKNOWN0
    SEC
    LDA $0403,X
    SBC #$40
    STA $0403,X
    LDA $0402,X
    SBC #$04
    AND #$0F
    ORA #$20
    STA $0402,X
@UNKNOWN0:
    RTS

UNKNOWN_C83D:
    JSR UNKNOWN_C9D7
    LDA $71
    STA $7F
    LDX $E6
    LDY #$00
    STY $7E
    TYA
    PHA
    JSR UNKNOWN_CA3D
    DEC $7F
    BPL @UNKNOWN0
    LDA ($74),Y
    JSR UNKNOWN_CA5C
    BCS @UNKNOWN1
    LDY #$4F
    STY $7C
    LDY #$C8
    STY $7D
    JMP $C8A1
@UNKNOWN0:
    LDA #$A0
@UNKNOWN1:
    JSR UNKNOWN_CA1F
    JMP $C84F
UNKNOWN_C86D:
    DEC $77
    JSR UNKNOWN_C9D7
    LDA $71
    STA $7F
    LDX $E6
    LDY #$00
    STY $7E
    TYA
    PHA
    JSR UNKNOWN_CA3D
    DEC $7F
    BPL @UNKNOWN0
    LDA ($74),Y
    JSR UNKNOWN_CA7C
    BCS @UNKNOWN1
    ORA #$80
    LDY #$81
    STY $7C
    LDY #$C8
    STY $7D
    JMP $C8A1
@UNKNOWN0:
    LDA #$A0
@UNKNOWN1:
    JSR UNKNOWN_CA1F
    JMP $C881
    STA $72
    ASL
    TAY
    LDA $C8AF,Y
    PHA
    LDA $C8AE,Y
    PHA
    RTS

UNKNOWN_C8AE:
    SBC ($C8,X)
    SBC ($C8,X)
    SBC ($C8,X)
    SBC ($C8,X)
    PHP
    CMP #$D3
    INY
    ROL $4FC9
    CMP #$C1
    INY
    CMP ($C9),Y
    LDY $7A
@UNKNOWN0:
    LDA ($74),Y
    PHA
    INY
    LDA ($74),Y
    STA $75
    PLA
    STA $74
    LDY #$00
    JMP ($007C)
    LDY $7A
    BEQ @UNKNOWN1
    LDA $74
    PHA
    LDA $75
    PHA
    TYA
    PHA
    BNE @UNKNOWN0
@UNKNOWN1:
    PLA
    BEQ @UNKNOWN2
    TAY
    INY
    INY
    PLA
    STA $75
    PLA
    STA $74
    JMP ($007C)
@UNKNOWN2:
    LDY $E6
    LDA $0401,Y
    BEQ @UNKNOWN3
    TXA
    TAY
@UNKNOWN3:
    LDA $72
    BPL @UNKNOWN4
    INC $77
    RTS
@UNKNOWN4:
    LDA $7A
    JSR UNKNOWN_CB38
    LDA $72
    RTS

UNKNOWN_C909:
    LDY $7A
    LDA ($74),Y
    STA $76
    INY
    LDA ($74),Y
    STA $77
    INY
    STY $7A
    BCC @UNKNOWN0
    DEC $77
@UNKNOWN0:
    LDY $E6
    LDA $0401,Y
    BNE @UNKNOWN1
    LDX $E6
@UNKNOWN1:
    JSR UNKNOWN_C9D7
    JSR UNKNOWN_CA3D
    LDY $7A
    JMP ($007C)
    LDY $7A
    LDA ($74),Y
    BCC @UNKNOWN2
    LDA #$A0
@UNKNOWN2:
    STA $72
    INY
    LDA ($74),Y
    INY
    STY $7A
    TAY
    DEY
    BMI @UNKNOWN3
    LDA $72
    JSR UNKNOWN_CA1F
    JMP $C940
@UNKNOWN3:
    LDY $7A
    JMP ($007C)
    LDY $7A
    LDA ($74),Y
    STA $64
    INY
    LDA ($74),Y
    STA $65
    INY
    LDA ($74),Y
    STA $66
    INY
    LDA ($74),Y
    STA $67
    INY
    TYA
    PHA
    LDY $66
    BEQ @UNKNOWN7
    LDA #$00
    STA $60
    STA $61
    STA $62
    DEY
@UNKNOWN4:
    LDA ($64),Y
    STA $0060,Y
    DEY
    BPL @UNKNOWN4
    TXA
    PHA
    JSR UNKNOWN_F161
    PLA
    TAX
    LDA $67
    BNE @UNKNOWN5
    SEC
    LDA #$08
    SBC $63
    STA $67
    LDA $63
    BPL @UNKNOWN6
@UNKNOWN5:
    SEC
    LDA #$08
    SBC $67
@UNKNOWN6:
    CLC
    ADC #$68
    STA $64
    LDA #$00
    ADC #$00
    STA $65
@UNKNOWN7:
    LDY #$00
@UNKNOWN8:
    LDA $72
    BMI @UNKNOWN9
    LDA ($64),Y
    JSR UNKNOWN_CA5C
    BCS @UNKNOWN12
    BCC @UNKNOWN11
@UNKNOWN9:
    LDA ($64),Y
    JSR UNKNOWN_CA7C
    BCS @UNKNOWN12
    BCC @UNKNOWN11
@UNKNOWN10:
    LDA #$A0
    JSR UNKNOWN_CA1F
@UNKNOWN11:
    DEC $67
    BPL @UNKNOWN10
    BMI @UNKNOWN13
@UNKNOWN12:
    JSR UNKNOWN_CA1F
    DEC $67
    BNE @UNKNOWN8
@UNKNOWN13:
    PLA
    TAY
    JMP ($007C)
    LDY $7A
    JMP ($007C)

UNKNOWN_C9D7:
    LDA $FF
    LSR
    LSR
    LDA $FC
    ROR
    CLC
    ADC #$08
    STA $79
    LDA $77
    ADC #$01
    ASL
    ASL
    CLC
    ADC $79
    BVS @UNKNOWN14
    SEC
    SBC #$08
@UNKNOWN14:
    ASL
    AND #$F8
    STA $79
    LDA #$02
    ROL
    ASL
    ASL $79
    ROL
    ASL $79
    ROL
    STA $78
    LDA $FF
    LSR
    LDA $FD
    ROR
    LSR
    LSR
    CLC
    ADC $76
    TAY
    AND #$20
    LSR
    LSR
    LSR
    ADC $78
    STA $78
    TYA
    AND #$1F
    ADC $79
    STA $79
    RTS

UNKNOWN_CA1F:
    STA $0400,X
    INX
    TXA
    LDX $E6
    INC $0401,X
    TAX
    INC $7E
    INC $7B
    BEQ @UNKNOWN0
    RTS
@UNKNOWN0:
    LDA $79
    AND #$E0
    STA $79
    LDA $78
    EOR #$04
    STA $78
UNKNOWN_CA3D:
    STX $E6
    LDA #$05
    STA $0400,X
    INX
    LDA #$00
    STA $0400,X
    INX
    LDA $78
    STA $0400,X
    INX
    LDA $79
    STA $0400,X
    INX
    ORA #$E0
    STA $7B
    RTS

UNKNOWN_CA5C:
    INY
    STY $7A
    CMP #$40
    BCS @UNKNOWN2
    TAY
    LDA UNKNOWN_C22C,Y
    LDY $7A
    CMP #$80
    BCS @UNKNOWN2
    CMP #$20
    BCS @UNKNOWN1
    CMP #$0A
    BCS @UNKNOWN0
    RTS
@UNKNOWN0:
    ORA #$D0
    RTS
@UNKNOWN1:
    ORA #$80
@UNKNOWN2:
    RTS

UNKNOWN_CA7C:
    INY
    STY $7A
    CMP #$40
    BCS @UNKNOWN3
    TAY
    LDA UNKNOWN_C22C,Y
    LDY $7A
    CMP #$80
    BCS @UNKNOWN2
    CMP #$20
    BCS @UNKNOWN1
    CMP #$0A
    BCS @UNKNOWN0
    RTS
@UNKNOWN0:
    ORA #$D0
    RTS
@UNKNOWN1:
    LDA #$FF
    RTS
@UNKNOWN2:
    LDA #$FE
    RTS
@UNKNOWN3:
    LDA #$A0
    RTS

UNKNOWN_CAA2:
    LDA $73
    BPL @UNKNOWN0
    STA $75
    RTS
@UNKNOWN0:
    CMP #$7F
    BCS @UNKNOWN1
    TAX
    LDA $74
    ASL $74
    ROL $73
    ADC $74
    STA $74
    TXA
    ADC $73
    ADC #$80
    STA $75
    LDA #$7F
    STA $73
    LDA $F6
    PHA
    LDA #$18
    LDX #$06
    JSR BANK_SWAP
    LDY #$00
    LDA ($74),Y
    STA $09
    INY
    LDA ($74),Y
    STA $0A
    INY
    LDA ($74),Y
    STA $0B
    PLA
    JSR BANK_SWAP
@UNKNOWN1:
    JSR UNKNOWN_FD33
    LDA #$0A
    STA $0400
    LDA $0B
    LSR
    LDA $0A
    ROR
    SEC
    ROR
    STA $0401
    LDA $0A
    AND #$03
    ORA #$08
    STA $0402
    LDA $09
    STA $0403
    LDA #$00
    STA $0404
    LDA #$00
    STA $E6
    LDA #$80
    STA $E5
    LDA #$10
    STA $74
    LDA #$01
    STA $75
    JMP UNKNOWN_FD33

UNKNOWN_CB1A:
    LDA $75
    BPL @UNKNOWN2
    STA $73
    RTS
@UNKNOWN2:
    SEC
    LDA $74
    SBC #$10
    CLC
    ADC $09
    STA $09
    LDA #$00
    ADC $0A
    STA $0A
    LDA #$00
    ADC $0B
    STA $0B
    RTS

UNKNOWN_CB38:
    CLC
    ADC $74
    STA $74
    LDA #$00
    ADC $75
    STA $75
    RTS

UNKNOWN_CB44:
    JSR UNKNOWN_FDED
    LDA #$C0
    STA UNKNOWN_07EF
    JSR UNKNOWN_CEE1
    JSR $9400
    LDA #$00
    STA UNKNOWN_07EF
UNKNOWN_CB44_0:
    JSR UNKNOWN_CED3
    JSR $BCEC
    JSR UNKNOWN_C542
    JSR UNKNOWN_CEFC
    LDA #$00
    STA $24
    LDA $7406
    AND #$0F
    EOR #$84
    STA $0D
    JSR UNKNOWN_FD5E
    JSR UNKNOWN_CFAC
    JSR UNKNOWN_DE99
    JSR UNKNOWN_EEF0
    LDA $25
    BNE UNKNOWN_CB44_2
    LDA $DE
    AND #$70
    BEQ UNKNOWN_CB44_1
    JSR UNKNOWN_CC9D
    AND #$08
    BEQ UNKNOWN_CB44_1
    LDA #$01
UNKNOWN_CB44_1:
    STA $1F
UNKNOWN_CB44_2:
    JSR UNKNOWN_FD33
    LDA $20
    BNE UNKNOWN_CB44_0
    JSR UNKNOWN_DD01
    JSR UNKNOWN_DFDA
    JSR UNKNOWN_CC2B
    LDA $21
    BEQ UNKNOWN_CB44_3
    JSR UNKNOWN_CED3
    JSR $A1C6
    BCC UNKNOWN_CB44_8
UNKNOWN_CB44_3:
    JSR UNKNOWN_CED3
    LDA #$00
    LDY $DA
    STA $DA
    LDA $22
    ORA $23
    ORA $21
    ORA $20
    BNE UNKNOWN_CB44_8
    TYA
    AND #$F0
    BMI UNKNOWN_CB44_6
    BNE UNKNOWN_CB44_4
    JSR $A123
    JMP UNKNOWN_CB44_7

UNKNOWN_CB44_4:
    JSR UNKNOWN_CC9D
    AND #$A0
    BEQ UNKNOWN_CB44_7
    BMI UNKNOWN_CB44_5
    JSR $A82F
    JMP UNKNOWN_CB44_7

UNKNOWN_CB44_5:
    JSR $A000
    JMP UNKNOWN_CB44_7

UNKNOWN_CB44_6:
    JSR $A178
UNKNOWN_CB44_7:
    JSR UNKNOWN_CEE1
    JSR $9516
UNKNOWN_CB44_8:
    LDA $48
    BEQ UNKNOWN_CB44_11
    CMP #$A2
    BEQ UNKNOWN_CB44_12
    JSR UNKNOWN_FD33
    LDA $078C
    PHA
    JSR UNKNOWN_F202
    PLA
    BCS UNKNOWN_CB44_10
    JSR UNKNOWN_FD28
    LDA $21
    BEQ UNKNOWN_CB44_9
    JSR UNKNOWN_CED3
    JSR $AB53
    LDA $20
    BNE UNKNOWN_CB44_10
UNKNOWN_CB44_9:
    JMP $CB70

UNKNOWN_CB44_10:
    JMP $CB5D

UNKNOWN_CB44_11:
    JMP $CB76

UNKNOWN_CB44_12:
    JSR UNKNOWN_CEE1
    JSR $9779
    JSR UNKNOWN_F202
    BCS UNKNOWN_CB44_10
    JSR UNKNOWN_CEE1
    JMP $97A3

UNKNOWN_CC2B:
    LDA $1F
    CMP #$07
    BCS @UNKNOWN2
    LDA #$10
    STA $E5
    JSR UNKNOWN_D05E
    JSR UNKNOWN_D0B1
@UNKNOWN0:
    LDA $E5
    BNE @UNKNOWN0
@UNKNOWN1:
    LDA $E0
    CMP #$09
    BCS @UNKNOWN1
    SEC
    ROR $E2
    JSR UNKNOWN_E065
    ASL $E2
    JSR UNKNOWN_D232
    LDA #$00
    STA $0400,X
    STA $E6
    LDA #$80
    STA $E5
    BNE @UNKNOWN4
@UNKNOWN2:
    JSR UNKNOWN_D05E
    JSR UNKNOWN_D0B1
    JSR UNKNOWN_D232
    LDA #$00
    STA $0400,X
    STA $E6
    LDA #$10
    STA $E5
    LDA $1F
    CMP #$0F
    BCS @UNKNOWN4
@UNKNOWN3:
    LDA $E5
    BNE @UNKNOWN3
    SEC
    ROR $E2
    JSR UNKNOWN_E065
    ASL $E2
@UNKNOWN4:
    LDA $A0
    LSR
    BCC @UNKNOWN5
    JSR UNKNOWN_D21C
    LDA #$00
    STA $0400,X
    STA $E6
    LDA #$80
    STA $E5
@UNKNOWN5:
    BIT $A0
    BMI @UNKNOWN6
    INC $D5
@UNKNOWN6:
    RTS

UNKNOWN_CC9D:
    LSR
    LSR
    LSR
    LSR
    TAX
    LDY UNKNOWN_CCA9,X
    LDA $743C,Y
    RTS

UNKNOWN_CCA9:
    .BYTE $00, $01, $02, $01, $00, $00, $00, $00

UNKNOWN_CCB1:
    LDA #$FF
    JSR UNKNOWN_FD28
    JSR UNKNOWN_DA16
    LDA #$02
    STA UNKNOWN_07EF+1
    LDA #$01
    ORA $FE
    STA $FE
    LDX #$08
@UNKNOWN0:
    JSR UNKNOWN_EEE4
    DEX
    BNE @UNKNOWN0
    LDA #$1E
    AND $FE
    STA $FE
    JSR UNKNOWN_FD4F
    JMP $CD79
UNKNOWN_CCD8:

    LDA $078C
    PHA
    LDA #$FF
    STA $0F
    JSR UNKNOWN_FD28
    JSR UNKNOWN_C3F4
    LDA #$01
    STA UNKNOWN_07EF+5
    JSR UNKNOWN_CD9D
    LDX #$05
@UNKNOWN1:
    JSR UNKNOWN_CD8B
    LDA $A0
    BMI UNKNOWN_CCB1
    LDA $DE
    AND #$0F
    TAX
    LDA $EBDD,X
    BMI @UNKNOWN2
    ORA #$40
    TAX
    EOR $22
    CMP #$04
    BEQ @UNKNOWN2
    STX $22
@UNKNOWN2:
    LDX $25
    INX
    CPX #$2D
    BCC @UNKNOWN1
    JSR UNKNOWN_FD33
    LDA #$20
@UNKNOWN3:
    TAX
    ASL $0304,X
    ASL $0305,X
    SEC
    SBC #$08
    BNE @UNKNOWN3
    LDA #$0A
@UNKNOWN4:
    PHA
    JSR UNKNOWN_CC2B
    JSR UNKNOWN_FD33
    PLA
    SEC
    SBC #$01
    BNE @UNKNOWN4
    LDA #$01
    STA UNKNOWN_07EF+4
    LDA #$22
    JSR UNKNOWN_EDFE
    JSR UNKNOWN_CED3
    JSR UNKNOWN_FDE7
    JSR $BBD4
    JSR UNKNOWN_D9FA
    PLA
    LDA $7404
    TAX
    AND #$3F
    PHA
    TXA
    AND #$C0
    STA $7404
    JSR UNKNOWN_D8C9
    LDX #$14
    JSR UNKNOWN_FD3A
    JSR UNKNOWN_C542
    JSR UNKNOWN_CEFC
    JSR UNKNOWN_FD5E
    JSR UNKNOWN_CFAC
    JSR UNKNOWN_CD9D
    LDX #$2C
@UNKNOWN5:
    JSR UNKNOWN_CD8B
    LDX $25
    DEX
    DEX
    BPL @UNKNOWN5
    LDX #$00
    STX $22
    STX $DA
    STX $0F
    JSR UNKNOWN_CDAF
    PLA
    JSR UNKNOWN_FD28
    JMP $CB76

UNKNOWN_CD8B:
    JSR UNKNOWN_CDAF
    JSR UNKNOWN_DE99
    JSR UNKNOWN_FD33
    JSR UNKNOWN_DD01
    JSR UNKNOWN_DFDA
    JMP UNKNOWN_CC2B

UNKNOWN_CD9D:
    JSR UNKNOWN_FDE7
    LDA $7406
    AND #$0F
    STA $6799
    ORA #$40
    STA $22
    JMP UNKNOWN_FDED

UNKNOWN_CDAF:
    STX $25
    LDA UNKNOWN_CDB7,X
    STA $1F
    RTS

UNKNOWN_CDB7:
    .BYTE $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $02, $02, $02, $02, $03, $03
    .BYTE $03, $03, $03, $03, $05, $05, $05, $05, $05, $05, $05, $05, $07, $07, $07, $07
    .BYTE $07, $07, $07, $07, $07, $07, $07, $07, $0F, $0F, $0F, $0F, $0F

UNKNOWN_CDE4:
    PHA
    LDA $078C
    TAX
    PLA
    JSR UNKNOWN_FD28
    LDA #$00
    STA $DA
@UNKNOWN0:
    BIT $DA
    BVS @UNKNOWN1
    LDA $078C
    BNE @UNKNOWN0
@UNKNOWN1:
    LDA #$00
    STA $DA
    TXA
    JMP UNKNOWN_FD28

UNKNOWN_CE02:
    LDY #$5E
    LDA #$00
    LDX #$6C
UNKNOWN_CE08:
    STA $60
    STX $61
    JSR UNKNOWN_FD33
    TYA
    LDX #$01
    JSR BANK_SWAP
    LDA #$09
    LDX #$40
    STA $0400
    STX $0401
    LDA #$00
    LDX #$18
    STX $0402
    STA $0403
    LDA #$00
    STA $0444
    LDX #$20
@UNKNOWN2:
    LDA #$00
    STA $E6
    LDA #$80
    STA $E5
    JSR UNKNOWN_FD33
    JSR UNKNOWN_FDE7
    LDY #$00
@UNKNOWN3:
    LDA $0404,Y
    STA ($60),Y
    INY
    CPY #$40
    BCC @UNKNOWN3
    JSR UNKNOWN_FDED
    CLC
    TYA
    ADC $60
    STA $60
    LDA #$00
    ADC $61
    STA $61
    CLC
    TYA
    ADC $0403
    STA $0403
    LDA #$00
    ADC $0402
    STA $0402
    DEX
    BNE @UNKNOWN2
    RTS

UNKNOWN_CE6D:
    LDA #$00
    LDX #$00
    STA $60
    STX $61
    LDA #$00
    LDX #$20
    STA $64
    STX $65
    LDA #$10
    STA $68
@UNKNOWN0:
    LDA $60
    LDX $61
    LDY #$09
    JSR UNKNOWN_CEB2
    LDA $64
    LDX $65
    LDY #$05
    JSR UNKNOWN_CEB2
    CLC
    LDA #$40
    ADC $60
    STA $60
    LDA #$00
    ADC $61
    STA $61
    CLC
    LDA #$40
    ADC $64
    STA $64
    LDA #$00
    ADC $65
    STA $65
    DEC $68
    BNE @UNKNOWN0
    RTS

UNKNOWN_CEB2:
    PHA
    JSR UNKNOWN_FD33
    PLA
    STA $0403
    STX $0402
    STY $0400
    LDA #$40
    STA $0401
    LDA #$00
    STA $0444
    LDA #$00
    STA $E6
    LDA #$80
    STA $E5
    RTS

UNKNOWN_CED3:
    LDA #$13
    LDX #$07
    JMP BANK_SWAP

UNKNOWN_CEDA:
    LDA #$17
    LDX #$07
    JMP BANK_SWAP

UNKNOWN_CEE1:
    LDA #$14
    LDX #$06
    JMP BANK_SWAP

UNKNOWN_CEE8:
    STA $60
    STX $61
    LDX #$05
    LDY #$05
@UNKNOWN0:
    LDA ($60),Y
    BEQ @UNKNOWN1
    JSR BANK_SWAP
@UNKNOWN1:
    DEX
    DEY
    BPL @UNKNOWN0
    RTS

UNKNOWN_CEFC:
    JSR UNKNOWN_D674
    LDA #$14
    LDX #$06
    JSR BANK_SWAP
    LDA #$00
    STA $89
    LDA $14
    ASL
    ASL
    ASL
    ROL $89
    ASL
    ROL $89
    ADC #$00
    STA $88
    LDA $89
    ADC #$90
    STA $89
    JSR UNKNOWN_FD33
    LDY #$0F
@UNKNOWN0:
    LDA ($88),Y
    BPL @UNKNOWN1
    JSR UNKNOWN_E0F2
@UNKNOWN1:
    STA $0500,Y
    DEY
    BPL @UNKNOWN0
    LDY #$0F
@UNKNOWN2:
    LDA $CF9C,Y
    STA $0510,Y
    DEY
    BPL @UNKNOWN2
    LDX $050C
    LDY $050E
    STX $17
    STY $16
    LDX #$0F
    LDY #$30
    STX $050C
    STY $050E
    JSR UNKNOWN_D5C4
    LDA $1A
    AND #$C0
    STA $AC
    LDA $1B
    STA $AD
    LDA #$40
    STA $AE
    LDA #$00
    STA $AF
    LDA #$10
    STA $9B
    SEC
    LDA $18
    AND #$C0
    SBC #$40
    STA $AA
    LDA $19
    SBC #$00
    STA $AB
    LDA #$13
    STA $A8
    JSR UNKNOWN_D11D
    DEC $9B
    BEQ @UNKNOWN3
    CLC
    LDA $AC
    ADC #$40
    STA $AC
    LDA $AD
    ADC #$00
    STA $AD
    JMP $CF68

@UNKNOWN3:
    JSR UNKNOWN_D09E
    LDY #$00
    STY $1D
    JMP $DD72

UNKNOWN_CF9C:
    .BYTE $0F, $0F, $00, $30, $0F, $0F, $16, $37, $0F, $0F, $24, $37, $0F, $0F, $12, $37

UNKNOWN_CFAC:
    JSR UNKNOWN_FD33
    CLC
    LDA $1C
    ORA #$08
    TAX
    LDY $1D
    LDA $FF
    AND #$FC
    ORA $1E
    STA $FF
    STX $FD
    STY $FC
    STY $99
    CLC
    LDA $1A
    AND #$C0
    ADC #$80
    STA $AC
    LDA $1B
    ADC #$03
    STA $AD
    LDA #$0F
    STA $9B
    CLC
    LDA $99
    ADC #$F0
    BCS @UNKNOWN0
    ADC #$F0
@UNKNOWN0:
    STA $99
    LDA $18
    AND #$C0
    STA $AA
    LDA $19
    STA $AB
    LDX $9B
    LDA $D04E,X
    EOR $99
    AND #$10
    BNE @UNKNOWN1
    LDA $D04E,X
@UNKNOWN1:
    STA $93
    JSR UNKNOWN_FD33
    JSR UNKNOWN_D2C4
    LDA #$00
    STA $0400,X
    STA $E6
    LDA #$80
    STA $E5
    DEC $9B
    BEQ @UNKNOWN2
    LDA $9B
    ASL
    TAX
    JSR UNKNOWN_FD4A
    LDA #$25
    STA $053E,X
    SEC
    LDA $AC
    SBC #$40
    STA $AC
    LDA $AD
    SBC #$00
    STA $AD
    JMP $CFD8
@UNKNOWN2:
    JSR UNKNOWN_FD33
    JSR UNKNOWN_D5C4
    LDA #$04
    STA $0400
    LDA #$00
    STA $0401
    STA $E6
    LDA #$80
    STA $E5
    LDA #$88
    STA $A0
    LDA #$00
    STA $EC
    STA $DA
    RTS

UNKNOWN_D04F:
    .BYTE $F0, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $10, $20

UNKNOWN_D05E:
    LDA $A0
    BMI UNKNOWN_D09E_RET
    ASL
    ASL
    ASL
    TAX
    CLC
    LDA UNKNOWN_EBED,X
    ADC $18
    STA $18
    LDA UNKNOWN_EBED + 1,X
    ADC $19
    STA $19
    CLC
    LDA UNKNOWN_EBED + 2,X
    ADC $1A
    STA $1A
    LDA UNKNOWN_EBED + 3,X
    ADC $1B
    STA $1B
    CLC
    LDA UNKNOWN_EBED + 2,X
    BEQ UNKNOWN_D09E
    BMI @UNKNOWN0
    LDA $1D
    ADC #$20
    BCC @UNKNOWN1
    BCS @UNKNOWN2
@UNKNOWN0:
    LDA $1D
    ADC #$F0
    BCS @UNKNOWN2
@UNKNOWN1:
    ADC #$F0
@UNKNOWN2:
    STA $1D
UNKNOWN_D09E:
    LDA $19
    AND #$07
    STA $1E
    LDA $18
    AND #$C0
    LSR $1E
    ROR
    LSR $1E
    ROR
    STA $1C
UNKNOWN_D09E_RET:
    RTS

UNKNOWN_D0B1:
    JSR UNKNOWN_D5C4
    LDA $A0
    BMI @UNKNOWN0
    JSR UNKNOWN_D0C4
    LDA $A0
    LSR
    BCS @UNKNOWN1
@UNKNOWN0:
    RTS
@UNKNOWN1:
    ADC #$00
    ASL
UNKNOWN_D0C4:
    AND #$06
    ASL
    ASL
    TAX
    CLC
    LDA $18
    AND #$C0
    ADC $D0FD,X
    STA $AA
    LDA $19
    ADC $D0FE,X
    STA $AB
    CLC
    LDA $1A
    AND #$C0
    ADC $D0FF,X
    STA $AC
    LDA $1B
    ADC $D100,X
    STA $AD
    LDA $D101,X
    STA $AE
    LDA $D102,X
    STA $AF
    LDA $D103,X
    STA $A8
    JMP UNKNOWN_D11D

UNKNOWN_D0FD:
    .BYTE $C0, $FF, $00, $00, $40, $00, $13, $00
    .BYTE $40, $04, $00, $00, $00, $40, $10, $00
    .BYTE $C0, $FF, $C0, $03, $40, $00, $13, $00
    .BYTE $C0, $FF, $00, $00, $00, $40, $10, $00

UNKNOWN_D11D:
    JSR UNKNOWN_D55D
    JSR UNKNOWN_D59D
    LDY #$00
    LDA ($88),Y
    AND #$3F
    CMP $14
    BEQ @UNKNOWN0
    LDA $16
    JMP $D14F
@UNKNOWN0:
    LDA $94
    LDX #$06
    JSR BANK_SWAP
    CLC
    LDA $AB
    STA $88
    LDA $AD
    AND #$1F
    ADC #$80
    STA $89
    LDY #$00
    LDA ($88),Y
    BPL @UNKNOWN1
    JSR UNKNOWN_E0F2
@UNKNOWN1:
    TAX
    AND #$40
    ASL
    STA $97
    LSR
    LSR
    STA $96
    BEQ @UNKNOWN2 + 1
    LDA $13
@UNKNOWN2:
    BIT $11A5
    STA $89
    TXA
    ASL
    ASL
    ASL
    ROL $89
    ASL
    ROL $89
    STA $88
    STA $8A
    LDA $89
    ADC #$80
    ADC $96
    STA $89
    ADC #$10
    STA $8B
    LDA $10
    LSR
    ORA #$01
    LDX #$06
    JSR BANK_SWAP
    LDA $12
    LSR
    ORA #$01
    LDX #$07
    JSR BANK_SWAP
    LDA $AA
    LSR
    LSR
    ORA $AC
    LSR
    LSR
    LSR
    LSR
    TAX
    TAY
    JSR UNKNOWN_FDE7
    LDA ($88),Y
    EOR $97
    LDY $A1
    STA ($A2),Y
    TXA
    TAY
    LDA ($8A),Y
    AND #$C0
    STA $90
    LSR
    LSR
    ORA $90
    LSR
    LSR
    ORA $90
    LSR
    LSR
    ORA $90
    LDY $A1
    STA ($A4),Y
    LDA #$00
    STA ($A6),Y
    JSR UNKNOWN_FDED
    DEC $A8
    BEQ @UNKNOWN6
    LDA $AE
    BEQ @UNKNOWN3
    INC $A1
    CLC
    ADC $AA
    STA $AA
    BCC @UNKNOWN4
    LDA #$00
    ADC $AB
    STA $AB
    AND #$03
    BNE @UNKNOWN5
    LDA $A1
    SEC
    SBC #$10
    STA $A1
    LDA $A3
    EOR #$01
    STA $A3
    CLC
    ADC #$02
    STA $A5
    ADC #$02
    STA $A7
    JMP $D120
@UNKNOWN3:
    LDX $AF
    BEQ @UNKNOWN6
    CLC
    LDA $A1
    ADC #$10
    STA $A1
    CLC
    TXA
    ADC $AC
    STA $AC
    BCC @UNKNOWN4
    LDA #$00
    ADC $AD
    STA $AD
    JMP $D120
@UNKNOWN4:
    JMP $D18F
@UNKNOWN5:
    JMP $D120
@UNKNOWN6:
    RTS

UNKNOWN_D21C:
    LDA $E5
    BNE UNKNOWN_D21C
    LDA $A0
    BMI UNKNOWN_D21C_0
    AND #$07
    ASL
    ASL
    ASL
    TAX
    LDA $D28B,X
    BPL UNKNOWN_D21C_2
UNKNOWN_D21C_0:
    LDX #$00
    RTS
UNKNOWN_D232:
    LDA $E5
    BNE UNKNOWN_D232
    LDA $A0
    BMI UNKNOWN_D21C_0
    AND #$07
    ASL
    ASL
    ASL
UNKNOWN_D21C_2:
    TAX
    CLC
    LDA $18
    AND #$C0
    ADC $D284,X
    STA $AA
    LDA $19
    ADC $D285,X
    STA $AB
    CLC
    LDA $1A
    AND #$C0
    ADC $D286,X
    STA $AC
    LDA $1B
    ADC $D287,X
    STA $AD
    CLC
    LDA $D288,X
    ADC $1D
    BCS @UNKNOWN3
    ADC #$F0
@UNKNOWN3:
    STA $99
    LDA $D28A,X
    BMI @UNKNOWN6
    EOR $99
    AND #$10
    BNE @UNKNOWN5
    LDA $D289,X
@UNKNOWN5:
    STA $93
    JMP UNKNOWN_D2C4
@UNKNOWN6:
    JMP $D398

UNKNOWN_D284:
    .BYTE $00, $00, $00, $00, $10, $F0, $10, $88
    .BYTE $00, $00, $00, $00, $10, $F0, $10, $10
    .BYTE $00, $04, $00, $00, $10, $00, $FF, $88
    .BYTE $00, $00, $80, $03, $F0, $20, $00, $10
    .BYTE $00, $00, $80, $03, $F0, $20, $00, $88
    .BYTE $00, $00, $80, $03, $F0, $20, $00, $30
    .BYTE $00, $00, $00, $00, $10, $00, $FF, $88
    .BYTE $00, $00, $00, $00, $10, $F0, $10, $30

UNKNOWN_D2C4:
    JSR UNKNOWN_D4B7
    LDA #$11
    STA $91
    LDX #$00
    LDA #$05
    STA $0400,X
    STA $042A,X
    INX
    LDA $91
    ASL
    STA $0400,X
    STA $042A,X
    INX
    LDA $8D
    STA $0400,X
    STA $042A,X
    INX
    LDA $8C
    STA $0400,X
    ORA #$20
    STA $042A,X
    INX
@UNKNOWN0:
    JSR UNKNOWN_D537
    LDY #$00
    LDA ($88),Y
    AND #$3F
    EOR $97
    STA $0400,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR $97
    STA $0401,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR $97
    STA $042A,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR $97
    STA $042B,X
    INX
    INX
    DEC $91
    BEQ @UNKNOWN1
    INC $A1
    LDA $A1
    BIT $D47F
    BNE @UNKNOWN0
    SEC
    SBC #$10
    STA $A1
    LDA $A3
    EOR #$01
    STA $A3
    LDA $8C
    AND #$E0
    STA $8C
    LDA $8D
    EOR #$04
    STA $8D
    SEC
    LDA #$11
    SBC $91
    ASL
    STA $0401
    STA $042B
    JMP $D2CD
@UNKNOWN1:
    LDA #$09
    STA $91
    LDX #$54
    LDA #$07
    STA $0400,X
    INX
    LDA $91
    STA $0400,X
    INX
@UNKNOWN2:
    JSR UNKNOWN_D480
    DEC $91
    BEQ @UNKNOWN3
    INC $8E
    CLC
    LDA $92
    ADC #$02
    STA $92
    BIT $D47F
    BNE @UNKNOWN2
    SEC
    SBC #$10
    STA $92
    LDA $A5
    EOR #$01
    STA $A5
    SEC
    LDA $8E
    SBC #$08
    STA $8E
    LDA $8F
    EOR #$04
    STA $8F
    JMP $D367
@UNKNOWN3:
    RTS

UNKNOWN_D398:
    JSR UNKNOWN_D4B7
    SEC
    LDA #$F0
    SBC $99
    CLC
    ADC $A1
    STA $A1
    LDA #$0F
    STA $91
    LDX #$00
    LDA #$06
    STA $0400,X
    STA $0422,X
    INX
    LDA $91
    ASL
    STA $0400,X
    STA $0422,X
    INX
    LDA $8D
    AND #$FC
    STA $0400,X
    STA $0422,X
    INX
    LDA $8C
    AND #$1E
    STA $0400,X
    ORA #$01
    STA $0422,X
    INX
    LDA $99
    STA $8C
    LDA $8C
    SEC
    SBC #$10
    STA $8C
    BCS @UNKNOWN0
    LDA $A1
    ADC #$10
    STA $A1
@UNKNOWN0:
    JSR UNKNOWN_D537
    LDY #$00
    LDA ($88),Y
    AND #$3F
    EOR $97
    STA $0400,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR $97
    STA $0422,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR $97
    STA $0401,X
    INY
    LDA ($88),Y
    AND #$3F
    EOR $97
    STA $0423,X
    INX
    INX
    DEC $91
    BEQ @UNKNOWN1
    CLC
    LDA $A1
    ADC #$10
    STA $A1
    JMP $D3DA
@UNKNOWN1:
    LDA #$08
    STA $91
    LDX #$44
    LDA #$07
    STA $0400,X
    INX
    LDA $91
    STA $0400,X
    INX
    LDA $99
    AND #$10
    BEQ @UNKNOWN2
    SEC
    LDA $92
    PHA
    SBC #$10
    STA $92
    LDA #$20
    STA $93
    JSR UNKNOWN_D480
    PLA
    STA $92
    LDA #$10
    STA $93
    BNE @UNKNOWN4
@UNKNOWN2:
    LDA #$10
    STA $93
@UNKNOWN3:
    JSR UNKNOWN_D480
@UNKNOWN4:
    DEC $91
    BEQ @UNKNOWN5
    CLC
    LDA $92
    ADC #$20
    STA $92
    CLC
    LDA $8E
    ADC #$08
    STA $8E
    BCC @UNKNOWN3
    SBC #$40
    STA $8E
    SEC
    LDA $92
    SBC #$10
    STA $92
    JMP $D459
@UNKNOWN5:
    RTS

UNKNOWN_D47F:
    .BYTE $0F

UNKNOWN_D480:
    LDA $8F
    STA $0400,X
    INX
    LDA $8E
    STA $0400,X
    INX
    LDY $92
    LDA ($A4),Y
    AND #$03
    STA $90
    INY
    LDA ($A4),Y
    AND #$0C
    ORA $90
    STA $90
    CLC
    LDA $92
    ADC $93
    TAY
    LDA ($A4),Y
    AND #$30
    ORA $90
    STA $90
    INY
    LDA ($A4),Y
    AND #$C0
    ORA $90
    STA $0400,X
    INX
    RTS

UNKNOWN_D4B7:
    LDA $10
    LSR
    ORA #$01
    LDX #$06
    JSR BANK_SWAP
    LDA $12
    LSR
    ORA #$01
    LDX #$07
    JSR BANK_SWAP
    JSR UNKNOWN_D55D
    LDA $AB
    AND #$07
    STA $9A
    LDA $AA
    LSR $9A
    ROR
    LSR $9A
    ROR
    STA $98
    LDA $99
    EOR $A1
    AND #$10
    BNE @UNKNOWN0
    LDA $A1
    AND #$EE
    JMP $D4F6
@UNKNOWN0:
    SEC
    LDA $A1
    SBC #$10
    ORA #$10
    AND #$FE
    BIT $93
    BPL @UNKNOWN1
    LDX #$20
    STX $93
    SEC
    SBC #$10
@UNKNOWN1:
    STA $92
    LDA $99
    AND #$F0
    STA $8C
    LDA $9A
    ASL $8C
    ROL
    ASL $8C
    ROL
    ORA #$20
    STA $8D
    ORA #$03
    STA $8F
    LDA $98
    AND #$F0
    LSR
    LSR
    LSR
    ORA $8C
    STA $8C
    LSR
    LSR
    AND #$07
    STA $8E
    LDA $99
    LSR
    LSR
    AND #$38
    ORA #$C0
    ORA $8E
    STA $8E
    RTS

UNKNOWN_D537:
    LDY $A1
    LDA ($A2),Y
    AND #$80
    LSR
    STA $97
    LSR
    STA $96
    BEQ @UNKNOWN0 + 1
    LDA $13
@UNKNOWN0:
    BIT $11A5
    STA $89
    LDA ($A2),Y
    ASL
    ASL
    ROL $89
    STA $88
    LDA $89
    ADC #$90
    ADC $96
    STA $89
    RTS

UNKNOWN_D55D:
    LDA $AB
    AND #$07
    STA $A3
    LDA $AA
    LSR $A3
    ROR
    LSR $A3
    ROR
    LSR
    LSR
    ORA $AC
    STA $A1
    LDA $AD
    LSR
    ROR $A1
    LSR
    ROR $A1
    LDA #$00
    STA $A2
    STA $A4
    STA $A6
    LDA $A3
    CLC
    ADC #$60
    STA $A3
    ADC #$02
    STA $A5
    ADC #$02
    STA $A7
    RTS

UNKNOWN_D591:
    JSR UNKNOWN_D59D
    LDY #$00
    LDA ($88),Y
    AND #$3F
    STA $14
    RTS

UNKNOWN_D59D:
    LDA $AD
    LSR
    LSR
    LSR
    LSR
    AND #$0E
    STA $94
    ORA #$01
    LDX #$07
    JSR BANK_SWAP
    LDA $AD
    LSR
    LSR
    AND #$07
    STA $89
    LDA $AB
    AND #$FC
    CLC
    STA $88
    LDA $89
    ADC #$B8
    STA $89
    RTS

UNKNOWN_D5C4:
    CLC
    LDA $19
    ADC #$02
    STA $AB
    CLC
    LDA $1A
    ADC #$C0
    STA $AC
    LDA $1B
    ADC #$01
    STA $AD
    JSR UNKNOWN_D59D
    LDY #$00
    LDA ($88),Y
    AND #$3F
    CMP $14
    BEQ @UNKNOWN0
    LDA $17
    LDX #$03
    JSR BANK_SWAP
    STA $12
    AND #$03
    STA $13
    RTS
@UNKNOWN0:
    LDA $23
    BEQ @UNKNOWN1
    BPL @UNKNOWN2
    AND #$7F
    STA $23
    BPL @UNKNOWN3
@UNKNOWN1:
    LDY #$01
    LDA ($88),Y
    AND #$3F
    STA $15
    TAX
    LDA $D634,X
    BEQ @UNKNOWN3
@UNKNOWN2:
    LDX #$01
    JSR BANK_SWAP
@UNKNOWN3:
    LDY #$02
    LDA ($88),Y
    AND #$3F
    LDX #$02
    JSR BANK_SWAP
    STA $10
    AND #$03
    STA $11
    INY
    LDA ($88),Y
    AND #$3F
    LDX #$03
    JSR BANK_SWAP
    STA $12
    AND #$03
    STA $13
    RTS

UNKNOWN_D634:
    .BYTE $00, $68, $62, $62, $62, $62, $64, $62, $74, $64, $6A, $62, $66, $6C, $62, $00
    .BYTE $00, $00, $00, $00, $66, $00, $6A, $66, $62, $68, $64, $68, $6E, $66, $66, $66
    .BYTE $62, $62, $62, $66, $64, $6E, $62, $64, $66, $74, $6C, $66, $00, $00, $68, $6C
    .BYTE $72, $00, $66, $00, $00, $00, $6A, $00, $6C, $6E, $6C, $6E, $6C, $6E, $6E, $00

UNKNOWN_D674:
    LDA $20
    BPL @UNKNOWN0
    AND #$0F
    STA $3E
    LDA $6784
    AND #$C0
    STA $AA
    LDA $6785
    STA $AB
    LDA $6786
    AND #$C0
    STA $AC
    LDA $6787
    STA $AD
    JMP $D6CB
@UNKNOWN0:
    LDA $7406
    AND #$3F
    STA $3E
    CLC
    LDA $7404
    AND #$C0
    STA $18
    ADC #$00
    STA $AA
    LDA $7405
    STA $19
    ADC #$02
    STA $AB
    CLC
    LDA $7406
    AND #$C0
    STA $1A
    ADC #$C0
    STA $AC
    LDA $7407
    STA $1B
    ADC #$01
    STA $AD
    JSR UNKNOWN_D591
    JSR UNKNOWN_D55D
    JSR UNKNOWN_DD57
    JSR UNKNOWN_FDE7
    LDA $23
    BNE @UNKNOWN4
    LDX #$00
@UNKNOWN1:
    LDA $7408,X
    BEQ @UNKNOWN2
    JSR UNKNOWN_D7DF
    LDY #$19
    LDA #$88
    STA ($30),Y
    LDA #$0C
    CPX #$00
    BNE @UNKNOWN2
    LDY #$1C
    LDA ($38),Y
@UNKNOWN2:
    LDY #$00
    STA ($30),Y
    LDA $20
    AND #$C0
    BEQ @UNKNOWN6
    JSR UNKNOWN_DD64
    INX
    CPX #$04
    BCC @UNKNOWN1
    LDA $7404
    AND #$3F
    BEQ @UNKNOWN3
    JSR UNKNOWN_FD28
@UNKNOWN3:
    LDA #$00
    STA $20
    LDA $22
    AND #$CF
    STA $22
    JMP UNKNOWN_FDED
@UNKNOWN4:
    JSR UNKNOWN_D7E2
    LDY #$00
    LDA ($30),Y
    AND #$3F
    CMP #$0D
    BNE @UNKNOWN5
    JSR UNKNOWN_D884
    LDY #$19
    LDA $3E
    STA ($30),Y
    EOR #$04
    STA $3E
    JSR UNKNOWN_D7E2
@UNKNOWN5:
    JMP $D704
@UNKNOWN6:
    LDA $7409,X
    BEQ @UNKNOWN7
    JSR UNKNOWN_D768
    BCC @UNKNOWN8
@UNKNOWN7:
    JSR UNKNOWN_DD64
    JSR UNKNOWN_FDE7
    LDY #$00
    LDA #$00
    STA ($30),Y
@UNKNOWN8:
    INX
    CPX #$03
    BCC @UNKNOWN6
    JMP $D704
UNKNOWN_D759:
    PHA
    LDX #$00
@UNKNOWN9:
    LDA $7409,X
    BEQ UNKNOWN_D768_10
    INX
    CPX #$03
    BCC @UNKNOWN9
    PLA
    RTS

UNKNOWN_D768:
    PHA
UNKNOWN_D768_10:
    TXA
    PHA
    JSR UNKNOWN_D86C
    JSR UNKNOWN_D884
    JSR UNKNOWN_FDE7
    PLA
    TAX
    PLA
    STA $7409,X
    JSR UNKNOWN_D7DF
    LDY #$19
    LDA $3E
    STA ($30),Y
    LDY #$00
    LDA #$0C
    STA ($30),Y
    CLC
    JMP UNKNOWN_FDED
UNKNOWN_D78D:
    LDX #$00
@UNKNOWN0:
    CMP $7408,X
    BEQ @UNKNOWN1
    INX
    CPX #$04
    BCC @UNKNOWN0
    RTS
@UNKNOWN1:
    JSR UNKNOWN_FDE7
@UNKNOWN2:
    CPX #$03
    BCS @UNKNOWN3
    LDA $7409,X
    BEQ @UNKNOWN4
    STA $7408,X
    INX
    BCC @UNKNOWN2
@UNKNOWN3:
    LDA #$00
@UNKNOWN4:
    STA $7408,X
    TXA
    JSR UNKNOWN_D86C
    JSR UNKNOWN_DFBF
    JSR UNKNOWN_DD57
    LDX #$00
@UNKNOWN5:
    LDA $7408,X
    BEQ @UNKNOWN6
    JSR UNKNOWN_D813
    LDA #$0C
    CPX #$00
    BNE @UNKNOWN6
    LDY #$1C
    LDA ($38),Y
@UNKNOWN6:
    LDY #$00
    STA ($30),Y
    JSR UNKNOWN_DD64
    INX
    CPX #$04
    BCC @UNKNOWN5
    CLC
    JMP UNKNOWN_FDED

UNKNOWN_D7DF:
    JSR UNKNOWN_D813
UNKNOWN_D7E2:
    LDY #$04
    LDA $AA
    STA ($30),Y
    INY
    LDA $AB
    STA ($30),Y
    LDY #$06
    LDA $AC
    STA ($30),Y
    INY
    LDA $AD
    STA ($30),Y
    LDY #$11
    LDA $A1
    STA ($30),Y
    INY
    LDA $A6
    STA ($30),Y
    INY
    LDA $A7
    STA ($30),Y
    LDA $3E
    LDY #$15
    STA ($30),Y
    LDY #$1D
    STA ($30),Y
    RTS

UNKNOWN_D813:
    LDY #$02
    AND #$07
    STA $39
    LDA #$00
    LSR $39
    ROR
    LSR $39
    ROR
    STA $38
    STA ($30),Y
    INY
    LDA $39
    ADC #$74
    STA $39
    STA ($30),Y
    LDY #$1D
    LDA ($38),Y
    LDY #$14
    PHA
    AND #$F0
    STA ($30),Y
    LDY #$08
    PLA
    AND #$0F
    STA ($30),Y
UNKNOWN_D840:
    LDY #$1E
    LDA ($38),Y
    LDY #$16
    STA ($30),Y
    LDY #$1F
    LDA ($38),Y
    LDY #$17
    STA ($30),Y
    CLC
    LDY #$01
    LDA ($38),Y
    BPL @UNKNOWN0
    AND #$80
    STA ($38),Y
    LDY #$16
    LDA ($30),Y
    ADC #$A0
    STA ($30),Y
    INY
    LDA ($30),Y
    ADC #$00
    STA ($30),Y
    SEC
@UNKNOWN0:
    RTS

UNKNOWN_D86C:
    STA $31
    LDA #$00
    LSR $31
    ROR
    LSR $31
    ROR
    LSR $31
    ROR
    ADC #$80
    STA $30
    LDA $31
    ADC #$67
    STA $31
    RTS

UNKNOWN_D884:
    LDY #$15
    LDA ($30),Y
    STA $3E
    EOR #$04
    ASL
    ASL
    ASL
    TAX
    LDY #$04
    CLC
    LDA $EBED,X
    ADC ($30),Y
    STA $AA
    INY
    LDA $EBEE,X
    ADC ($30),Y
    STA $AB
    LDY #$06
    CLC
    LDA $EBEF,X
    ADC ($30),Y
    STA $AC
    INY
    LDA $EBF0,X
    ADC ($30),Y
    STA $AD
    JSR UNKNOWN_D55D
    JMP UNKNOWN_DD64

UNKNOWN_D8BA:
    JSR UNKNOWN_D86C
    LDY #$02
    LDA ($30),Y
    STA $38
    INY
    LDA ($30),Y
    STA $39
    RTS

UNKNOWN_D8C9:
    LDA #$07
    JSR UNKNOWN_D78D
UNKNOWN_D8CE:
    LDA #$06
    JMP UNKNOWN_D78D
UNKNOWN_D8D3:
    LDA $7581
    BPL @UNKNOWN0
    LDA #$06
    JSR UNKNOWN_D78D
@UNKNOWN0:
    LDA $75C1
    BPL @UNKNOWN1
    LDA #$07
    JSR UNKNOWN_D78D
@UNKNOWN1:
    LDX #$00
    STX $37
@UNKNOWN2:
    JSR UNKNOWN_D9F1
    BCS @UNKNOWN4
    TXA
    JSR UNKNOWN_D8BA
    JSR UNKNOWN_FDE7
    JSR UNKNOWN_D840
    BCS @UNKNOWN3
    INC $37
@UNKNOWN3:
    JSR UNKNOWN_FDED
    INX
    CPX #$04
    BCC @UNKNOWN2
@UNKNOWN4:
    STX $36
    LDA $37
    BEQ @UNKNOWN5
    CLC
    RTS
@UNKNOWN5:
    JSR UNKNOWN_D8C9
    JSR UNKNOWN_FDE7
    LDA #$00
    STA $7441
    STA $7456
    STA $7457
    LDA $7443
    STA $7454
    LDA $7444
    STA $7455
    LDA $7410
    LSR $7411
    ROR
    ADC #$00
    STA $7410
    LDA $7411
    ADC #$00
    STA $7411
    LDA #$01
    STA $37
    LDA #$00
    STA $21
    STA $23
    LDX $47
    LDY $D96B,X
    LDX #$03
@UNKNOWN6:
    LDA $D96F,Y
    STA $7404,X
    DEY
    DEX
    BPL @UNKNOWN6
    LDA $7406
    AND #$0F
    ORA #$20
    STA $20
    EOR #$60
    STA $22
    SEC
    JMP UNKNOWN_FDED

UNKNOWN_D96B:
    .BYTE $03, $03, $03, $07, $5C, $DF, $00, $24, $8B, $DF, $40, $DB

UNKNOWN_D977:
    DEC $36
    BMI @UNKNOWN3
    BEQ @UNKNOWN3
@UNKNOWN0:
    LDA $7408
    CMP #$01
    BEQ @UNKNOWN2
    JSR UNKNOWN_D998
    BCS @UNKNOWN0
@UNKNOWN1:
    JSR UNKNOWN_D998
@UNKNOWN2:
    LDA #$00
    JSR UNKNOWN_D8BA
    LDY #$01
    LDA ($38),Y
    BMI @UNKNOWN1
@UNKNOWN3:
    RTS

UNKNOWN_D998:
    JSR UNKNOWN_FDE7
    LDX #$00
    STX $37
@UNKNOWN0:
    LDA $7408,X
    PHA
    LDA $7409,X
    STA $7408,X
    PLA
    STA $7409,X
    LDA #$02
    JSR UNKNOWN_D9DE
    LDA #$03
    JSR UNKNOWN_D9DE
    LDA #$08
@UNKNOWN1:
    PHA
    JSR UNKNOWN_D9DE
    PLA
    CLC
    ADC #$01
    CMP #$11
    BCC @UNKNOWN1
    LDA #$16
    JSR UNKNOWN_D9DE
    LDA #$17
    JSR UNKNOWN_D9DE
    CLC
    LDA $37
    ADC #$20
    STA $37
    INX
    CPX $36
    BCC @UNKNOWN0
    JMP UNKNOWN_FDED

UNKNOWN_D9DE:
    CLC
    ADC $37
    TAY
    LDA $6780,Y
    PHA
    LDA $67A0,Y
    STA $6780,Y
    PLA
    STA $67A0,Y
    RTS

UNKNOWN_D9F1:
    SEC
    LDA $7408,X
    BEQ @UNKNOWN0
    CMP #$06
@UNKNOWN0:
    RTS

UNKNOWN_D9FA:
    LDX #$00
@UNKNOWN0:
    LDA $7408,X
    BEQ @UNKNOWN2
    JSR UNKNOWN_C665
    LDY #$2C
@UNKNOWN1:
    LDA $73D8,Y
    STA ($60),Y
    INY
    CPY #$30
    BCC @UNKNOWN1
@UNKNOWN2:
    INX
    CPX #$04
    BCC @UNKNOWN0
    RTS

UNKNOWN_DA16:
    JSR UNKNOWN_FD33
    JSR UNKNOWN_FDC0
    LDX #$00
@UNKNOWN0:
    JSR UNKNOWN_D9F1
    BCS @UNKNOWN1
    TXA
    JSR UNKNOWN_D8BA
    LDY #$01
    LDA ($38),Y
    BMI @UNKNOWN1
    LDY #$10
    LDA ($30),Y
    TAY
    LDA #$80
    STA $0306,Y
    LDA #$81
    STA $0307,Y
@UNKNOWN1:
    INX
    CPX #$04
    BCC @UNKNOWN0
    LDA #$01
    STA $E5
    JMP UNKNOWN_FD33
UNKNOWN_DA48:
    LDA $37
    STA $64
    LDA $49
    STA $60
    LDA $4A
    STA $61
    LDA $4B
    STA $62
    JSR UNKNOWN_F13D
    LDA $68
    BEQ @UNKNOWN2
    LDA #$01
@UNKNOWN2:
    CLC
    ADC $60
    STA $49
    LDA #$00
    ADC $61
    STA $4A
    LDA #$00
    ADC $62
    STA $4B
    JSR UNKNOWN_FDE7
    LDX #$00
@UNKNOWN3:
    JSR UNKNOWN_D9F1
    BCS @UNKNOWN7
    STA $28
    TXA
    LSR
    ROR
    ROR
    ROR
    STA $53
    TXA
    PHA
    JSR UNKNOWN_D8BA
    LDY #$01
    LDA ($38),Y
    BMI @UNKNOWN6
    LDA $47
    BNE @UNKNOWN5
    LDY #$11
    CLC
    LDA $49
    ADC ($38),Y
    STA ($38),Y
    INY
    LDA $4A
    ADC ($38),Y
    STA ($38),Y
    INY
    LDA $4B
    ADC ($38),Y
    STA ($38),Y
    BCC @UNKNOWN4
    LDY #$11
    LDA #$FF
    STA ($38),Y
    INY
    STA ($38),Y
    INY
    STA ($38),Y
@UNKNOWN4:
    LDY #$10
    LDA ($38),Y
    JSR UNKNOWN_DB40
    LDY #$11
    SEC
    LDA ($38),Y
    SBC $64
    INY
    LDA ($38),Y
    SBC $65
    INY
    LDA ($38),Y
    SBC $66
    BCC @UNKNOWN5
    JSR UNKNOWN_DB6C
    BCC @UNKNOWN4
@UNKNOWN5:
    JSR UNKNOWN_DC87
@UNKNOWN6:
    PLA
    TAX
@UNKNOWN7:
    INX
    CPX #$04
    BCC @UNKNOWN3
    JSR UNKNOWN_C43F
    LDA $47
    BNE @UNKNOWN11
    JSR UNKNOWN_FDE7
    LDX #$12
    JSR UNKNOWN_DC11
    LDX #$15
    JSR UNKNOWN_DC11
    LDA $48
    BEQ @UNKNOWN11
    STA $29
    JSR UNKNOWN_CED3
    JSR $BBC3
    LDA #$FF
    STA $2A
    LDA $2B
    ORA #$1F
@UNKNOWN8:
    ASL $2A
    ASL
    BCC @UNKNOWN8
    JSR UNKNOWN_F1ED
    AND $2A
    BNE @UNKNOWN11
    JSR $BB8C
    LDX #$00
@UNKNOWN9:
    JSR UNKNOWN_D9F1
    BCS @UNKNOWN10
    STA $28
    TXA
    PHA
    JSR $A979
    PLA
    TAX
    BCC @UNKNOWN12
@UNKNOWN10:
    INX
    CPX #$04
    BCC @UNKNOWN9
@UNKNOWN11:
    JMP UNKNOWN_FDED
@UNKNOWN12:
    JSR UNKNOWN_CEDA
    LDA #$06
    STA UNKNOWN_07EF+2
    LDA #$8C
    JMP $A3F8

UNKNOWN_DB40:
    TAX
    INX
    STX $64
    INX
    STX $60
    LDA #$00
    STA $61
    STA $62
    JSR UNKNOWN_F109
    JSR UNKNOWN_F109
    JSR UNKNOWN_DCDF
    LDY #$00
    LDA ($68),Y
    STA $64
    JSR UNKNOWN_F109
    LDA $61
    STA $64
    LDA $62
    STA $65
    LDA $63
    STA $66
    RTS

UNKNOWN_DB6C:
    LDY #$10
    LDA ($38),Y
    CMP #$63
    BCC @UNKNOWN0
    RTS
@UNKNOWN0:
    ADC #$01
    STA ($38),Y
    JSR UNKNOWN_C43F
    JSR UNKNOWN_FDE7
    LDA #$FF
    JSR UNKNOWN_FD28
    LDA #$1F
    JSR UNKNOWN_FD28
    LDA #$82
    JSR $A3F8
    JSR UNKNOWN_DCDF
    LDY #$03
@UNKNOWN1:
    JSR UNKNOWN_F1ED
    LSR
    LSR
    LSR
    LSR
    LSR
    LSR
    CLC
    ADC ($68),Y
    LSR
    STA $0055,Y
    INY
    CPY #$08
    BCC @UNKNOWN1
    LDY #$0B
@UNKNOWN2:
    CLC
    LDA ($38),Y
    ADC $004D,Y
    BCC @UNKNOWN3
    SBC $004D,Y
    EOR #$FF
    STA $004D,Y
    LDA #$FF
@UNKNOWN3:
    STA ($38),Y
    LDA $004D,Y
    BEQ @UNKNOWN4
    TYA
    PHA
    CLC
    ADC #$7B
    JSR $A3F8
    PLA
    TAY
@UNKNOWN4:
    INY
    CPY #$10
    BCC @UNKNOWN2
    LDY #$07
    LDA $58
    JSR UNKNOWN_DC64
    LDY #$09
    LDA $59
    JSR UNKNOWN_DC64
    LDY #$0E
    LDA ($38),Y
    STA $60
    CLC
    ADC #$14
    BCC @UNKNOWN5
    LDA #$FF
@UNKNOWN5:
    LDY #$03
    JSR UNKNOWN_DC3F
    LDA #$84
    JSR UNKNOWN_DC38
    LDA $28
    CMP #$03
    BCS @UNKNOWN6
    LDY #$0F
    LDA ($38),Y
    STA $60
    LSR
    CLC
    LDY #$05
    JSR UNKNOWN_DC3F
    LDA #$85
    JSR UNKNOWN_DC38
@UNKNOWN6:
    CLC
    RTS

UNKNOWN_DC11:
    CLC
    LDA $4C
    ADC $7400,X
    STA $7400,X
    LDA $4D
    ADC $7401,X
    STA $7401,X
    LDA #$00
    ADC $7402,X
    STA $7402,X
    BCC @UNKNOWN0
    LDA #$FF
    STA $7400,X
    STA $7401,X
    STA $7402,X
@UNKNOWN0:
    RTS

UNKNOWN_DC38:
    LDX $5D
    BEQ UNKNOWN_DC64_1
    JMP $A3F8

UNKNOWN_DC3F:
    CLC
    ADC $60
    STA $60
    LDA #$00
    ROL
    STA $61
    SEC
    LDA $60
    SBC ($38),Y
    TAX
    INY
    LDA $61
    SBC ($38),Y
    BEQ @UNKNOWN0
    LDX #$08
    BCS @UNKNOWN0
    LDX #$01
@UNKNOWN0:
    DEY
    TXA
    ASL
    JSR UNKNOWN_DC71
    STA $5D
UNKNOWN_DC64:
    CLC
    ADC ($38),Y
    STA ($38),Y
    INY
    LDA #$00
    ADC ($38),Y
    STA ($38),Y
UNKNOWN_DC64_1:
    RTS

UNKNOWN_DC71:
    CMP #$10
    BCC @UNKNOWN0
    LDA #$10
@UNKNOWN0:
    TAX
    JSR UNKNOWN_F1ED
    LSR
    LSR
    LSR
    LSR
    JSR UNKNOWN_F125
    LSR
    LSR
    LSR
    LSR
    RTS

UNKNOWN_DC87:
    LDA $21
    BNE @UNKNOWN2
    JSR UNKNOWN_DCDF
    LDY #$02
    LDA ($68),Y
    BEQ @UNKNOWN2
    PHA
    LDX #$C0
@UNKNOWN0:
    STX $29
    JSR UNKNOWN_DCE6
    PLA
    PHA
    TAY
    LDA ($68),Y
    LDY #$10
    CMP ($38),Y
    BCS @UNKNOWN1
    JSR UNKNOWN_DCCD
    AND ($38),Y
    BNE @UNKNOWN1
    JSR UNKNOWN_F1ED
    AND #$C0
    BNE @UNKNOWN1
    LDA ($38),Y
    ORA UNKNOWN_EC5D,X
    STA ($38),Y
    LDA #$09
    STA UNKNOWN_07EF+2
    LDA #$83
    JSR $A3F8
@UNKNOWN1:
    LDX $29
    INX
    BNE @UNKNOWN0
    PLA
@UNKNOWN2:
    RTS

UNKNOWN_DCCD:
    LDA $29
    CLC
    ADC #$C0
    ROR
    LSR
    LSR
    TAY
    LDA $29
    AND #$07
    TAX
    LDA UNKNOWN_EC5D,X
    RTS

UNKNOWN_DCDF:
    CLC
    LDA $28
    ADC #$B8
    BCC UNKNOWN_DCE6_0
UNKNOWN_DCE6:
    LDA $29
UNKNOWN_DCE6_0:
    ASL
    ROL $69
    ASL
    ROL $69
    ASL
    ROL $69
    CLC
    ADC #$00
    STA $68
    LDA $69
    AND #$07
    ADC #$98
    STA $69
    JMP UNKNOWN_DE8B

UNKNOWN_DD01:
    JSR UNKNOWN_DD57
    JSR UNKNOWN_FDE7
@UNKNOWN1:
    LDY #$00
    LDA ($30),Y
    ASL
    BEQ @UNKNOWN3
    JSR UNKNOWN_E1BE
    BCS @UNKNOWN2
    LDY #$00
    LDA ($30),Y
    ORA #$80
    STA ($30),Y
    BMI @UNKNOWN3
@UNKNOWN2:
    LDY #$00
    LDA ($30),Y
    AND #$3F
    STA ($30),Y
    JSR UNKNOWN_E0F9
    JSR UNKNOWN_DEF9
@UNKNOWN3:
    JSR UNKNOWN_DD64
    INC $36
    BNE @UNKNOWN1
    LDA $20
    BNE @UNKNOWN4
    LDA $18
    AND #$C0
    ORA $078C
    LDX $19
    STA $7404
    STX $7405
    LDA $1A
    AND #$C0
    ORA $6795
    LDX $1B
    STA $7406
    STX $7407
@UNKNOWN4:
    JMP UNKNOWN_FDED

UNKNOWN_DD57:
    LDA #$80
    LDX #$67
    STA $30
    STX $31
    LDX #$FC
    STX $36
    RTS

UNKNOWN_DD64:
    CLC
    LDA $30
    ADC #$20
    STA $30
    LDA $31
    ADC #$00
    STA $31
    RTS

UNKNOWN_DD72:
    JSR UNKNOWN_DE29
    JSR UNKNOWN_FDE7
@UNKNOWN0:
    JSR UNKNOWN_DE4B
    JSR UNKNOWN_DD88
    JSR UNKNOWN_DE5C
    DEC $36
    BNE @UNKNOWN0
    JMP UNKNOWN_FDED

UNKNOWN_DD88:
    LDY #$01
    LDA $15
    STA ($30),Y
    LDA $37
    BNE @UNKNOWN2
@UNKNOWN1:
    LDY #$00
    STA ($30),Y
    RTS
@UNKNOWN2:
    LDY #$00
    LDA ($32),Y
    AND #$3F
    BEQ @UNKNOWN1
    JSR UNKNOWN_DE13
    LDY #$02
    LDA ($32),Y
    AND #$3F
    LDY #$15
    STA ($30),Y
    LDY #$04
    LDA ($32),Y
    LDY #$16
    STA ($30),Y
    LDY #$05
    LDA ($32),Y
    LDY #$17
    STA ($30),Y
    LDY #$00
    LDA ($32),Y
    AND #$C0
    LDY #$04
    STA ($30),Y
    STA $AA
    LDY #$01
    LDA ($32),Y
    LDY #$05
    STA ($30),Y
    STA $AB
    LDY #$02
    LDA ($32),Y
    AND #$C0
    LDY #$06
    STA ($30),Y
    STA $AC
    LDY #$03
    LDA ($32),Y
    LDY #$07
    STA ($30),Y
    STA $AD
    LDY #$02
    LDA $32
    STA ($30),Y
    INY
    LDA $33
    STA ($30),Y
    JSR UNKNOWN_D55D
    LDY #$11
    LDA $A1
    STA ($30),Y
    INY
    LDA $A6
    STA ($30),Y
    INY
    LDA $A7
    STA ($30),Y
    LDY #$18
    LDX #$08
    LDA #$00
@UNKNOWN3:
    STA ($30),Y
    INY
    DEX
    BNE @UNKNOWN3
    RTS

UNKNOWN_DE13:
    LDY #$00
    STA ($30),Y
    ASL
    ASL
    TAX
    LDY #$08
    LDA $E107,X
    STA ($30),Y
    LDY #$14
    LDA $E108,X
    STA ($30),Y
    RTS

UNKNOWN_DE29:
    LDA $15
    JSR UNKNOWN_DE6C
    ASL
    TAX
    LDA $8000,X
    STA $38
    LDA $8001,X
    STA $39
    LDA #$02
    STA $37
UNKNOWN_DE3E:
    LDA #$00
    LDX #$68
    STA $30
    STX $31
    LDX #$28
    STX $36
    RTS

UNKNOWN_DE4B:
    LDY #$01
    LDA ($38),Y
    BEQ @UNKNOWN0
    STA $33
    DEY
    LDA ($38),Y
    STA $32
    RTS
@UNKNOWN0:
    STA $37
    RTS

UNKNOWN_DE5C:
    CLC
    LDA $38
    ADC $37
    STA $38
    LDA $39
    ADC #$00
    STA $39
    JMP UNKNOWN_DD64

UNKNOWN_DE6C:
    CMP #$2B
    BCC @UNKNOWN0
    LDX #$12
    SBC #$2B
    BCS @UNKNOWN2
@UNKNOWN0:
    CMP #$1A
    BCC @UNKNOWN1
    LDX #$11
    SBC #$1A
    BCS @UNKNOWN2
@UNKNOWN1:
    LDX #$10
@UNKNOWN2:
    PHA
    TXA
    LDX #$06
    JSR BANK_SWAP
    PLA
    RTS

UNKNOWN_DE8B:
    LDX #$06
    LDA #$00
    JMP BANK_SWAP

UNKNOWN_DE92:
    LDX #$06
    LDA #$00
    JMP BANK_SWAP

UNKNOWN_DE99:
    JSR UNKNOWN_DE29
    JSR UNKNOWN_FDE7
@UNKNOWN0:
    JSR UNKNOWN_DE4B
    LDY #$01
    LDA ($30),Y
    CMP $15
    BEQ @UNKNOWN2
    LDY #$00
    LDA ($30),Y
    ASL
    BEQ @UNKNOWN1
    JSR UNKNOWN_E1BE
    BCS @UNKNOWN3
@UNKNOWN1:
    JSR UNKNOWN_DD88
@UNKNOWN2:
    LDY #$00
    LDA ($30),Y
    ASL
    BEQ @UNKNOWN4
    JSR UNKNOWN_E1BE
    BCS @UNKNOWN3
    LDY #$00
    LDA ($30),Y
    ORA #$80
    STA ($30),Y
    BMI @UNKNOWN4
@UNKNOWN3:
    LDY #$00
    LDA ($30),Y
    AND #$3F
    STA ($30),Y
@UNKNOWN4:
    JSR UNKNOWN_DE5C
    DEC $36
    BNE @UNKNOWN0
    JSR UNKNOWN_DE3E
@UNKNOWN5:
    LDY #$00
    LDA ($30),Y
    BEQ @UNKNOWN6
    BMI @UNKNOWN6
    JSR UNKNOWN_E0F9
    JSR UNKNOWN_DEF9
@UNKNOWN6:
    JSR UNKNOWN_DD64
    DEC $36
    BNE @UNKNOWN5
    JMP UNKNOWN_FDED

UNKNOWN_DEF9:
    LDY #$11
    LDA ($30),Y
    STA $69
    INY
    LDA ($30),Y
    STA $6A
    INY
    LDA ($30),Y
    STA $6B
    LDY #$00
    LDA ($30),Y
    BPL @UNKNOWN7
    JMP $DFAF
@UNKNOWN7:
    CLC
    LDA $18
    ADC #$60
    STA $60
    LDA $19
    ADC #$00
    STA $61
    SEC
    LDY #$04
    LDA ($30),Y
    SBC $60
    STA $60
    INY
    LDA ($30),Y
    SBC $61
    STA $61
    CLC
    LDA $1A
    ADC #$A4
    STA $64
    LDA $1B
    ADC #$00
    STA $65
    SEC
    LDY #$06
    LDA ($30),Y
    SBC $64
    STA $64
    INY
    LDA ($30),Y
    SBC $65
    STA $65
    LDY #$08
    LDA $61
    AND #$04
    ASL
    ASL
    ASL
    ASL
    ASL
    ORA ($30),Y
    STA ($30),Y
    INY
    LDA $65
    AND #$04
    ASL
    ASL
    ASL
    ASL
    ASL
    ORA ($30),Y
    STA ($30),Y
    INY
    LDA $60
    LSR $61
    ROR
    LSR $61
    ROR
    STA ($30),Y
    INY
    LDA $64
    LSR $65
    ROR
    LSR $65
    ROR
    STA ($30),Y
    LDA $3E
    BMI @UNKNOWN8
    LDY #$04
    LDA $3A
    STA ($30),Y
    INY
    LDA $3B
    STA ($30),Y
    LDY #$06
    LDA $3C
    STA ($30),Y
    INY
    LDA $3D
    STA ($30),Y
    LDY #$11
    LDA $A1
    STA ($30),Y
    INY
    LDA $A6
    STA ($30),Y
    INY
    LDA $A7
    STA ($30),Y
    LDY $A1
    LDA $36
    STA ($A6),Y
    LDY $69
    LDA $36
    EOR ($6A),Y
    BEQ @UNKNOWN9
    RTS
@UNKNOWN8:
    LDY $69
    LDA $36
@UNKNOWN9:
    STA ($6A),Y
    RTS

UNKNOWN_DFBF:
    LDY #$11
    LDA ($30),Y
    STA $A1
    INY
    LDA ($30),Y
    STA $A6
    INY
    LDA ($30),Y
    STA $A7
    LDA #$00
    LDY $A1
    STA ($A6),Y
    LDY #$00
    STA ($30),Y
    RTS

UNKNOWN_DFDA:
    LDA $761F
    LSR
    LDA #$80
    LDX #$67
    LDY #$2C
    BCC @UNKNOWN0
    LDA #$00
    LDX #$68
    LDY #$28
@UNKNOWN0:
    STA $30
    STX $31
    STY $36
    LDA #$18
    STA $E3
    LDA #$00
    STA $0300
    LDX #$08
    JSR UNKNOWN_FDE7
