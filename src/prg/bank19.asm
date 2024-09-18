.SEGMENT "PRG19"

.INCLUDE "common.asm"

    LDA $FC
    CMP #$00
    BNE UNKNOWN_19A074
    LDA $FD
    CMP #$00
    BNE UNKNOWN_19A074
    LDA $FF
    CMP #$88
    BNE UNKNOWN_19A074
    JSR UNKNOWN_FD33
    LDA #$09
    LDX #$12
    STA $0400
    STX $0401
    LDA #$07
    LDX #$23
    STX $0402
    STA $0403
    LDA #$00
    STA $0416
    STA $E6
    LDA #$80
    STA $E5
    JSR UNKNOWN_FD33
    LDX #$00
@LOCAL_1:
    LDA $0404,X
    CMP UNKNOWN_19A0C6,X
    BNE UNKNOWN_19A074
    INX
    CPX #$12
    BCC @LOCAL_1
    LDA #$10
    STA $0401
    LDA #$00
    STA $0414
    LDA #$D8
    STA $60
    LDA #$A0
    STA $61
    LDA #$43
    LDX #$05
    JSR UNKNOWN_19A079
    BNE UNKNOWN_19A074
    LDA #$69
    LDX #$08
    JSR UNKNOWN_19A079
    BNE UNKNOWN_19A074
    LDA #$53
    LDX #$05
    JSR UNKNOWN_19A079
    BNE UNKNOWN_19A074
    RTS

UNKNOWN_19A074:
    LDA #$E5
    STA $06
    RTS

UNKNOWN_19A079:
    PHA
    ASL
    ASL
    ASL
    ASL
    STA $0403
    PLA
    LSR
    LSR
    LSR
    LSR
    STA $0402
@LOCAL_1:
    LDA #$00
    STA $E6
    LDA #$80
    STA $E5
    JSR UNKNOWN_FD33
    LDY #$00
@LOCAL_2:
    LDA $0404,Y
    CMP ($60),Y
    BNE @LOCAL_3
    INY
    CPY #$10
    BCC @LOCAL_2
    CLC
    LDA #$10
    ADC $60
    STA $60
    LDA #$00
    ADC $61
    STA $61
    DEX
    BEQ @LOCAL_3
    CLC
    LDA #$10
    ADC $0403
    STA $0403
    LDA #$00
    ADC $0402
    STA $0402
    BCC @LOCAL_1
@LOCAL_3:
    RTS

UNKNOWN_19A0C6:
    .BYTE $43, $44, $45, $46, $47, $70, $69, $6A, $6B, $6C, $6D, $6E, $6F, $53, $54, $55
    .BYTE $56, $57

UNKNOWN_19A0D8:
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $38, $44, $BA, $A2, $BA, $44, $38
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $5E, $52, $5E, $42, $5E, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $F7, $94, $F7, $90, $F7, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $82, $82, $82, $82, $B2, $10
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $F7, $94, $F7, $10, $F7, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3A, $22, $3B, $0A, $3A, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $BB, $92, $92, $92, $BB, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $BB, $22, $BB, $A0, $BB, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $BB, $29, $A9, $B9, $A9, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $B8, $28, $28, $28, $38, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $EE, $44, $44, $44, $E4, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $EE, $A4, $A4, $A4, $EE, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $BC, $A4, $A4, $A4, $BC, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $10, $12, $23, $23, $42, $42, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $5D, $49, $C9, $C9, $5D, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2E, $A4, $E4, $64, $24, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $E9, $8D, $EF, $8B, $E9, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $67, $55, $55, $55, $67, $00

UNKOWNN_19A1F8:
    JSR UNKNOWN_EDDC
    JSR UNKNOWN_FDC0
    JSR UNKNOWN_FD5E
    JSR UNKNOWN_FD80

UNKNOWN_19A204:
    JSR UNKNOWN_FD33
    LDA #$00
    STA $EC
    STA $FD
    STA $FC
    LDA #$FF
    JSR UNKNOWN_FD28

UNKNOWN_19A214:
    LDA #$7E
    LDX #$04
    JSR BANK_SWAP
    LDA #$7F
    LDX #$05
    JSR BANK_SWAP
    LDA #$F4
    STA $74
    LDA #$06
    STA $73
    LDA #$02
    STA $76
    LDA #$02
    STA $77
    LDA #$00
    STA $70
    STA $71
@LOCAL_1:
    JSR $CAA2
    JSR $C6DB
    CMP #$00
    BEQ @LOCAL_2
    LDY #$00
    LDA ($74),Y
    CMP #$00
    BNE @LOCAL_1
@LOCAL_2:
    JSR UNKNOWN_FD33
    LDX #$1F
@LOCAL_3:
    LDA UNKNOWN_19A26B,X
    STA $0500,X
    DEX
    BPL @LOCAL_3
    LDA #$04
    STA $0400
    LDA #$00
    STA $0401
    STA $E6
    LDA #$80
    STA $E5
@LOCAL_4:
    JMP @LOCAL_4

UNKNOWN_19A26B:
    .BYTE $0F, $00, $30, $10, $0F, $00, $30, $10, $0F, $00, $30, $10, $0F, $00, $30, $10
    .BYTE $0F, $0F, $00, $30, $0F, $0F, $16, $37, $0F, $0F, $24, $37, $0F, $0F, $12, $37

UNKNOWN_19A28B:
    LDA #$00
    LDX #$B8
    STA $60
    STX $61
    LDA #$00
    LDX #$60
    STA $64
    STX $65
    JSR UNKNOWN_FDE7
    LDX #$08
@LOCAL_1:
    LDY #$00
@LOCAL_2:
    LDA ($60),Y
    STA ($64),Y
    INY
    BNE @LOCAL_2
    INC $61
    INC $65
    DEX
    BNE @LOCAL_1
    JMP UNKNOWN_FDED

UNKNOWN_19A2B3:
    CLC
    LDA $18
    ADC #$40
    AND #$80
    STA $AA
    LDA $19
    ADC #$00
    STA $AB
    LDA $1A
    STA $AC
    LDA $1B
    STA $AD
    JSR $D55D
    LDA $18
    ASL
    ASL
    ROL
    AND #$01
    TAX
    LDY $A1
    LDA #$10
    STA $7A
    JSR UNKNOWN_FDE7
@LOCAL_1:
    TYA
    ORA #$F0
    STA $7B
@LOCAL_2:
    LDA ($A4),Y
    STA $6600,X
    INY
    INX
    INC $7B
    BNE @LOCAL_2
    TYA
    SEC
    SBC #$10
    TAY
    LDA $A5
    EOR #$01
    STA $A5
    LDA $A1
    AND #$0F
    BEQ @LOCAL_4
    STA $7B
@LOCAL_3:
    LDA ($A4),Y
    STA $6600,X
    INY
    INX
    DEC $7B
    BNE @LOCAL_3
@LOCAL_4:
    TYA
    CLC
    ADC #$10
    TAY
    LDA $A5
    EOR #$01
    STA $A5
    DEC $7A
    BNE @LOCAL_1
    JMP UNKNOWN_FDED

UNKNOWN_19A31E:
    SEC
    ROR $E2
    LDA $76
    ASL
    ASL
    ASL
    STA $78
    CLC
    LDA $76
    ADC $7E
    ASL
    ASL
    ASL
    SEC
    SBC #$04
    STA $79
    LDA $77
    CLC
    AND #$1E
    ASL
    ASL
    ASL
    STA $7C
    CLC
    ADC #$0C
    STA $7D
    LDX #$00
@LOCAL_1:
    LDA $0200,X
    CMP $7D
    BCS @LOCAL_2
    ADC #$04
    CMP $7C
    BCC @LOCAL_2
    LDA $0203,X
    CMP $79
    BCS @LOCAL_2
    ADC #$04
    CMP $78
    BCC @LOCAL_2
    LDA #$F0
    STA $0200,X
@LOCAL_2:
    INX
    INX
    INX
    INX
    BNE @LOCAL_1
    ASL $E2
    RTS

UNKNOWN_19A36E:
    JSR UNKNOWN_C3ED
    LDY #$00
@LOCAL_1:
    TYA
    PHA
    JSR UNKNOWN_19A3CD
    PLA
    TAY
    INY
    CPY #$04
    BCC @LOCAL_1
    LDA #$01
    STA $D6
    LDA #$FA
    LDX #$A3
    STA $80
    STX $81
    JSR UNKNOWN_EF34
@LOCAL_2:
    BIT $83
    BPL @LOCAL_4
    LDA $82
    TAX
    LSR
    LSR
    LSR
    TAY
    JSR UNKNOWN_FDE7
    LDA UNKNOWN_19A408,X
    STA $743C,Y
    CPY #$03
    BNE @LOCAL_3
    TXA
    AND #$07
    TAX
    LDA UNKNOWN_19A428,X
    STA $7418
@LOCAL_3:
    JSR UNKNOWN_FDED
    LDA $76
    PHA
    LDA $77
    PHA
    JSR UNKNOWN_19A3CD
    PLA
    STA $77
    PLA
    STA $76
    JSR UNKNOWN_EF7C
    JMP @LOCAL_2
@LOCAL_4:
    LDA #$00
    STA $D6
    RTS

UNKNOWN_19A3CD:
    TYA
    ASL
    ASL
    ADC #$0D
    STA $77
    LDA $743C,Y
    STA $60
    LDA UNKNOWN_19A404,Y
    STA $61
    LDX #$05
@LOCAL_1:
    STX $76
    LDA #$94
    ASL $60
    ADC #$00
    ASL $61
    BCC @LOCAL_2
    JSR UNKNOWN_C68B
@LOCAL_2:
    CLC
    LDA $76
    ADC #$04
    TAX
    CPX #$19
    BCC @LOCAL_1
    RTS

UNKNOWN_19A3FA:
    .BYTE $08, $04, $04, $04, $C0, $3A, $04, $0D, $08, $A4

UNKNOWN_19A404:
    .BYTE $A8, $A8, $A8, $F8

UNKNOWN_19A408:
    .BYTE $80, $00, $20, $00, $08, $00, $00, $00, $80, $00, $20, $00, $08, $00
    .BYTE $00, $00, $80, $00, $20, $00, $08, $00, $00, $00, $80, $40, $20, $10
    .BYTE $08, $00, $00, $00

UNKNOWN_19A428:
    .BYTE $41, $31, $21, $11, $01

UNKNOWN_19A42D:
    LDA $F6
    PHA
    LDX #$00
@LOCAL_1:
    STX $60
    LDA UNKNOWN_19A48F,X
    BMI @LOCAL_4
    LDX #$06
    JSR BANK_SWAP
    LDA #$00
    LDX #$80
    STA $64
    STX $65
    LDA #$00
    STA $61
    STA $62
    LDX #$20
@LOCAL_2:
    LDY #$00
@LOCAL_3:
    CLC
    LDA ($64),Y
    ADC $61
    STA $61
    LDA #$00
    ADC $62
    STA $62
    INY
    BNE @LOCAL_3
    INC $65
    DEX
    BNE @LOCAL_2
    LDX $60
    INX
    LDA UNKNOWN_19A48F,X
    CMP $62
    BNE @LOCAL_5
    INX
    LDA UNKNOWN_19A48F,X
    CMP $61
    BNE @LOCAL_5
    INX
    BNE @LOCAL_1
@LOCAL_4:
    PLA
    LDX #$06
    JMP BANK_SWAP
@LOCAL_5:
    JSR UNKNOWN_EDDC
    JSR UNKNOWN_FDC0
    JSR UNKNOWN_FD5E
    JSR UNKNOWN_FD80
    JMP UNKNOWN_19A204

UNKNOWN_19A48F:
    .BYTE $13, $2C, $95, $14, $0B, $82, $17, $ED, $EB, $19, $C7, $A8, $1C, $AC, $D5, $1E
    .BYTE $1C, $CF, $1F, $36, $FA, $FF, $57, $38

UNKNOWN_19A4A7:
    LDA $7419
    BEQ @LOCAL_1
    LDY $48
    LDX UNKNOWN_19A504,Y
    LDA UNKNOWN_19A4F2,X
    CMP $7450
    BCS @LOCAL_1
    JSR UNKNOWN_FDE7
    DEC $7419
    JSR UNKNOWN_FDED
    LDA #$00
    STA $48
    LDA $7419
    BEQ @LOCAL_2
@LOCAL_1:
    RTS
@LOCAL_2:
    LDA #$D1
    STA $74
    LDA #$06
    STA $73
    LDA #$13
    LDX #$19
    LDY #$AD
    JSR UNKNOWN_FDF3
    LDA #$13
    LDX #$2F
    LDY #$AB
    JSR UNKNOWN_FDF3
    LDA #$13
    LDX #$F3
    LDY #$C3
    JSR UNKNOWN_FDF3
    JMP UNKNOWN_CEE1

UNKNOWN_19A4F2:
    .BYTE $00, $03, $05, $07, $0A, $0C, $10, $12, $13, $15, $17, $1A, $1C, $1E, $23, $24
    .BYTE $25, $FF

UNKNOWN_19A504:
    .BYTE $00, $01, $03, $01, $03, $01, $03, $03, $01, $03, $01, $01, $07, $01, $01, $02
    .BYTE $11, $11, $11, $11, $02, $02, $03, $03, $11, $03, $03, $03, $03, $03, $03, $11
    .BYTE $03, $11, $03, $03, $11, $03, $06, $11, $06, $06, $11, $08, $04, $11, $11, $11
    .BYTE $04, $04, $04, $04, $05, $05, $05, $04, $05, $05, $04, $04, $04, $05, $05, $11
    .BYTE $11, $11, $11, $11, $11, $11, $11, $11, $06, $08, $08, $11, $11, $11, $07, $07
    .BYTE $07, $07, $07, $11, $06, $06, $11, $11, $06, $11, $02, $09, $11, $11, $11, $09
    .BYTE $09, $11, $09, $09, $11, $11, $09, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A, $11
    .BYTE $11, $11, $0B, $0B, $0B, $0B, $0B, $0D, $0D, $0B, $0B, $0B, $0B, $0B, $11, $11
    .BYTE $11, $0B, $11, $11, $11, $11, $11, $11, $11, $0B, $0B, $0C, $0C, $0C, $0C, $0C
    .BYTE $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11, $11
    .BYTE $11, $11, $11, $11, $11, $0E, $0E, $0E, $0E, $0E, $0F, $0F, $0F, $0F, $10, $10
    .BYTE $10, $10, $10, $10, $10, $10, $10, $10, $10, $00, $00, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00

UNKNOWN_19A5CC:
    JSR UNKNOWN_19A81A
    LDA #$00
    STA $2C
    LDA #$13
    LDX #$F3
    LDY #$C3
    JSR UNKNOWN_FDF3
    LDA #$6A
    LDX #$01
    JSR BANK_SWAP
    JSR UNKNOWN_FD33
    LDX #$DF
@LOCAL_1:
    LDA $0300,X
    STA $0320,X
    DEX
    CPX #$FF
    BNE @LOCAL_1
    LDX #$1F
@LOCAL_2:
    LDA UNKNOWN_19A6A1,X
    STA $0300,X
    DEX
    BPL @LOCAL_2
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
    LSR $61
    ROR $60
    LSR $61
    ROR $60
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
    LSR $65
    ROR $64
    LSR $65
    ROR $64
    LDA $60
    STA $0302
    STA $030A
    STA $0312
    STA $031A
    LDA $64
    STA $0303
    STA $030B
    STA $0313
    STA $031B
    LDA #$5A
    STA $E5
    LDA #$30
    JSR UNKNOWN_EDFE
    JSR UNKNOWN_FD33
    LDA #$00
    STA $0304
    STA $0305
    STA $0308
    STA $0310
    STA $0318
    LDA $60
    STA $0302
    LDA $64
    STA $0303
    LDA #$FC
    STA $0306
    LDA #$99
    STA $0307
    LDA #$01
    STA $E5
    JSR UNKNOWN_EEB0
    LDX #$3C
    JMP UNKNOWN_FD3A

UNKNOWN_19A6A1:
    .BYTE $04, $00, $32, $32, $01, $01, $F8, $99, $04, $00, $42, $32, $01, $FF, $F8, $99
    .BYTE $04, $00, $32, $42, $FF, $01, $F8, $99, $04, $00, $42, $42, $FF, $FF, $F8, $99

UNKNOWN_19A6C1:
    RTS

UNKNOWN_19A6C2:
    JSR UNKNOWN_19A42D
    JSR UNKNOWN_FDC0
    LDA #$FF
    JSR UNKNOWN_FD28
    LDX #$3C
    JSR UNKNOWN_FD3A
    LDA #$23
    STA $07F5
    LDA #$F8
    LDX #$FF
    JSR UNKNOWN_19A75E
    LDA #$10
    LDX #$00
    JSR UNKNOWN_19A75E
    JSR UNKNOWN_19A7AD
    JSR UNKNOWN_19A7AD
    JSR UNKNOWN_19A71F
    JSR UNKNOWN_19A723
    JSR UNKNOWN_19A71F
    JSR UNKNOWN_19A723
    JSR UNKNOWN_19A7AD
    JSR UNKNOWN_19A727
    JSR UNKNOWN_19A72B
    JSR UNKNOWN_19A727
    JSR UNKNOWN_19A72B
    JSR UNKNOWN_FD33
    LDX #$60
    JSR UNKNOWN_FD3A
    JSR UNKNOWN_19A71F
    JSR UNKNOWN_19A723
    JSR UNKNOWN_19A71F
    JSR UNKNOWN_19A7B0
    LDX #$78
    JMP UNKNOWN_FD3A

UNKNOWN_19A71F:
    LDY #$00
    BPL UNKNOWN_19A72D

UNKNOWN_19A723:
    LDY #$08
    BPL UNKNOWN_19A72D

UNKNOWN_19A727:
    LDY #$10
    BPL UNKNOWN_19A72D

UNKNOWN_19A72B:
    LDY #$18

UNKNOWN_19A72D:
    LDA UNKNOWN_19A73E,Y
    LDX UNKNOWN_19A73E + 1,Y
    JSR UNKNOWN_19A7B4
    INY
    INY
    TYA
    AND #$07
    BNE UNKNOWN_19A72D
    RTS

UNKNOWN_19A73E:
    .BYTE $01, $00, $FF, $00, $01, $00, $FF, $00, $01, $FF, $FF, $00, $01, $01, $FF, $00
    .BYTE $00, $FF, $00, $FF, $00, $FF, $00, $FF, $01, $01, $FF, $01, $01, $01, $FF, $01

UNKNOWN_19A75E:
    STA $60
    STX $61
    LDX #$08
@LOCAL_1:
    JSR UNKNOWN_19A77A
    LDA #$30
    STA $E5
    JSR UNKNOWN_19A7A7
    CPX #$20
    BCC @LOCAL_1
    JSR UNKNOWN_FD33
    LDA #$30
    STA $E5
    RTS

UNKNOWN_19A77A:
    JSR UNKNOWN_FD33
    CLC
    LDA $60
    ADC $0306,X
    STA $0306,X
    LDA $61
    ADC $0307,X
    STA $0307,X
    RTS

UNKNOWN_19A78F:
    CPX #$20
    BCS UNKNOWN_19A79E
    LDA $64
    STA $0304,X
    LDA $65
    STA $0305,X
    RTS

UNKNOWN_19A79E:
    LDA #$00
    STA $0304,X
    STA $0305,X
    RTS

UNKNOWN_19A7A7:
    CLC
    TXA
    ADC #$08
    TAX
    RTS

UNKNOWN_19A7AD:
    JSR UNKNOWN_19A7B0

UNKNOWN_19A7B0:
    LDA #$00
    LDX #$00

UNKNOWN_19A7B4:
    STA $64
    STX $65
    JSR UNKNOWN_19A7BB

UNKNOWN_19A7BB:
    LDA #$04
    LDX #$00
    STA $60
    STX $61
    LDX #$08
@LOCAL_1:
    JSR UNKNOWN_19A77A
    JSR UNKNOWN_19A78F
    JSR UNKNOWN_19A7A7
    BCC @LOCAL_1
    LDA #$02
    STA $E5
    LDX #$08
@LOCAL_2:
    JSR UNKNOWN_FD33
    JSR UNKNOWN_19A79E
    JSR UNKNOWN_19A7A7
    BCC @LOCAL_2
    LDA #$16
    STA $E5
    LDA #$FC
    LDX #$FF
    STA $60
    STX $61
    LDX #$08
@LOCAL_3:
    JSR UNKNOWN_19A77A
    JSR UNKNOWN_19A7A7
    BCC @LOCAL_3
    LDA #$18
    STA $E5
    RTS

UNKNOWN_19A7FC:
    LDY $53
    SEC
    LDA $0605,Y
    SBC $4E
    STA $0605,Y
    LDA $0606,Y
    SBC $4F
    STA $0606,Y
    BCS @LOCAL_1
    LDA #$00
    STA $0605,Y
    STA $0606,Y
@LOCAL_1:
    RTS

UNKNOWN_19A81A:
    LDA $F6
    PHA
    LDX #$00
@LOCAL_1:
    STX $60
    LDA UNKNOWN_19A88C,X
    BMI @LOCAL_4
    LDX #$06
    JSR BANK_SWAP
    LDA #$00
    LDX #$80
    STA $64
    STX $65
    LDA #$00
    STA $61
    STA $62
    LDX #$20
@LOCAL_2:
    LDY #$00
@LOCAL_3:
    CLC
    LDA ($64),Y
    ADC $61
    STA $61
    LDA #$00
    ADC $62
    STA $62
    INY
    BNE @LOCAL_3
    INC $65
    DEX
    BNE @LOCAL_2
    LDX $60
    INX
    LDA UNKNOWN_19A88C,X
    CMP $62
    BNE @LOCAL_5
    INX
    LDA UNKNOWN_19A88C,X
    CMP $61
    BNE @LOCAL_5
    INX
    BNE @LOCAL_1
@LOCAL_4:
    PLA
    LDX #$06
    JMP BANK_SWAP
@LOCAL_5:
    JSR UNKNOWN_EDDC
    JSR UNKNOWN_FDC0
    JSR UNKNOWN_FD5E
    JSR UNKNOWN_FD80
    JSR UNKNOWN_FD33
    LDA #$00
    STA $EC
    STA $FD
    STA $FC
    LDA #$FF
    JSR UNKNOWN_FD28
    JMP UNKNOWN_19A214

UNKNOWN_19A88C:
    .BYTE $13, $2C, $95, $14, $0B, $82, $17, $ED, $EB, $19, $C7, $A8, $1C, $AC, $D5, $1E
    .BYTE $1C, $CF, $1F, $36, $FA, $FF, $57, $38

.ALIGN 4096
.RES 2048

; This is data and text for load/continue menus and introduction.
UNKNOWN_19B800:
    .BYTE $A8, $F0, $02, $A0, $04, $B9, $22, $62, $9D, $84, $05, $B9, $23, $62, $9D, $85
    .BYTE $05, $B9, $24, $62, $9D, $86, $05, $B9, $25, $62, $9D, $87, $05, $60, $BD, $73
    .BYTE $60, $85, $74, $BD, $74, $60, $85, $75, $60, $BD, $85, $60, $85, $80, $BD, $86
    .BYTE $60, $85, $81, $60, $A9, $FF, $85, $D6, $A2, $06, $A0, $05, $86, $76, $84, $77
    .BYTE $60, $48, $A9, $00, $A2, $74, $85, $30, $86, $31, $A9, $00, $A2, $BE, $85, $32
    .BYTE $86, $33, $A2, $02, $A0, $00, $B1, $32, $91, $30, $C8, $D0, $F9, $E6, $31, $E6
    .BYTE $33, $CA, $D0, $F2, $A9, $00, $91, $30, $C8, $D0, $FB, $68, $0D, $02, $74, $8D
    .BYTE $02, $74, $60, $1A, $61, $92, $61, $38, $61, $AA, $61, $56, $61, $C2, $61, $95
    .BYTE $60, $AC, $60, $FA, $60, $F0, $61, $F0, $61, $F0, $61, $FA, $61, $F0, $61, $04
    .BYTE $62, $0E, $62, $18, $62, $20, $04, $14, $22, $A0, $18, $01, $22, $A0, $18, $01
    .BYTE $22, $A0, $18, $01, $22, $A0, $18, $00, $22, $A0, $18, $00, $20, $06, $14, $DB
    .BYTE $22, $DC, $12, $DD, $01, $24, $A0, $A6, $23, $78, $74, $00, $08, $CC, $F6, $EC
    .BYTE $23, $50, $74, $01, $02, $A6, $A0, $A0, $25, $01, $24, $A0, $F7, $E9, $EC, $EC
    .BYTE $A0, $F6, $E1, $EE, $E9, $F3, $E8, $AE, $A0, $CF, $CB, $A2, $A0, $25, $01, $24
    .BYTE $A0, $A0, $A0, $A0, $A0, $D9, $E5, $F3, $A0, $A0, $CE, $EF, $A0, $A0, $A0, $A0
    .BYTE $A0, $A0, $25, $00, $FB, $22, $FC, $12, $FD, $00, $20, $08, $15, $DB, $22, $DC
    .BYTE $0E, $DD, $01, $24, $A0, $A0, $A0, $D4, $EF, $A0, $F7, $E8, $E9, $E3, $E8, $A2
    .BYTE $A0, $A0, $25, $00, $FB, $22, $FC, $0E, $FD, $00, $20, $03, $01, $A0, $01, $A0
    .BYTE $DB, $DC, $FE, $23, $78, $77, $00, $08, $CC, $F6, $EC, $23, $50, $77, $01, $02
    .BYTE $22, $DC, $07, $DD, $01, $04, $71, $61, $20, $03, $07, $A0, $01, $A0, $DB, $DC
    .BYTE $FE, $23, $78, $7A, $00, $08, $CC, $F6, $EC, $23, $50, $7A, $01, $02, $22, $DC
    .BYTE $07, $DD, $01, $04, $71, $61, $20, $03, $0D, $A0, $01, $A0, $DB, $DC, $FE, $23
    .BYTE $78, $7D, $00, $08, $CC, $F6, $EC, $23, $50, $7D, $01, $02, $22, $DC, $07, $DD
    .BYTE $01, $A0, $24, $A0, $C3, $EF, $EE, $F4, $E9, $EE, $F5, $E5, $A0, $A0, $C3, $EF
    .BYTE $F0, $F9, $A0, $C5, $F2, $E1, $F3, $E5, $A0, $25, $00, $A0, $FB, $22, $FC, $16
    .BYTE $FD, $00, $20, $03, $01, $A0, $01, $A0, $DB, $DC, $FE, $C7, $C1, $CD, $C5, $A8
    .BYTE $B1, $A9, $22, $DC, $0D, $DD, $01, $04, $D7, $61, $20, $03, $07, $A0, $01, $A0
    .BYTE $DB, $DC, $FE, $C7, $C1, $CD, $C5, $A8, $B2, $A9, $22, $DC, $0D, $DD, $01, $04
    .BYTE $D7, $61, $20, $03, $0D, $A0, $01, $A0, $DB, $DC, $FE, $C7, $C1, $CD, $C5, $A8
    .BYTE $B3, $A9, $22, $DC, $0D, $DD, $01, $A0, $24, $22, $A0, $06, $D3, $F4, $E1, $F2
    .BYTE $F4, $A0, $F5, $F0, $22, $A0, $08, $25, $00, $A0, $FB, $22, $FC, $16, $FD, $00
    .BYTE $01, $03, $00, $06, $C0, $3A, $03, $04, $2C, $62, $01, $03, $00, $06, $C0, $3A
    .BYTE $03, $04, $2F, $62, $01, $03, $00, $06, $C0, $3A, $03, $04, $32, $62, $04, $03
    .BYTE $05, $06, $80, $3A, $05, $05, $84, $05, $02, $01, $05, $00, $80, $3A, $0B, $1A
    .BYTE $2A, $62, $80, $00, $81, $82, $00, $83, $00, $00, $01, $02, $00, $03, $05, $01
    .BYTE $00, $05, $01, $03, $00, $60, $00, $7C, $7D, $7E, $7F, $0F, $0F, $30, $30, $0F
    .BYTE $3A, $10, $20, $0F, $3A, $25, $1A, $0F, $3A, $30, $12, $0F, $0F, $00, $30, $0F
    .BYTE $0F, $16, $37, $0F, $0F, $24, $37, $0F, $0F, $12, $37, $A9, $04, $99, $00, $03
    .BYTE $A5, $64, $99, $01, $03, $A5, $62, $99, $02, $03, $A5, $63, $99, $03, $03, $A9
    .BYTE $00, $99, $04, $03, $99, $05, $03, $A5, $60, $99, $06, $03, $A5, $61, $99, $07
    .BYTE $03, $A9, $01, $85, $E5, $60, $A9, $50, $85, $62, $A9, $08, $85, $63, $A9, $00
    .BYTE $85, $64, $A9, $10, $85, $60, $A9, $80, $85, $61, $60, $18, $A5, $60, $69, $20
    .BYTE $85, $60, $A5, $61, $69, $00, $85, $61, $18, $A5, $63, $69, $18, $85, $63, $18
    .BYTE $98, $69, $08, $A8, $60, $18, $A5, $64, $69, $10, $85, $64, $A5, $65, $69, $00
    .BYTE $85, $65, $18, $A5, $63, $69, $02, $85, $63, $60, $10, $80, $03, $63, $78, $74
    .BYTE $30, $80, $1C, $63, $B8, $74, $50, $80, $36, $63, $F8, $74, $70, $80, $4D, $63
    .BYTE $38, $75, $00, $00, $63, $63, $89, $76, $10, $06, $01, $02, $D0, $01, $08, $0E
    .BYTE $02, $01, $04, $00, $80, $3A, $0C, $18, $FA, $62, $01, $01, $01, $08, $40, $23
    .BYTE $C0, $FF, $00, $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F4, $E8, $E9, $F3, $01
    .BYTE $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A2, $00, $D7, $E8, $E1, $F4
    .BYTE $A0, $E9, $F3, $A0, $F4, $E8, $E9, $F3, $01, $E7, $E9, $F2, $EC, $A7, $F3, $A0
    .BYTE $EE, $E1, $ED, $E5, $A2, $00, $D4, $E8, $E9, $F3, $A0, $EF, $F4, $E8, $E5, $F2
    .BYTE $01, $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A2, $00, $D4, $E8, $E9
    .BYTE $F3, $A0, $EC, $E1, $F3, $F4, $01, $E2, $EF, $F9, $A7, $F3, $A0, $EE, $E1, $ED
    .BYTE $E5, $A2, $00, $D7, $E8, $E1, $F4, $A0, $E9, $F3, $A0, $F9, $EF, $F5, $F2, $01
    .BYTE $E6, $E1, $F6, $EF, $F2, $E9, $F4, $E5, $A0, $E6, $EF, $EF, $E4, $A2, $00, $D0
    .BYTE $EC, $E5, $E1, $F3, $E5, $A0, $E3, $E8, $E1, $EE, $E7, $E5, $01, $F4, $E8, $E9
    .BYTE $F3, $A0, $EE, $E1, $ED, $E5, $AE, $00, $C1, $A0, $E3, $E8, $E1, $F2, $E1, $E3
    .BYTE $F4, $E5, $F2, $A0, $E9, $EE, $A0, $01, $F4, $E8, $E9, $F3, $A0, $E7, $E1, $ED
    .BYTE $E5, $A0, $E8, $E1, $F3, $A0, $A0, $01, $F4, $E8, $E1, $F4, $A0, $EE, $E1, $ED
    .BYTE $E5, $AE, $A0, $D4, $F2, $F9, $A0, $01, $E1, $E7, $E1, $E9, $EE, $AC, $A0, $E1
    .BYTE $EE, $E4, $A0, $F5, $F3, $E5, $A0, $01, $EF, $EE, $EC, $F9, $A0, $E3, $E1, $F0
    .BYTE $E9, $F4, $E1, $EC, $A0, $A0, $A0, $01, $EC, $E5, $F4, $F4, $E5, $F2, $F3, $AE
    .BYTE $A0, $A0, $A0, $A0, $A0, $A0, $A0, $00, $CD, $E1, $F2, $F9, $A2, $01, $D3, $F5
    .BYTE $FA, $F9, $A2, $01, $C7, $E5, $EF, $F2, $E7, $E5, $A2, $01, $CD, $E1, $F2, $E9
    .BYTE $E1, $A2, $01, $CD, $E9, $ED, $ED, $E9, $E5, $A2, $01, $CD, $E9, $EE, $EE, $E9
    .BYTE $E5, $A2, $01, $D0, $E9, $F0, $F0, $E9, $A2, $01, $C4, $F5, $EE, $E3, $E1, $EE
    .BYTE $A2, $01, $CC, $E1, $F5, $F2, $E1, $A2, $01, $C7, $E9, $E5, $E7, $F5, $E5, $A2
    .BYTE $01, $C1, $E2, $E2, $EF, $F4, $F4, $A2, $01, $CE, $E1, $EE, $E3, $F9, $A2, $01
    .BYTE $D5, $EC, $EC, $F2, $E9, $E3, $E8, $01, $D7, $E1, $EC, $EC, $F9, $A2, $01, $CB
    .BYTE $E5, $EC, $EC, $F9, $A2, $01, $CA, $F5, $E1, $EE, $E1, $A2, $01, $A0, $01, $00
    .BYTE $C1, $C2, $C3, $C4, $C5, $C6, $C7, $A0, $C8, $C9, $CA, $CB, $CC, $CD, $CE, $00
    .BYTE $CF, $D0, $D1, $D2, $D3, $D4, $D5, $A0, $D6, $D7, $D8, $D9, $DA, $AE, $A7, $00
    .BYTE $E1, $E2, $E3, $E4, $E5, $E6, $E7, $A0, $E8, $E9, $EA, $EB, $EC, $ED, $EE, $00
    .BYTE $EF, $F0, $F1, $F2, $F3, $F4, $F5, $A0, $F6, $F7, $F8, $F9, $FA, $AD, $AA, $00
    .BYTE $00, $00, $A1, $00, $00, $00, $00, $00, $00, $A2, $00, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00, $A3, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    .BYTE $C9, $EE, $A0, $F4, $E8, $E5, $A0, $E5, $E1, $F2, $EC, $F9, $A0, $B1, $B9, $B0
    .BYTE $B0, $A7, $F3, $AC, $A0, $E1, $A0, $E4, $E1, $F2, $EB, $01, $F3, $E8, $E1, $E4
    .BYTE $EF, $F7, $A0, $E3, $EF, $F6, $E5, $F2, $E5, $E4, $A0, $E1, $A0, $F3, $ED, $E1
    .BYTE $EC, $EC, $01, $E3, $EF, $F5, $EE, $F4, $F2, $F9, $A0, $F4, $EF, $F7, $EE, $A0
    .BYTE $E9, $EE, $A0, $F2, $F5, $F2, $E1, $EC, $01, $C1, $ED, $E5, $F2, $E9, $E3, $E1
    .BYTE $AE, $A0, $A0, $C1, $F4, $A0, $F4, $E8, $E1, $F4, $A0, $F4, $E9, $ED, $E5, $AC
    .BYTE $A0, $E1, $01, $F9, $EF, $F5, $EE, $E7, $A0, $ED, $E1, $F2, $F2, $E9, $E5, $E4
    .BYTE $A0, $E3, $EF, $F5, $F0, $EC, $E5, $01, $F6, $E1, $EE, $E9, $F3, $E8, $E5, $E4
    .BYTE $A0, $ED, $F9, $F3, $F4, $E5, $F2, $E9, $EF, $F5, $F3, $EC, $F9, $A0, $E6, $F2
    .BYTE $EF, $ED, $01, $F4, $E8, $E5, $E9, $F2, $A0, $E8, $EF, $ED, $E5, $AE, $01, $A0
    .BYTE $01, $D4, $E8, $E5, $A0, $ED, $E1, $EE, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A0
    .BYTE $F7, $E1, $F3, $A0, $C7, $E5, $EF, $F2, $E7, $E5, $AC, $01, $F4, $E8, $E5, $A0
    .BYTE $F7, $EF, $ED, $E1, $EE, $A7, $F3, $A0, $EE, $E1, $ED, $E5, $A0, $F7, $E1, $F3
    .BYTE $A0, $CD, $E1, $F2, $E9, $E1, $AE, $01, $A0, $01, $D4, $F7, $EF, $A0, $F9, $E5
    .BYTE $E1, $F2, $F3, $A0, $EC, $E1, $F4, $E5, $F2, $AC, $A0, $E1, $F3, $A0, $F3, $F5
    .BYTE $E4, $E4, $E5, $EE, $EC, $F9, $01, $E1, $F3, $A0, $E8, $E5, $A0, $EC, $E5, $E6
    .BYTE $F4, $AC, $A0, $C7, $E5, $EF, $F2, $E7, $E5, $A0, $F2, $E5, $F4, $F5, $F2, $EE
    .BYTE $E5, $E4, $AE, $01, $C8, $E5, $A0, $EE, $E5, $F6, $E5, $F2, $A0, $F4, $EF, $EC
    .BYTE $E4, $A0, $E1, $EE, $F9, $EF, $EE, $E5, $A0, $F7, $E8, $E5, $F2, $E5, $01, $E8
    .BYTE $E5, $A0, $E8, $E1, $E4, $A0, $E2, $E5, $E5, $EE, $A0, $EF, $F2, $A0, $F7, $E8
    .BYTE $E1, $F4, $A0, $E8, $E5, $A0, $E8, $E1, $E4, $01, $E4, $EF, $EE, $E5, $AE, $A0
    .BYTE $A0, $C2, $F5, $F4, $AC, $A0, $E8, $E5, $A0, $E2, $E5, $E7, $E1, $EE, $A0, $E1
    .BYTE $EE, $A0, $EF, $E4, $E4, $01, $F3, $F4, $F5, $E4, $F9, $AC, $A0, $E1, $EC, $EC
    .BYTE $A0, $E2, $F9, $A0, $E8, $E9, $ED, $F3, $E5, $EC, $E6, $AE, $01, $A0, $01, $C1
    .BYTE $F3, $A0, $E6, $EF, $F2, $A0, $CD, $E1, $F2, $E9, $E1, $AC, $A0, $E8, $E9, $F3
    .BYTE $A0, $F7, $E9, $E6, $E5, $AE, $AE, $AE, $01, $D3, $E8, $E5, $A0, $EE, $E5, $F6
    .BYTE $E5, $F2, $A0, $F2, $E5, $F4, $F5, $F2, $EE, $E5, $E4, $AE, $00, $B8, $B0, $A0
    .BYTE $F9, $E5, $E1, $F2, $F3, $A0, $E8, $E1, $F6, $E5, $A0, $F0, $E1, $F3, $F3, $E5
    .BYTE $E4, $01, $A0, $01, $F3, $E9, $EE, $E3, $E5, $A0, $F4, $E8, $E5, $EE, $AE, $00
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
