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
@LCL
A = M
M = D
($LOOP_START)
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
@LCL
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
A = A - 1
M = D + M
@SP
AM = M - 1
D = M
@LCL
A = M
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
@$LOOP_START
D;JNE
@LCL
D = M
@0
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
