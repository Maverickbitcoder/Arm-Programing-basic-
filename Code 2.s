.global _start
_start:
	MOV r0, #10       // Load immediate value 10 into register r0
    MOV r1, #20       // Load immediate value 20 into register r1
    ADD r2, r0, r1    // Add values in r0 and r1, store result in r2
    SUB r3, r2, #5 
	