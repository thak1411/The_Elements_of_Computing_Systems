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
(Class1.set)
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
@Class1.vm.0
M = D
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
@Class1.vm.1
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
@LCL
D = M
@Class1.vm.FRAME
M = D
@5
D = A
@Class1.vm.FRAME
A = M - D
D = M
@Class1.vm.RET
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
@Class1.vm.FRAME
A = M - D
D = M
@THAT
M = D
@2
D = A
@Class1.vm.FRAME
A = M - D
D = M
@THIS
M = D
@3
D = A
@Class1.vm.FRAME
A = M - D
D = M
@ARG
M = D
@4
D = A
@Class1.vm.FRAME
A = M - D
D = M
@LCL
M = D
@Class1.vm.RET
A = M
0;JMP
(Class1.get)
@Class1.vm.0
D = A
@0
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
@Class1.vm.1
D = A
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
M = M - D
@LCL
D = M
@Class1.vm.FRAME
M = D
@5
D = A
@Class1.vm.FRAME
A = M - D
D = M
@Class1.vm.RET
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
@Class1.vm.FRAME
A = M - D
D = M
@THAT
M = D
@2
D = A
@Class1.vm.FRAME
A = M - D
D = M
@THIS
M = D
@3
D = A
@Class1.vm.FRAME
A = M - D
D = M
@ARG
M = D
@4
D = A
@Class1.vm.FRAME
A = M - D
D = M
@LCL
M = D
@Class1.vm.RET
A = M
0;JMP
(Sys.init)
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
@0
D = A
@8
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
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
@2
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Class1.set
0;JMP
(Sys.init.return-address.2)
@SP
AM = M - 1
D = M
@5
M = D
@0
D = A
@23
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@0
D = A
@15
A = D + A
D = A
@SP
A = M
M = D
@SP
M = M + 1
@Sys.init.return-address.3
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
@2
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Class2.set
0;JMP
(Sys.init.return-address.3)
@SP
AM = M - 1
D = M
@5
M = D
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
@0
D = D - A
@ARG
M = D
@SP
D = M
@LCL
M = D
@Class1.get
0;JMP
(Sys.init.return-address.4)
@Sys.init.return-address.5
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
@Class2.get
0;JMP
(Sys.init.return-address.5)
(Sys.init.WHILE)
@Sys.init.WHILE
0;JMP
(Class2.set)
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
@Class2.vm.0
M = D
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
@Class2.vm.1
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
@LCL
D = M
@Class2.vm.FRAME
M = D
@5
D = A
@Class2.vm.FRAME
A = M - D
D = M
@Class2.vm.RET
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
@Class2.vm.FRAME
A = M - D
D = M
@THAT
M = D
@2
D = A
@Class2.vm.FRAME
A = M - D
D = M
@THIS
M = D
@3
D = A
@Class2.vm.FRAME
A = M - D
D = M
@ARG
M = D
@4
D = A
@Class2.vm.FRAME
A = M - D
D = M
@LCL
M = D
@Class2.vm.RET
A = M
0;JMP
(Class2.get)
@Class2.vm.0
D = A
@0
A = D + A
D = M
@SP
A = M
M = D
@SP
M = M + 1
@Class2.vm.1
D = A
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
M = M - D
@LCL
D = M
@Class2.vm.FRAME
M = D
@5
D = A
@Class2.vm.FRAME
A = M - D
D = M
@Class2.vm.RET
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
@Class2.vm.FRAME
A = M - D
D = M
@THAT
M = D
@2
D = A
@Class2.vm.FRAME
A = M - D
D = M
@THIS
M = D
@3
D = A
@Class2.vm.FRAME
A = M - D
D = M
@ARG
M = D
@4
D = A
@Class2.vm.FRAME
A = M - D
D = M
@LCL
M = D
@Class2.vm.RET
A = M
0;JMP
