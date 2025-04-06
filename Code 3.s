.global _start
_start:
	MOV r0, #10       //  Load unsigned value 10 into r0
    MOV r1, #12       //  Load unsigned value 12 into r1
    AND r2, r0, r1     // Perform bitwise AND between r0 and r1, store result in r2
    ORR r3, r0, r1     // Perform bitwise OR between r0 and r1, store result in r3
    EOR r4, r0, r1
	