.data
.align 4
	bsort:
		.word 3, 2, 4, 8 
	taco:   
		.float  1.234
	apple:
		.asciz "It worked !!!\n\0"
		
.text
.extern printf
.align 4
.global main

main:
    ldr x12, = taco 	//Loads the float point into x12
    FMOV D11, x12  		//Float move the value from x12 into the float register D11
	
    ldr x18, = bsort 	//Load the array bsort into x18
    mov x2, #4			//Total number of numbers minus one
    sub x3, x2, #1

sort:
	ldr w6, [x18]
	ldr w7, [x18, #4]
	add x18, x18, #4    //Incroments the array so that next time it will move over one index
	cmp w6, w7      		 
	ble check			//If w6 is less then w7 jump to check
	
	str w7,[x18, #-4]	//If it is not then proceed with the switch
	str w6,[x18]
	add x5, x5, #1		//Add 1 to x5 to show that a change has been made
    bl check

check:
	cmp x5, #0    		//Check to see if a change was made
	bgt sort_next 
	cmp x3, #0  		//Check to see if it is at the end of the array
	
    beq exit    		//If at the end jump to exit
    b sort_next     	//If not at the end jump to sort_next

sort_next:
    sub x3, x3, #1		//Subtracts the number of times of comparing 
	mov x5, 0
    bl sort
	
exit:
	ldr x1, = bsort
	ldr x0, = apple
	bl printf 			//Use Gcc compiler
	
	mov x8, #93
	svc 0
