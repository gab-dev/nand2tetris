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

	//START
	(LOOP)

	// i = SCREEN = 16384
	@SCREEN
	D=A
	@i
	M=D

	// if RAM[KBD] = 0 goto WHITE else goto BLACK
	@KBD
	D=M
	@WHITE
	D;JEQ

	// Blacken the screen
	    // if i > KBD goto END
	    (BLACK)
	    @i
	    D=M
	    @KBD
	    D=D-A
	    @END
	    D;JGE

	    // RAM[i] = -1
	    @i
	    A=M
	    M=-1

	    // i = i + 1
	    @i
	    M=M+1

	    // goto BLACK
	    @BLACK
	    0;JMP

	// Whiten the screen
	    (WHITE)
	    @i
	    D=M
	    @KBD
	    D=D-A
	    @END
	    D;JGE

	    // RAM[i] = -1
	    @i
	    A=M
	    M=0

	    // i = i + 1
	    @i
	    M=M+1

	    // goto WHITE
	    @WHITE
	    0;JMP

	//END
	(END)
	@LOOP
	0;JMP
