10 CLS
20 PRINT "MEMCHECKER BY HWR0"
30 CALL 256
40 A = PEEK(&H103)
50 PRINT "B4 writing to 8500: ",A
60 A = PEEK(&H105)
70 PRINT "After writing to 8500: ",A
80 A = PEEK(&H104)
90 PRINT "B4 writing to 8501: ",A
100 A = PEEK(&H106)
110 PRINT "After writing to 8501: ",A
120 INPUT "Now the RAM - Press Key", B
130 A = PEEK(&H107)
140 PRINT "B4 writing to 8500: ",A
150 A = PEEK(&H109)
160 PRINT "After writing to 8500: ",A
170 A = PEEK(&H108)
180 PRINT "B4 writing to 8501: ",A
190 A = PEEK(&H10A)
200 PRINT "After writing to 8501: ",A


