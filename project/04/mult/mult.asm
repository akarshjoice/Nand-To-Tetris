// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@0
D=A   
@R2
M=D    //R2=0

@1
D=A   
@i
M=D   //i=1

(LOOP)
@R0
D=M
@i
D=M-D
@END
D;JGT   //i-R0>0

@R1
D=M
@R2
M=M+D

@i
M=M+1
@LOOP
0;JMP

(END)
@END
0;JMP
