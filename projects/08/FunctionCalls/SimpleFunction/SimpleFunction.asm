@256
D = A
@SP
M = D
@.return-address.1
D = A
@SP
M = M + 1
A = M - 1
M = D
@LCL
D = M
@SP
M = M + 1
A = M - 1
M = D
@ARG
D = M
@SP
M = M + 1
A = M - 1
M = D
@THIS
D = M
@SP
M = M + 1
A = M - 1
M = D
@THAT
D = M
@SP
M = M + 1
A = M - 1
M = D
@SP
D = M
@5
D = D - A
@0
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@SimpleFunction.test
0;JMP
(.return-address.1)
(SimpleFunction.test)
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
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
@LCL
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
A = M - 1
M = !M
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
A = A - 1
M = D + M
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
A = A - 1
M = M - D
@LCL
D = M
@SimpleFunction.vm.FRAME
M = D
@5
D = A
@SimpleFunction.vm.FRAME
A = M - D
D = M
@SimpleFunction.vm.RET
M = D
@SP
A = M - 1
D = M
@ARG
A = M
M = D
@ARG
D = M + 1
@SP
M = D
@1
D = A
@SimpleFunction.vm.FRAME
A = M - D
D = M
@THAT
M = D
@2
D = A
@SimpleFunction.vm.FRAME
A = M - D
D = M
@THIS
M = D
@3
D = A
@SimpleFunction.vm.FRAME
A = M - D
D = M
@ARG
M = D
@4
D = A
@SimpleFunction.vm.FRAME
A = M - D
D = M
@LCL
M = D
@SimpleFunction.vm.RET
A = M
0;JMP
