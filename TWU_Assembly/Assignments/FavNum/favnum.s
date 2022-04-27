//favnum.s

.data
msg:
	.ascii "Favorite Number!\n" //Initializing a constant with an ascii encoded string
	len = . - msg

.text
.global _start
_start:
	mov 	x4, #1 		// initially putting an integer into a register

loop:
	cmp 	x4, #3		// compare register to the number 3
	beq 	favnum		// if equal move to target
	cmp 	x4, #4		// compare register to the number 4
	beq 	favnum		// if equal move to target
	cmp 	x4, #6		// compare register to the number 6
	beq 	favnum		// if equal move to target

	cmp 	x4, #10		// compare register to the number 10
	beq 	exit		// if equal move to target

	add 	x4, x4, #1 	// subtracting the initial integer
	b 	loop

favnum:
	mov     x0, #1
	ldr     x1, =msg
   	ldr     x2, =len
   	mov     w8, #64
    	svc     #0
	b 	loop

exit:
	mov 	x0, x4
   	mov     w8, #93
    	svc     #0

