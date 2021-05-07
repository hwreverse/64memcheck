10 CLS
20 PRINT "MEMCHECKER BY HWR0"
30 CALL 256
40 A = PEEK(&H103)
50 PRINT "Before ROMWrite to 0x8500: ",A
60 A = PEEK(&H105)
70 PRINT "After ROMWrite to 0x8500: ",A
80 A = PEEK(&H104)
90 PRINT "Before ROMWrite to 0x8501: ",A
100 A = PEEK(&H106)
110 PRINT "After ROMWrite to 0x8501: ",A
120 INPUT "Now the RAM - Press Key", B
130 A = PEEK(&H105)
140 PRINT "Before RAMWrite to 0x8500: ",A
150 A = PEEK(&H107)
160 PRINT "After RAMWrite to 0x8500: ",A
170 A = PEEK(&H106)
180 PRINT "Before RAMWrite to 0x8501: ",A
190 A = PEEK(&H108)
200 PRINT "After RAMWrite to 0x8501: ",A

