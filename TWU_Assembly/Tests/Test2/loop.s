//loop.s
//Kara Kohutek

//Write an arm64/aarch64 assemly program that sets a register to 0, loops 7 times making arithmetic changes to register values such that when exiting the program the original register contains 14 and that value is returned to the system.

.text
.global _start
_start:
	mov 	x0, #0 	
	
loop:
	cmp 	x0, #7		//compare register to the number 7
	beq 	exit		//if equal move to the exit
	add 	x0, x0, #1 	//adding the 1 each time it loops

exit:
	mov 	x8, #93		
	svc 	#0			