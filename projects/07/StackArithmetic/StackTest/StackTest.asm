@0
D = A
@17
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@17
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
@TRUE.1
D;JEQ
@END.1
D = 0;JMP
(TRUE.1)
D = -1
(END.1)
@SP
A = M - 1
M = D
@0
D = A
@17
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@16
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
@TRUE.2
D;JEQ
@END.2
D = 0;JMP
(TRUE.2)
D = -1
(END.2)
@SP
A = M - 1
M = D
@0
D = A
@16
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@17
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
@TRUE.3
D;JEQ
@END.3
D = 0;JMP
(TRUE.3)
D = -1
(END.3)
@SP
A = M - 1
M = D
@0
D = A
@892
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@891
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
@TRUE.4
D;JLT
@END.4
D = 0;JMP
(TRUE.4)
D = -1
(END.4)
@SP
A = M - 1
M = D
@0
D = A
@891
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@892
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
@TRUE.5
D;JLT
@END.5
D = 0;JMP
(TRUE.5)
D = -1
(END.5)
@SP
A = M - 1
M = D
@0
D = A
@891
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@891
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
@TRUE.6
D;JLT
@END.6
D = 0;JMP
(TRUE.6)
D = -1
(END.6)
@SP
A = M - 1
M = D
@0
D = A
@32767
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@32766
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
@TRUE.7
D;JGT
@END.7
D = 0;JMP
(TRUE.7)
D = -1
(END.7)
@SP
A = M - 1
M = D
@0
D = A
@32766
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@32767
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
@TRUE.8
D;JGT
@END.8
D = 0;JMP
(TRUE.8)
D = -1
(END.8)
@SP
A = M - 1
M = D
@0
D = A
@32766
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@32766
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
D = M - D
@TRUE.9
D;JGT
@END.9
D = 0;JMP
(TRUE.9)
D = -1
(END.9)
@SP
A = M - 1
M = D
@0
D = A
@57
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@31
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@53
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
@0
D = A
@112
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
M = M - D
@SP
A = M - 1
M = -M
@SP
AM = M - 1
D = M
A = A - 1
M = M & D
@0
D = A
@82
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
A = A - 1
M = M | D
@SP
A = M - 1
M = !M
