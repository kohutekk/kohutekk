.text

  .word 0x20000000 ; (address 0x0000.0000) This initializes the stack pointer
  b start + 1      ; (address 0x0000.0004) This instructs the CPU to branch to start at reset

start:
  mov r0, #1       ; Move the number 1 into register r0
  mov r1, #2       ; Move the number 2 into register r1
  add r2, r1, r0   ; Add r0 and r1 and store the result in r2

stop: b stop       ; Just loop forever
