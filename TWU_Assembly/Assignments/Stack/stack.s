.global _start

_start
	mov x0, #2
	mov x1, #4
	
stack:
	stp x0, x1, [sp, #-16]!
	ldp x0, x1, [sp], #16
	
exit:
	mov x8, #93
	svc #0