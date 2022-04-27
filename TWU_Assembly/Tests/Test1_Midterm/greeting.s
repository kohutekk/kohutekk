/*	greeting.s

Prompt:
	Modify the helloworld.s ARM64 assembly program from the Examples folder of the course repo so that it prints out "Good afternoon!"  and then "The weather is nice." using 2 separate system calls. */


/* A Hello World program in arm64 assembly */
.data
good:
	.ascii "Good afternoon!\n" 
len = . - good 

the:
	.ascii "The weather is nice.\n"
lng = . - the

/* Program Logic */
.text

/* Program Start Point (main method/routine/function) */
.globl _start
_start:
	/* Writing the string "Good Afternoon!" to STDOUT */
	mov x0, #1 
	ldr x1, =good 
	ldr x2, =len 
	svc #0
	
	/* Writing the string "The weather is nice." to STDOUT */
	mov x3, #1 
	ldr x4, =the 
	ldr x5, =lng 
	mov x8, #64 
	svc #3

	/* Exiting the program */
	mov x0, #0 
	mov x3, #0
	mov x8, #93 
	svc #0 
	svc #3
