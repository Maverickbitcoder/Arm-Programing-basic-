.global _start
_start:
	
	    MOV R4, #0          //; Initialize i = 0
    LDR R5, =A          //; Load address of array A into R5
    LDR R6, =B          //; Load address of array B into R6
 loop_start:
    CMP R4, #5          //; Compare i with 5
    BGE end_loop        //; If i >= 5, exit the loop
    LDR R7, [R5, R4, LSL #2] // ; Load A[i] into R7 (R5 + i * 4)
    STR R7, [R6, R4, LSL #2]//; Store A[i] into B[i] (R6 + i * 4)
    ADD R4, R4, #1      //; Increment i
    B loop_start       // ; Branch back to loop_start
 end_loop:
 .data
 A: .word 3,4,6,7,9
 B: .word 0,9,8,3,2
		

	