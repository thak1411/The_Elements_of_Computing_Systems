@ARG
D = M
@1
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
@3
A = A + 1
M = D
@0
D = A
@0
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
@THAT
A = M
M = D
@0
D = A
@1
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
@THAT
A = M
A = A + 1
M = D
@ARG
D = M
@0
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@2
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
AM = M - 1
D = M
@ARG
A = M
M = D
($MAIN_LOOP_START)
@ARG
D = M
@0
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
@SP
AM = M - 1
D = M
@$COMPUTE_ELEMENT
D;JNE
@$END_PROGRAM
0;JMP
($COMPUTE_ELEMENT)
@THAT
D = M
@0
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
@THAT
D = M
@1
A = D + A
D = M
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
@SP
AM = M - 1
D = M
@THAT
A = M
A = A + 1
A = A + 1
M = D
@3
D = A
@1
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@1
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
@SP
AM = M - 1
D = M
@3
A = A + 1
M = D
@ARG
D = M
@0
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@1
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
AM = M - 1
D = M
@ARG
A = M
M = D
@$MAIN_LOOP_START
0;JMP
($END_PROGRAM)
