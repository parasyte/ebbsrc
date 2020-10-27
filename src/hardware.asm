
;NES registers
.DEFINE PPUCTRL $2000
.DEFINE PPUMASK $2001
.DEFINE PPUSTATUS $2002
.DEFINE OAMADDR $2003
.DEFINE OAMDATA $2004
.DEFINE PPUSCROLL $2005
.DEFINE PPUADDR $2006
.DEFINE PPUDATA $2007

.DEFINE SQ1_VOL $4000
.DEFINE SQ1_SWEEP $4001
.DEFINE SQ1_LO $4002
.DEFINE SQ1_HI $4003
.DEFINE SQ2_VOL $4004
.DEFINE SQ2_SWEEP $4005
.DEFINE SQ2_LO $4006
.DEFINE SQ2_HI $4007
.DEFINE TRI_LINEAR $4008
.DEFINE TRI_LO $400A
.DEFINE TRI_HI $400B
.DEFINE NOISE_VOL $400C
.DEFINE NOISE_LO $400E
.DEFINE NOISE_HI $400F
.DEFINE DMC_FREQ $4010
.DEFINE DMC_RAW $4011
.DEFINE DMC_START $4012
.DEFINE DMC_LEN $4013
.DEFINE OAMDMA $4014
.DEFINE SND_CHN $4015
.DEFINE JOY1 $4016
.DEFINE JOY2 $4017

;MMC3 registers
.DEFINE BANKSELECT $8000
.DEFINE BANKDATA $8001
.DEFINE MIRROR $A000
.DEFINE PRGRAMPROTECT $A001
.DEFINE IRQLATCH $C000
.DEFINE IRQRELOAD $C001
.DEFINE IRQDISABLE $E000
.DEFINE IRQENABLE $E001