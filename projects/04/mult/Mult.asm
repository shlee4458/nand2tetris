// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// loop r1 times and add ro to r2

@R2
M=0

(LOOP)
    @R1
    D=M
    
    
    // if R1 is 0 exit the loop and end
    @END
    D; JEQ

    // get the value from R0
    @R0
    D=M

    // update R2
    @R2
    M=M+D

    // update R1
    @R1
    M=M-1

    // loop back to loop
    @LOOP
    0; JMP
    

(END)
    @END
    0; JMP
