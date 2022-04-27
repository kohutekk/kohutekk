.global _start

_start:
	MOV R0, #10
	ADD R0, R0, #10
	ADD R0, R0, #10
	ADD R0, R0, #10
	ADD R0, R0, #10
	MOV R7, #1
	SWI 0
