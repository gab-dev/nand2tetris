	// Program: Signum.asm
	// Computes: if R0 > 0
	//		R1 = 1
	//	     else
	//		R1 = 0

	//Preload on RAM[0]
	@3	//A = 3			0
	D=A	//D = 3			1
	@R0	//A = 0			2
	M=D	//RAM[0] = 3		3

	//Evaluate RAM[0]
	@11	   			//4
	D;JLE 	   			//5

	//if RAM[0] > 0
	@1	//A = 1			6
	D=A	//D = 1			7
	M=D	//RAM[1] = 1		8
	@15		   		//9
	0;JMP 				//10

	//if RAM[0] < 0
	@0	//A = 0			11
	D=A	//D = 0			12
	@R1	//A = 1			13
	M=D	//RAM[1] = 0		14

	//End
	@15	//A=15			15
	0;JMP	//goto 15		16
