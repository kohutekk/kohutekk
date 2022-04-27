.global _start
_start:
	mov R7, #4
	mov R0, #1
	mov R2, #12
	ldr R1, =message
	swi 0

end:
	mov R7, #1
	swi 0

.data
message:
	.ascii "Hello, world\n"
