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
(Sys.init)
@0
D = A
@4000
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
@3
M = D
@0
D = A
@5000
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
@3
A = A + 1
M = D
@Sys.init.return-address.2
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
@Sys.main
0;JMP
(Sys.init.return-address.2)
@SP
AM = M - 1
D = M
@5
A = A + 1
M = D
(Sys.init.LOOP)
@Sys.init.LOOP
0;JMP
(Sys.main)
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
@0
D = A
@SP
M = M + 1
A = M - 1
M = D
@0
D = A
@4001
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
@3
M = D
@0
D = A
@5001
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
@3
A = A + 1
M = D
@0
D = A
@200
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
A = A + 1
M = D
@0
D = A
@40
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
A = A + 1
A = A + 1
M = D
@0
D = A
@6
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
A = A + 1
A = A + 1
A = A + 1
M = D
@0
D = A
@123
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@Sys.main.return-address.3
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
@Sys.add12
0;JMP
(Sys.main.return-address.3)
@SP
AM = M - 1
D = M
@5
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
@LCL
D = M
@2
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@3
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
@LCL
D = M
@4
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
A = A - 1
M = D + M
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
@SP
AM = M - 1
D = M
A = A - 1
M = D + M
@LCL
D = M
@Sys.vm.FRAME
M = D
@5
D = A
@Sys.vm.FRAME
A = M - D
D = M
@Sys.vm.RET
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
@Sys.vm.FRAME
A = M - D
D = M
@THAT
M = D
@2
D = A
@Sys.vm.FRAME
A = M - D
D = M
@THIS
M = D
@3
D = A
@Sys.vm.FRAME
A = M - D
D = M
@ARG
M = D
@4
D = A
@Sys.vm.FRAME
A = M - D
D = M
@LCL
M = D
@Sys.vm.RET
A = M
0;JMP
(Sys.add12)
@0
D = A
@4002
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
@3
M = D
@0
D = A
@5002
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
@12
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
@LCL
D = M
@Sys.vm.FRAME
M = D
@5
D = A
@Sys.vm.FRAME
A = M - D
D = M
@Sys.vm.RET
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
@Sys.vm.FRAME
A = M - D
D = M
@THAT
M = D
@2
D = A
@Sys.vm.FRAME
A = M - D
D = M
@THIS
M = D
@3
D = A
@Sys.vm.FRAME
A = M - D
D = M
@ARG
M = D
@4
D = A
@Sys.vm.FRAME
A = M - D
D = M
@LCL
M = D
@Sys.vm.RET
A = M
0;JMP
