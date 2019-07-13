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

(W)
@KBD
D=M
@BLACK
D;JNE
@W
0;JMP

(B)
@KBD
D=M
@WHITE
D;JEQ
@B
0;JMP


(BLACK)
@SCREEN
D=A
@b
M=D

@0
D=A
@i
M=D

(LOOP)
@8191
D=A
@i
D=M-D
@B
D;JGT
@i
D=M
@b
A=M
A=A+D
M=-1
@i
M=M+1
@LOOP
0;JMP



(WHITE)
@SCREEN
D=A
@b
M=D

@0
D=A
@i
M=D

(LOOP1)
@8191
D=A
@i
D=M-D
@W
D;JGT
@i
D=M
@b
A=M
A=A+D
M=0
@i
M=M+1
@LOOP1
0;JMP