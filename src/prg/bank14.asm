.SEGMENT "PRG14"

.INCLUDE "common.asm"

.INCBIN "bin/14.bin"

UNKNOWN_9400:
    JSR UNKNOWN_CED3
    JSR UNKNOWN_9D60
UNKNOWN_9406:
    JSR UNKNOWN_FD5E
    JSR UNKNOWN_FD80
    JSR UNKNOWN_CE02
    JSR UNKNOWN_FD33
    LDA #$19
    LDX #$8A
    LDY #$A2
    JSR UNKNOWN_FDF3
    JSR UNKNOWN_EEC8
    LDA #$35
    LDX #$62
    JSR UNKNOWN_CEE8
    LDA #$3B
    LDX #$62
    JSR UNKNOWN_EE9D
UNKNOWN_942C:
    LDX #$0C
    JSR UNKNOWN_9505
    JSR UNKNOWN_94D7
    JSR UNKNOWN_950E
    LDA #$00
    STA $D6
    LDY $82
    LDA ($84),Y
    ASL
    TAX
    LDA UNKNOWN_944D + 1,X
    PHA
    LDA UNKNOWN_944D,X
    PHA
    TYA
    LSR
    LSR
    RTS

UNKNOWN_944D: ;-1 because we're using RTS to jump
    .WORD $BE88 - 1
    .WORD UNKNOWN_948C - 1
    .WORD UNKNOWN_9472 - 1
    .WORD UNKNOWN_9455 - 1

UNKNOWN_9455:
    PHA
    JSR UNKNOWN_FDE7
    LDA #$18
    LDX #$07
    JSR BANK_SWAP
    PLA
    JSR $6041
    JSR UNKNOWN_FDED
    JSR UNKNOWN_CED3
    JSR UNKNOWN_9A4D
    BCS UNKNOWN_9406
    JMP $BE57

UNKNOWN_9472:
    JSR UNKNOWN_94C0
    BNE @UNKNOWN1
    LDA $7402
    JSR $BEBB
    JSR UNKNOWN_FDE7
    LDY #$03
    LDA #$00
    STA ($68),Y
    JSR UNKNOWN_FDED
@UNKNOWN1:
    JMP UNKNOWN_942C

UNKNOWN_948C:
    STA $36
    LDX #$10
    JSR UNKNOWN_9505
    LDA $36
    SEC
    ROL
    ASL
    TAX
    JSR UNKNOWN_950B
    BIT $83
    BVS @UNKNOWN3
    LDA $82
    STA $37
    JSR UNKNOWN_94C0
    BCS @UNKNOWN2
    BNE @UNKNOWN3
@UNKNOWN2:
    LDA $36
    JSR $BE88
    JSR UNKNOWN_FDE7
    LDA $37
    ORA #$B0
    STA $7402
    JSR $BE57
@UNKNOWN3:
    JMP UNKNOWN_942C

UNKNOWN_94C0:
    JSR $BE88
    SEC
    BNE @UNKNOWN4
    LDX #$0E
    JSR $601E
    JSR UNKNOWN_C67A
    LDX #$0E
    JSR UNKNOWN_950B
    CLC
    LDA $82
@UNKNOWN4:
    RTS

UNKNOWN_94D7:
    LDA #$00
@UNKNOWN0:
    STA $37
    LSR
    LSR
    JSR $BE88
    BEQ @UNKNOWN1
    LDA #$04
@UNKNOWN1:
    STA $36
    LDX $37
    JSR $6000
    LDA $36
    LSR
    ADC $37
    TAX
    JSR UNKNOWN_9505
    CLC
    LDA $37
    ADC #$04
    CMP #$0C
    BCC @UNKNOWN0
    LDX #$0C
    JSR $6029
    JMP $6034

UNKNOWN_9505:
    JSR $601E
    JMP UNKNOWN_C67A

UNKNOWN_950B:
    JSR $6029

UNKNOWN_950E:
    JSR UNKNOWN_EF34
    LDA #$FF
    JMP UNKNOWN_F0B0

UNKNOWN_9516:
    LDA $48
    ORA $20
    ORA $21
    ORA $22
    ORA $23
    ORA $25
    BNE @UNKNOWN2
    BIT $A0
    BMI @UNKNOWN2
    JSR UNKNOWN_95D3
    LDX $15
    LDA UNKNOWN_9593,X
@UNKNOWN0:
    BNE @UNKNOWN3
    STA $24
@UNKNOWN1:
    LDA #$00
    STA $48
@UNKNOWN2:
    RTS
@UNKNOWN3:              ; Check encounter...
    TAY
    AND #$07
    BNE @UNKNOWN4
    TYA
    LSR
    LSR
    LSR
    JSR UNKNOWN_E0F2
    JMP @UNKNOWN0
@UNKNOWN4:
    CLC
    ADC $24
    CMP #$09
    BCC @UNKNOWN5
    LDA #$08
@UNKNOWN5:
    TAX
    JSR RAND
    CMP UNKNOWN_958B - 1,X
    BCS @UNKNOWN1
    LDX $24
    INX
    CPX #$03
    BCC @UNKNOWN6
    LDX #$02
@UNKNOWN6:
    STX $24
    TYA
    AND #$F8
    STA $68
    LDA #$00
    ASL $68
    ROL
    ADC #$92
    STA $69
@UNKNOWN7:
    JSR RAND
    LSR
    LSR
    LSR
    LSR
    TAY
    LDA ($68),Y
    BEQ @UNKNOWN7
    STA $48             ; Set enemy group (0x03 = Crow, 0x05 = Centipede, 0x07 = Stray Dog, 0x08 = Wally, 0x09 = The Hippie, 0x0b = Snake)
    LDA #$19
    LDX #$A6
    LDY #$A4
    JSR UNKNOWN_FDF3
    RTS

; This is the encounter probability table: 0x00..0xff is 0..100%
; There are 8 possible probability modes:
;
; - 32 / 255 = 0.12549019607843137254901960784314%
; - 21 / 255 = 0.08235294117647058823529411764706%
; - 16 / 255 = 0.06274509803921568627450980392157%
; - 13 / 255 = 0.05098039215686274509803921568627%
; - 10 / 255 = 0.03921568627450980392156862745098%
; -  8 / 255 = 0.03137254901960784313725490196078%
; -  6 / 255 = 0.02352941176470588235294117647059%
; -  5 / 255 = 0.01960784313725490196078431372549%
;
; In other words:
;
; - Mode 0 has a 1/8 chance to encounter.
; - Mode 1 has a 1/12 chance to encounter.
; - Mode 2 has a 1/16 chance to encounter.
; - Mode 3 has a 1/20 chance to encounter.
; - Mode 4 has a 1/25 chance to encounter.
; - Mode 5 has a 1/32 chance to encounter.
; - Mode 6 has a 1/42 chance to encounter.
; - Mode 7 has a 1/51 chance to encounter.
;
; The encounter rate starts at a mode determined by the encounter zone (see `UNKNOWN_9593`). After
; each encounter, the mode is incremented by 1 (capped at a maximum of 2) to lower the encounter
; frequency.
;
; A better system would define an encounter range in terms of steps. Say, "8-16 steps", which sets
; a lower bound where an encounter cannot occur earlier than 8 steps after leaving a battle.
UNKNOWN_958B:
    .BYTE $20, $15, $10, $0D, $0A, $08, $06, $05

; Seems to be a lookup table for encounter zones?
; Bits 7..3 are multiplied by 2 and used to lookup a random encounter ID (of some sort) at $14:9200.
; Bits 2..0 specify the encounter rate mode (see `UNKNOWN_958B`).
; A value of 0 has no encounters.
UNKNOWN_9593:
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0C, $11, $E8, $26, $2D
    .BYTE $34, $3D, $43, $4D, $55, $5D, $65, $00, $00, $00, $00, $00, $6C, $74, $7C, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00, $00, $E0, $00, $00, $8D, $95, $9C, $A7
    .BYTE $00, $AD, $00, $00, $B5, $BD, $C5, $CD, $00, $00, $D6, $00, $00, $00, $DC, $00

UNKNOWN_95D3:
    LDX #$00
@UNKNOWN0:
    LDA $7408,X
    BEQ @UNKNOWN4
    JSR UNKNOWN_C665
    LDY #$01
    LDA ($60),Y
    LSR
    BCC @UNKNOWN1
    LDA #$07
    BNE @UNKNOWN2
@UNKNOWN1:
    LSR
    BCC @UNKNOWN4
    LDA #$07
@UNKNOWN2:
    STA $64
    CLC
    TXA
    ADC $D5
    AND $64
    BNE @UNKNOWN4
    JSR UNKNOWN_FDE7
    SEC
    LDY #$14
    LDA ($60),Y
    SBC #$01
    STA $64
    INY
    LDA ($60),Y
    SBC #$00
    STA $65
    BCC @UNKNOWN3
    LDA $64
    ORA $65
    BEQ @UNKNOWN3
    LDA $65
    STA ($60),Y
    DEY
    LDA $64
    STA ($60),Y
@UNKNOWN3:
    JSR UNKNOWN_FDED
    TXA
    PHA
    LDA #$16
    JSR UNKNOWN_EDFE
    JSR UNKNOWN_EEB0
    PLA
    TAX
@UNKNOWN4:
    INX
    CPX #$04
    BCC @UNKNOWN0
    RTS

UNKNOWN_9630:
    LDA $48
    CMP #$A2
    BEQ UNKNOWN_9684
    LDA #$30
    JSR UNKNOWN_EDFE
    JSR UNKNOWN_EEB0
    JSR UNKNOWN_FDC0
UNKNOWN_9641:
    LDA #$07
    STA $0400
    LDA #$00
    STA $0401
    STA $60
@UNKNOWN0:
    LDX $60
    LDA UNKNOWN_96F1,X
    CMP #$FF
    BEQ @UNKNOWN1
    LSR
    LSR
    LSR
    LSR
    STA $61
    LDA UNKNOWN_96F1,X
    AND #$0F
    STA $62
    JSR UNKNOWN_9685
    LDX $61
    LDY $62
    STY $61
    STX $62
    JSR UNKNOWN_9685
    INC $60
    BNE @UNKNOWN0
@UNKNOWN1:
    LDA $0401
    CMP #$00
    BEQ UNKNOWN_9684
    LDA #$00
    STA $E6
    LDA #$01
    STA $E5
UNKNOWN_9684:
    RTS

UNKNOWN_9685:
    LDA #$0E
    SEC
    SBC $62
    BCS @UNKNOWN0
    LDA #$00
@UNKNOWN0:
    STA $77
    PHA
    LDA #$0F
    SEC
    SBC $61
    STA $76
    JSR UNKNOWN_96B8
    LDA #$0F
    CLC
    ADC $62
    CMP #$1E
    BCC @UNKNOWN1
    LDA #$1D
@UNKNOWN1:
    STA $77
    JSR UNKNOWN_96B8
    LDA #$10
    CLC
    ADC $61
    STA $76
    JSR UNKNOWN_96B8
    PLA
    STA $77

UNKNOWN_96B8:
    LDA $0401
    CMP #$14
    BCC @UNKNOWN2
    LDA #$00
    STA $E6
    LDA #$01
    STA $E5
    JSR UNKNOWN_FD33
    LDA #$00
    STA $0401
@UNKNOWN2:
    JSR UNKNOWN_C9D7
    LDA $0401
    ASL
    CLC
    ADC $0401
    TAX
    LDA $78
    STA $0402,X
    LDA $79
    STA $0403,X
    LDA #$00
    STA $0404,X
    STA $0405,X
    INC $0401
    RTS

UNKNOWN_96F1:
    .BYTE $00, $FE, $10, $FD, $EE, $11, $FB, $FC, $ED, $20, $21, $EC, $DD, $30, $31, $22
    .BYTE $F9, $FA, $EB, $DC, $40, $41, $32, $33, $F7, $F8, $E9, $EA, $DB, $CC, $42, $DA
    .BYTE $50, $51, $52, $43, $F4, $F5, $F6, $E7, $E8, $D9, $CA, $CB, $60, $61, $62, $53
    .BYTE $44, $BB, $F0, $F1, $F2, $F3, $54, $E4, $E5, $E6, $D7, $D8, $C9, $BA, $70, $71
    .BYTE $72, $63, $64, $55, $C8, $80, $E0, $81, $E1, $82, $E2, $73, $E3, $74, $D4, $65
    .BYTE $D5, $D6, $C7, $B8, $A9, $B9, $AA, $D0, $D1, $D2, $D3, $C4, $C5, $66, $C6, $B7
    .BYTE $A8, $99, $90, $91, $92, $83, $84, $75, $76, $B6, $C0, $C1, $C2, $93, $C3, $B4
    .BYTE $85, $B5, $A6, $A7, $88, $98, $A0, $A1, $A2, $A3, $94, $95, $86, $77, $97, $B0
    .BYTE $B1, $B2, $B3, $A4, $A5, $96, $87, $FF

UNKNOWN_9779:
    LDA #$38
    JSR UNKNOWN_EE21
    LDA #$05
    JSR UNKNOWN_9920
    LDA #$C2
    LDX #$99
    JSR UNKNOWN_97D6
    LDA #$FF
    JSR UNKNOWN_FD28
    LDX #$B4
    JSR UNKNOWN_FD3A
    LDA #$0F
    JSR UNKNOWN_EDFE
    LDA #$00
    STA $EC
    JSR UNKNOWN_CE02
    JMP UNKNOWN_D674
    LDA #$0E
    JSR UNKNOWN_9920
    LDA #$D5
    LDX #$99
    JSR UNKNOWN_97D6
    LDA #$FF
    JSR UNKNOWN_FD28
    LDA #$E0
    LDX #$99
    JSR UNKNOWN_97D6
    LDA #$09
    STA $07F0
    LDA #$01
    STA $07F4
    LDA #$E9
    LDX #$99
    JSR UNKNOWN_97D6
    LDA #$1A
    LDX #$07
    JSR BANK_SWAP
    JMP $A000

UNKNOWN_97D6:
    STA $68
    STX $69
    LDY #$00
    STY $6B
@UNKNOWN0:
    LDA ($68),Y
    BEQ @UNKNOWN7
    STA $6C
    INY
    LDA ($68),Y
    STA $6D
    INY
    AND #$20
    BEQ @UNKNOWN1
    SEC
    ROL $6B
@UNKNOWN1:
    TYA
    PHA
    LDA $6D
    AND #$03
    BEQ @UNKNOWN2
    TAX
    LDA UNKNOWN_9A05,X
    JSR UNKNOWN_EE0E
    JSR UNKNOWN_FD41
    LDA #$0F
    JSR UNKNOWN_EE0E
@UNKNOWN2:
    JSR UNKNOWN_FD41
    LDA $6B
    BNE @UNKNOWN3
    LDA $6C
    AND #$03
    BNE @UNKNOWN5
@UNKNOWN3:
    LSR
@UNKNOWN4:
    PHA
    JSR UNKNOWN_983D
    PLA
    SEC
    SBC #$01
    BPL @UNKNOWN4
@UNKNOWN5:
    LDA $6C
    ASL
    ASL
    AND $6D
    AND #$04
    BEQ @UNKNOWN6
    LSR
    EOR $FD
    STA $FD
    LDA #$0A
    STA $07F0
@UNKNOWN6:
    DEC $6C
    BNE @UNKNOWN2
    PLA
    TAY
    BNE @UNKNOWN0
@UNKNOWN7:
    RTS

UNKNOWN_983D:
    BIT $6D
    BPL @UNKNOWN5
    BVC @UNKNOWN1
    JSR UNKNOWN_9878
    BNE @UNKNOWN0
    DEX
    CPX #$05
    BCC @UNKNOWN5
    TXA
    JSR UNKNOWN_9883
@UNKNOWN0:
    SEC
    LDA $FC
    SBC #$01
    JMP @UNKNOWN3
@UNKNOWN1:
    JSR UNKNOWN_9878
    EOR #$0F
    BNE @UNKNOWN2
    INX
    CPX #$3C
    BCS @UNKNOWN5
    TXA
    CLC
    ADC #$0A
    JSR UNKNOWN_9883
@UNKNOWN2:
    CLC
    LDA $FC
    ADC #$11
@UNKNOWN3:
    BCS @UNKNOWN4
    SBC #$0F
@UNKNOWN4:
    STA $FC
@UNKNOWN5:
    RTS

UNKNOWN_9878:
    JSR UNKNOWN_FD33
    LDX $6A
    CLC
    LDA $FC
    AND #$0F
    RTS

UNKNOWN_9883:
    STX $6A
    JSR UNKNOWN_988D
    LDA #$80
    STA $E5
    RTS

UNKNOWN_988D:
    LDX #$24
UNKNOWN_988F:
    STX $62
    LDX #$00
@UNKNOWN0:
    CMP #$0F
    BCC @UNKNOWN1
    SBC #$0F
    INX
    BCS @UNKNOWN0
@UNKNOWN1:
    ASL
    ASL
    STA $6E
    TXA
    LSR
    ROR
    ROR
    AND #$C0
    ORA $6E
    STA $60
    LDA #$06
    ASL $60
    ROL
    ASL $60
    ROL
    ASL $60
    ROL
    ASL $60
    ROL
    STA $61
    ORA #$03
    STA $65
    LDA $6E
    AND #$38
    ORA #$C0
    STA $64
    JSR UNKNOWN_FD33
    LDA #$05
    LDY #$40
    STA $0400
    STY $0401
    LDY #$08
    STA $0444
    STY $0445
    LDA $61
    LDY $60
    AND #$03
    ORA $62
    STA $0402
    STY $0403
    LDA $65
    LDY $64
    AND #$03
    ORA $62
    STA $0446
    STY $0447
    LDY #$3F
@UNKNOWN2:
    LDA ($60),Y
    JSR UNKNOWN_9919
    STA $0404,Y
    DEY
    BPL @UNKNOWN2
    LDY #$07
@UNKNOWN3:
    LDA ($64),Y
    JSR UNKNOWN_9919
    STA $0448,Y
    DEY
    BPL @UNKNOWN3
    LDA #$00
    STA $0450
    STA $E6
    RTS

UNKNOWN_9919:
    CPX #$04
    BCC @UNKNOWN0
    LDA #$00
@UNKNOWN0:
    RTS

UNKNOWN_9920:
    STA $6A
    LDA #$0B
    JSR UNKNOWN_FD28
    JSR UNKNOWN_99A3
    JSR UNKNOWN_EECC
    JSR UNKNOWN_FD5E
    JSR UNKNOWN_FD33
    LDX #$0F
@UNKNOWN0:
    LDA UNKNOWN_9A3D,X
    STA $0340,X
    DEX
    BPL @UNKNOWN0
    LDA #$2D
    LDX #$9A
    STA $60
    STX $61
    JSR UNKNOWN_E087
    LDA #$54
    JSR UNKNOWN_99AD
    LDA #$F9
    LDX #$99
    JSR UNKNOWN_CEE8
    LDA #$01
    STA $E5
    LDY #$04
@UNKNOWN1:
    TYA
    PHA
    LDX #$20
    JSR UNKNOWN_988F
    LDA #$80
    STA $E5
    PLA
    TAY
    DEY
    BPL @UNKNOWN1
    JSR UNKNOWN_998B
    LDX #$03
@UNKNOWN2:
    LDA UNKNOWN_9A09,X
    STA $0540,X
    DEX
    BPL @UNKNOWN2
    LDA #$9F
    STA $EC
    LDX #$1F
@UNKNOWN3:
    LDA UNKNOWN_9A0D,X
    STA $0520,X
    DEX
    BPL @UNKNOWN3
    JMP UNKNOWN_EE30

UNKNOWN_998B:
    CLC
    LDA $6A
    ADC #$0B
@UNKNOWN4:
    PHA
    JSR UNKNOWN_988D
    LDA #$80
    STA $E5
    PLA
    SEC
    SBC #$01
    BCC @UNKNOWN5
    CMP $6A
    BCS @UNKNOWN4
@UNKNOWN5:
    RTS

UNKNOWN_99A3:
    LDA $6A
    ASL
    ASL
    ASL
    ASL
    TAY
    LDX #$FC
    RTS

UNKNOWN_99AD:
    PHA
    TAY
    LDA #$00
    LDX #$60
    JSR UNKNOWN_CE08
    PLA
    CLC
    ADC #$02
    TAY
    LDA #$00
    LDX #$68
    JMP UNKNOWN_CE08

UNKNOWN_99C2:
    .BYTE $80, $00, $80, $80, $80, $82, $20, $83, $20, $82, $C0, $81, $80, $82, $20, $83
    .BYTE $20, $82, $00, $80, $C0, $20, $C3, $20, $C2, $80, $C1, $80, $C3, $00, $40, $02
    .BYTE $10, $07, $20, $06, $50, $05, $00, $08, $23, $08, $22, $F0, $A1, $F0, $00, $00
    .BYTE $04, $80, $00, $A9, $A9, $AB, $AA, $76, $70, $50, $51, $52, $53, $76, $70, $48
    .BYTE $49, $4A, $4B
UNKNOWN_9A05:
    .BYTE $0F, $38, $21, $34
UNKNOWN_9A09:
    .BYTE $CA, $ED, $00, $00
UNKNOWN_9A0D:
    .BYTE $0F, $12, $30, $00, $0F, $10, $30, $00, $0F, $17, $37, $16, $0F, $38, $30, $00
    .BYTE $0F, $0F, $00, $30, $0F, $0F, $16, $37, $0F, $0F, $24, $37, $0F, $0F, $12, $37
    .BYTE $68, $78, $00, $00, $58, $88, $00, $00, $78, $88, $00, $00, $68, $98, $00, $00
UNKNOWN_9A3D:
    .BYTE $86, $00, $F4, $76, $00, $00, $C0, $99, $06, $00, $E4, $76, $00, $00, $C4, $99

UNKNOWN_9A4D:
    JSR UNKNOWN_9B2A
@UNKNOWN0:
    LDA #$06
    STA $56
    LDA #$CA
    LDX #$62
    JSR UNKNOWN_9B7D
    BCS @UNKNOWN5
@UNKNOWN1:
    LDA #$06
    STA $56
    LDA #$D0
    LDX #$62
    JSR UNKNOWN_9B7D
    BCS @UNKNOWN0
@UNKNOWN2:
    LDA #$06
    STA $56
    LDA #$D6
    LDX #$62
    JSR UNKNOWN_9B7D
    BCS @UNKNOWN1
@UNKNOWN3:
    LDA #$06
    STA $56
    LDA #$DC
    LDX #$62
    JSR UNKNOWN_9B7D
    BCS @UNKNOWN2
    LDA #$0A
    STA $56
    LDA #$E2
    LDX #$62
    JSR UNKNOWN_9B7D
    BCS @UNKNOWN3
    JSR UNKNOWN_9D50
    JSR UNKNOWN_9AD5
    JSR UNKNOWN_EE30
    JSR UNKNOWN_9B00
    BCC @UNKNOWN4
    JMP UNKNOWN_9A4D
@UNKNOWN4:
    JSR UNKNOWN_9D50
    LDX #$3C
    JSR UNKNOWN_F25E
    JSR UNKNOWN_EE30
    LDA #$02
    STA $76
    LDA #$03
    STA $77
    LDX #$D0
    LDY #$64
    JSR UNKNOWN_9B13
    LDA #$FF
    STA $07F5
    JSR UNKNOWN_EE30
    LDA #$06
    STA $76
    LDA #$0A
    STA $77
    LDX #$7D
    LDY #$66
    JSR UNKNOWN_9B13
    CLC
@UNKNOWN5:
    RTS

UNKNOWN_9AD5:
    LDA #$8B
    LDX #$6C
    JSR UNKNOWN_9AF9
    LDA #$C0
    LDX #$6C
    JSR UNKNOWN_9AF9
    JSR $6286
    LDY #$00
@UNKNOWN0:
    JSR UNKNOWN_9AF3
    JSR $629B
    CMP #$20
    BNE @UNKNOWN0
    RTS

UNKNOWN_9AF3:
    JSR UNKNOWN_FD33
    JMP $625B

UNKNOWN_9AF9:
    STA $74
    STX $75
    JMP UNKNOWN_C67A

UNKNOWN_9B00:
    LDA #$F0
    LDX #$62
    STA $80
    STX $81
    JSR UNKNOWN_EF34
    LDA $82
    BEQ UNKNOWN_9B11
    SEC
    RTS

UNKNOWN_9B11:
    CLC
    RTS

UNKNOWN_9B13:
    LDA #$00
    STA $70
    STX $74
    STY $75
@UNKNOWN0:
    JSR UNKNOWN_C707
    DEC $77
    CMP #$00
    BNE @UNKNOWN0
    JSR UNKNOWN_F29E
    JMP UNKNOWN_9D50

UNKNOWN_9B2A:
    JSR UNKNOWN_9D50
    JSR UNKNOWN_EEC8
    LDA #$2D
    LDX #$6C
    JSR UNKNOWN_9AF9
    JSR UNKNOWN_9B40
    JSR UNKNOWN_9B76
    JMP UNKNOWN_EE30

UNKNOWN_9B40:
    LDA #$70
    STA $64
    LDA #$64
    STA $65
    LDA #$0E
    STA $63
    LDX #$04
@UNKNOWN1:
    TXA
    PHA
    LDA #$08
    STA $62
    LDA $62
    STA $76
    LDA $63
    STA $77
    LDA $64
    STA $74
    LDA $65
    STA $75
    JSR UNKNOWN_C6DB
    JSR $62B5
    PLA
    TAX
    DEX
    BNE @UNKNOWN1
    LDA #$66
    LDX #$6C
    JMP UNKNOWN_9AF9

UNKNOWN_9B76:
    LDA #$00
    LDX #$6C
    JMP UNKNOWN_9AF9

UNKNOWN_9B7D:
    STA $5C
    STX $5D
    LDY #$00
    JSR UNKNOWN_9BED
    ORA $60
    BEQ @UNKNOWN2
    LDA #$22
    STA $62
    LDA #$FF
    STA $63
    LDA #$80
    STA $64
    LDY #$00
    JSR UNKNOWN_9AF3
@UNKNOWN2:
    JSR UNKNOWN_9BF7
    LDA #$24
    LDX #$6C
    JSR UNKNOWN_9AF9
    LDY #$04
    JSR UNKNOWN_9BED
    LDY $56
    LDA #$00
    STA $70
    STA $0581,Y
    STY $55
@UNKNOWN3:
    LDA ($60),Y
    BNE @UNKNOWN4
    STY $55
    LDA #$A2
@UNKNOWN4:
    STA $0580,Y
    DEY
    BPL @UNKNOWN3
    JSR UNKNOWN_9C1C
    BCS @UNKNOWN7
    LDY #$04
    JSR UNKNOWN_9BED
    JSR UNKNOWN_FDE7
    LDY $56
@UNKNOWN5:
    LDA $0580,Y
    CMP #$A2
    BNE @UNKNOWN6
    LDA #$00
@UNKNOWN6:
    STA ($60),Y
    DEY
    BPL @UNKNOWN5
    JSR UNKNOWN_FDED
    JSR UNKNOWN_FD5E
    CLC
    RTS
@UNKNOWN7:
    JSR UNKNOWN_FD5E
    SEC
    RTS

UNKNOWN_9BED:
    LDA ($5C),Y
    STA $60
    INY
    LDA ($5C),Y
    STA $61
    RTS

UNKNOWN_9BF7:
    JSR UNKNOWN_9B76
    LDX #$08
    JSR UNKNOWN_F25E
    LDY #$02
    JSR UNKNOWN_9BED
UNKNOWN_9C04:
    LDA $60
    STA $74
    LDA $61
    STA $75
    LDA #$09
    STA $76
    LDA #$03
    STA $77
@UNKNOWN0:
    JSR UNKNOWN_C6DB
    CMP #$00
    BNE @UNKNOWN0
    RTS

UNKNOWN_9C1C:
    JSR UNKNOWN_9D0A
    LDA #$E8
    LDX #$62
    STA $80
    STX $81
    LDA #$70
    LDX #$64
    STA $84
    STX $85
    LDA #$01
    STA $D6
UNKNOWN_9C33:
    JSR UNKNOWN_EF3F
    JMP UNKNOWN_9C3F

UNKNOWN_9C39:
    JSR UNKNOWN_9D0A
    JSR UNKNOWN_EF7C
UNKNOWN_9C3F:
    BIT $83
    BVS UNKNOWN_9C70
    BMI @UNKNOWN0
    LDA $83
    AND #$10
    BNE UNKNOWN_9C8B
    JMP UNKNOWN_9C33
@UNKNOWN0:
    LDX $82
    LDA $6470,X
    CMP #$A1
    BEQ UNKNOWN_9C70
    CMP #$A2
    BEQ UNKNOWN_9C8B
    CMP #$A3
    BEQ @UNKNOWN2
    LDX $55
    STA $0580,X
    CPX $56
    BEQ @UNKNOWN1
    INX
    STX $55
@UNKNOWN1:
    JMP UNKNOWN_9C39
@UNKNOWN2:
    SEC
    RTS

UNKNOWN_9C70:
    LDA #$A2
    LDX $55
    CPX $56
    BNE @UNKNOWN0
    CMP $0580,X
    BNE @UNKNOWN1
@UNKNOWN0:
    STA $0580,X
    DEX
    BMI @UNKNOWN2
    STX $55
@UNKNOWN1:
    STA $0580,X
@UNKNOWN2:
    JMP UNKNOWN_9C39

UNKNOWN_9C8B:
    LDY $55
@UNKNOWN3:
    LDA $0580,Y
    CMP #$A2
    BEQ @UNKNOWN4
    CMP #$A0
    BNE @UNKNOWN5
    LDA #$A2
    STA $0580,Y
@UNKNOWN4:
    DEY
    BPL @UNKNOWN3
@UNKNOWN5:
    CPY $56
    BEQ @UNKNOWN6
    INY
@UNKNOWN6:
    STY $55
    CPY #$00
    BEQ UNKNOWN_9CCF_END
    LDX #$00
@UNKNOWN7:
    LDY #$00
@UNKNOWN8:
    LDA $63F8,X
    BEQ @UNKNOWN10
    CMP #$01
    BEQ UNKNOWN_9CCF
    INX
    INY
    CMP $057F,Y
    BEQ @UNKNOWN8
@UNKNOWN9:
    LDA $63F8,X
    INX
    CMP #$01
    BNE @UNKNOWN9
    BEQ @UNKNOWN7
@UNKNOWN10:
    LDA #$00
    STA $D6
    CLC
    RTS

UNKNOWN_9CCF:
    JSR UNKNOWN_F465
    JSR UNKNOWN_9B76
    LDA #$7F
    LDX #$63
    STA $60
    STX $61
    JSR UNKNOWN_9C04
    LDA $0580
    CMP #$A0
    BEQ @UNKNOWN1
    LDA #$98
    LDX #$63
    STA $74
    STX $75
    LDX #$08
    LDY #$0E
    STX $76
    STY $77
@UNKNOWN0:
    JSR UNKNOWN_C6DB
    CMP #$00
    BNE @UNKNOWN0
@UNKNOWN1:
    JSR UNKNOWN_F29E
    JSR UNKNOWN_9B40
    JSR UNKNOWN_9BF7
UNKNOWN_9CCF_END:
    JMP UNKNOWN_9C1C

UNKNOWN_9D0A:
    LDA $76
    PHA
    LDA $77
    PHA
    JSR UNKNOWN_FD41
    SEC
    LDA #$00
    SBC $56
    SEC
    ROR
    CLC
    ADC #$0F
    TAY
    LDA #$59
    STA $0204
    CLC
    TYA
    ADC $55
    ASL
    ASL
    ASL
    STA $0207
    LDA #$01
    STA $0205
    LDA #$00
    STA $0206
    TYA
    STA $76
    LDA #$0A
    STA $77
    LDA #$80
    STA $74
    LDA #$05
    STA $75
    JSR UNKNOWN_C6DB
    PLA
    STA $77
    PLA
    STA $76
    RTS

UNKNOWN_9D50:
    JSR UNKNOWN_EDDC
    JSR UNKNOWN_FD5E
    JSR UNKNOWN_FD80
    LDX #$FD
    LDY #$62
    JMP UNKNOWN_F732

UNKNOWN_9D60:
    JSR UNKNOWN_FD5E
    JSR UNKNOWN_FD80
    LDA $FF
    AND #$FC
    LDX #$00
    LDY #$00
    STA $FF
    STX $FD
    STY $FC
    LDA #$63
    LDX #$9E
    JSR UNKNOWN_CEE8
    LDA #$6F
    STA $60
    LDA #$9E
    STA $61
    JSR UNKNOWN_F496
    JSR UNKNOWN_EDDC
    LDA #$16
    CMP $078C
    BEQ @UNKNOWN0
    STA $07F5
@UNKNOWN0:
    LDX #$AF
    LDY #$9E
    JSR UNKNOWN_F732
    LDA #$C4
    LDX #$9E
    JSR UNKNOWN_9E2C
    LDX #$AF
    LDY #$9E
    JSR UNKNOWN_F732
    LDA #$EA
    LDX #$9E
    JSR UNKNOWN_9E2C
    LDA #$8F
    STA $60
    LDA #$9E
    STA $61
    JSR UNKNOWN_F496
    JSR UNKNOWN_EDDC
    LDA #$69
    LDX #$9E
    JSR UNKNOWN_CEE8
    LDA #$18
    LDX #$9F
    JSR UNKNOWN_9E44
    LDA #$00
    STA $60
    LDA #$10
    STA $03E0
    LDA #$00
    STA $03E1
    STA $03E4
    STA $03E5
    LDA #$58
    STA $03E2
    LDA #$57
    STA $03E3
    LDA #$00
    STA $DA
@UNKNOWN1:
    CLC
    LDA $60
    ADC #$B0
    STA $03E6
    LDA #$00
    ADC #$96
    STA $03E7
    LDA #$0A
    STA $E5
    CLC
    LDA $60
    ADC #$04
    CMP #$1C
    BNE @UNKNOWN2
    LDA #$00
@UNKNOWN2:
    STA $60
@UNKNOWN3:
    LDA $DA
    AND #$10
    BNE @UNKNOWN4
    LDA $E5
    ORA $E0
    BNE @UNKNOWN3
    BEQ @UNKNOWN1
@UNKNOWN4:
    LDX #$00
    STX $DA
    JSR UNKNOWN_EDDC
    LDA #$19
    LDX #.lobyte(UNKNOWN_19A000 - 1)
    LDY #.hibyte(UNKNOWN_19A000 - 1)
    JSR UNKNOWN_FDF3
    RTS

UNKNOWN_9E2C:
    JSR UNKNOWN_9E44
    LDX #$FF
    JSR UNKNOWN_9E54
    LDX #$40
    JSR UNKNOWN_9E54
    JSR UNKNOWN_EDDC
    LDX #$40
    JSR UNKNOWN_9E54
    JMP UNKNOWN_FD80

UNKNOWN_9E44:
    STA $74
    STX $75
@UNKNOWN0:
    JSR UNKNOWN_C6D2
    DEC $77
    CMP #$00
    BNE @UNKNOWN0
    JMP UNKNOWN_EE30
UNKNOWN_9E54:
    JSR UNKNOWN_FD41
    LDA $DE
    AND #$10
    EOR #$10
    BEQ @UNKNOWN2
    DEX
    BNE UNKNOWN_9E54
@UNKNOWN2:
    RTS

UNKNOWN_9E63:
    .BYTE $42, $72, $7C, $7C, $40, $41, $42, $72, $7C, $41, $D8, $D9, $0F, $28, $30, $18
    .BYTE $0F, $21, $30, $12, $0F, $16, $30, $12, $0F, $3A, $30, $12, $0F, $21, $30, $12
    .BYTE $0F, $21, $30, $12, $0F, $21, $30, $12, $0F, $21, $30, $12, $0F, $21, $30, $16
    .BYTE $0F, $21, $30, $16, $0F, $21, $30, $16, $0F, $21, $30, $16, $0F, $21, $30, $12
    .BYTE $0F, $21, $30, $12, $0F, $21, $30, $12, $0F, $21, $30, $12, $08, $40, $23, $C0
    .BYTE $AA, $00, $07, $04, $23, $D2, $40, $23, $D3, $10, $23, $DA, $04, $23, $DB, $01
    .BYTE $00, $20, $0D, $0B, $C8, $C9, $CA, $CB, $CD, $CE, $CF, $01, $20, $0D, $0C, $D8
    .BYTE $01, $20, $13, $0C, $DF, $01, $20, $0D, $0D, $22, $CC, $13, $01, $20, $0D, $0F
    .BYTE $E3, $E4, $E5, $E6, $E7, $E8, $00, $20, $0D, $0B, $D9, $DA, $DB, $DC, $DD, $DE
    .BYTE $CE, $CF, $01, $20, $0D, $0C, $D8, $01, $20, $14, $0C, $DF, $01, $20, $00, $0D
    .BYTE $22, $CC, $15, $01, $20, $08, $0F, $F3, $F4, $F5, $F6, $F7, $F8, $F9, $FA, $FB
    .BYTE $FC, $FD, $FE, $FF, $00, $20, $08, $07, $90, $91, $92, $93, $94, $95, $96, $97
    .BYTE $98, $99, $9A, $9B, $9C, $01, $A0, $A1, $A2, $A3, $A4, $A5, $A6, $A7, $A8, $A9
    .BYTE $AA, $AB, $AC, $01, $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7, $B8, $B9, $BA, $BB
    .BYTE $BC, $BD, $BE, $BF, $01, $C0, $C1, $C2, $C3, $C4, $C5, $C6, $C7, $C8, $C9, $CA
    .BYTE $CB, $CC, $CD, $CE, $CF, $01, $D0, $D1, $D2, $D3, $D4, $D5, $D6, $D7, $D8, $D9
    .BYTE $DA, $DB, $DC, $DD, $DE, $01, $E0, $E1, $E2, $E3, $E4, $E5, $E6, $E7, $E8, $E9
    .BYTE $EA, $EB, $EC, $ED, $EE, $01, $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7, $F8, $F9
    .BYTE $FA, $FB, $FC, $FD, $FE, $01, $20, $07, $17, $43, $44, $45, $46, $47, $70, $69
    .BYTE $6A, $6B, $6C, $6D, $6E, $6F, $53, $54, $55, $56, $57, $00
