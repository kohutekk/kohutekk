/* 	leanadd2.s

Prompt:
	Modify the add2.s ARM64 assembly program from the Examples folder of the course repo so that it uses the exit system calls return register as an "accumulator" to store the result/total of adding 2 numbers instead of using different registers and moving it to the return register. */


/* A program that adds 2 numbers together and returns the total on exit */
/* Program Logic */
.text

/* Program Start Point (main method/routine/function)*/
.globl _start
_start:

	mov r0, #2
	add r0, r0, #3 		//Add 3 to the current value of X4 and put it into X0

	/* Exiting the program */
	mov r8, #93 		//Set system call to exit
	svc #0 				//Tell system to execute system call with needed parameters from registers
	
