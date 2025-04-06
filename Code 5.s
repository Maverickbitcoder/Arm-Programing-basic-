.global _start
_start:
	  LDR R0, =array     // ; Load the address of 'array' into R0
  LDR R1, [R0]       //; Load value at address in R0 (array[0]) into R1
  LDR R2, [R0, #8]!    // ; Pre-increment: Load value at address (R0 + 8) into R2 and then
 //increment R0 by 8
  LDR R3, [R0], #8     //; Post-increment: Load value at address in R0 (array[2]) into R3
 //and then increment R0 by 8
  .data           //; Data section
 array:
  .word 10, 20, 30, 40 
	