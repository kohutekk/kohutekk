//skipsubtraction.s

.text
.global _start
_start:

	mov 	x4, #10 	//initially putting an integer into a register
	cmp 	x4, #4		//compare register to the number 4
	beq 	exit		//if equal move to target
	sub 	x4, x4, #1 	//subtracting the initial integer

exit:
	mov 	x0, x4
	mov 	x8, #93		//set system call to exit
	svc 	#0			//Tell system to execute system call with 
						//needed parameters from registers

