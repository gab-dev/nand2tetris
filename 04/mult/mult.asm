// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// a x b = tot
	
	//a = RAM[0]
	@R0
	D=M
	@a
	M=D

	//b = RAM[1]
	@R1
	D=M
	@b
	M=D
	//Set RAM[2] = 0
	@R2
	M=0

	//tot = 0
	@tot
	M=0

	//i = 0
	@i
	M=0

	// if i > b goto STOP
	(LOOP)
	@i
	D=M
	@b
	D=D-M
	@STOP
	D;JGE

	//tot = tot + a
	@a
	D=M
	@tot
	M=M+D

	//i = i + 1
	@i
	M=M+1

	//goto LOOP
	@LOOP
	0;JMP

	//R2 = tot
	(STOP)
	@tot
	D=M
	@R2
	M=D

	//End of program
	(END)
	@END
	0;JMP
