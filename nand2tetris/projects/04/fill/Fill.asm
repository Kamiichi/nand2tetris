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
  @6000
  D=M
  @SCREEN
  D; JGT
  @LOOP
  0; JMP

(SCREEN)
  @6000
  D=M
  @LOOP
  D; JEQ
  @4000
  M=1
  @4001
  M=1
  @4002
  M=1
  @4003
  M=1
  @4004
  M=1
  @4005
  M=1
  @SCREEN
  0; JMP
