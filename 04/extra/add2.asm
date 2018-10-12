	// Load a value in RAM[0]
	@3
	D=A
	@0
	M=D

	// Load a value in RAM[1]
	@4
	D=A
	@1
	M=D

	// D is still equal to RAM[1]
	// Sum RAM[0] to D
	@0
	D=D+M

	// Store D in RAM[2]
	@2
	M=D
