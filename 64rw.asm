10 ORG 0100H
20 JP START
30ADR0 EQU 8500H
40ADR1 EQU 8501H
50ROMB0: db 0 ;before trying to write to 0x8500
60ROMB1: db 0
70ROMA0: db 0 ;after writing
80ROMA1: db 0
90RAMB0: db 0 ;before writing to ext. mem
100RAMB1: db 0
110RAMA0: db 0 ;after writing to ext. mem
120RAMA1: db 0
130 ;
140START: LD A, (ADR0)
150 LD (ROMB0), A
160 INC A
170 LD (ROMA0), A
180 LD A, (ADR1)
190 LD (ROMB1), A
200 INC A
210 LD (ROMA1), A
220 ; enable ext. ram to 0x8000-0xC0000
230 DI
240 IN A,(17H)
250 PUSH AF
260 LD A,0
270 OUT (17H),A ; disable periph. interrupts
280 IN A, (19H)
290 PUSH AF
300 LD B, 50H  ; /CEROM2=L,  BANK1=0, BANK0=1
310 OR B
320 OUT (0x19),A
330 ;
340 LD A, (ADR0)
350 LD (RAMB0), A
360 INC A
370 LD (RAMA0), A
380 LD A, (ADR1)
390 LD (RAMB1), A
400 INC A
410 LD (RAMA1), A
420 ;reenable ROM
430 POP AF
440 OUT (19H),A
450 POP AF
460 OUT (17H),A
470 EI
380 RET
