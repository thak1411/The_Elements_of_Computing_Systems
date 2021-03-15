// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(LOOP)
    D = M[KBD]
    D;JEQ[WHITE]
    M = -1[color]
    0;JMP[DRAW]
(WHITE)
    M = 0[color]
(DRAW)
    D = A[SCREEN]
    M = D[point]
    D = A[256]
    M = D[i]
    (LOOP1)
        D = M[i]
        D;JEQ[END1]
        M = M - 1[i]
        D = A[32]
        M = D[j]
        (LOOP2)
            D = M[j]
            D;JEQ[END2]
            M = M - 1[j]
            D = M[color]
            A = M[point]
            M = D
            M = M + 1[point]
            0;JMP[LOOP2]
        (END2)
        0;JMP[LOOP1]
    (END1)
    0;JMP[LOOP]