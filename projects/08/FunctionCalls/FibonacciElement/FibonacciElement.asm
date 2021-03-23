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
@Sys.init
0;JMP
(.return-address.1)
(Main.fibonacci)
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
D = M - D
@Main.fibonacci.TRUE.1
D;JLT
@Main.fibonacci.END.1
D = 0;JMP
(Main.fibonacci.TRUE.1)
D = -1
(Main.fibonacci.END.1)
@SP
A = M - 1
M = D
@SP
AM = M - 1
D = M
@Main.fibonacci.IF_TRUE
D;JNE
@Main.fibonacci.IF_FALSE
0;JMP
(Main.fibonacci.IF_TRUE)
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
@Main.vm.FRAME
M = D
@5
D = A
@Main.vm.FRAME
A = M - D
D = M
@Main.vm.RET
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
@Main.vm.FRAME
A = M - D
D = M
@THAT
M = D
@2
D = A
@Main.vm.FRAME
A = M - D
D = M
@THIS
M = D
@3
D = A
@Main.vm.FRAME
A = M - D
D = M
@ARG
M = D
@4
D = A
@Main.vm.FRAME
A = M - D
D = M
@LCL
M = D
@Main.vm.RET
A = M
0;JMP
(Main.fibonacci.IF_FALSE)
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
@Main.fibonacci.return-address.2
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
@1
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Main.fibonacci
0;JMP
(Main.fibonacci.return-address.2)
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
@Main.fibonacci.return-address.3
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
@1
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Main.fibonacci
0;JMP
(Main.fibonacci.return-address.3)
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
@LCL
D = M
@Main.vm.FRAME
M = D
@5
D = A
@Main.vm.FRAME
A = M - D
D = M
@Main.vm.RET
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
@Main.vm.FRAME
A = M - D
D = M
@THAT
M = D
@2
D = A
@Main.vm.FRAME
A = M - D
D = M
@THIS
M = D
@3
D = A
@Main.vm.FRAME
A = M - D
D = M
@ARG
M = D
@4
D = A
@Main.vm.FRAME
A = M - D
D = M
@LCL
M = D
@Main.vm.RET
A = M
0;JMP
(Sys.init)
@0
D = A
@4
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@Sys.init.return-address.4
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
@1
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Main.fibonacci
0;JMP
(Sys.init.return-address.4)
(Sys.init.WHILE)
@Sys.init.WHILE
0;JMP
