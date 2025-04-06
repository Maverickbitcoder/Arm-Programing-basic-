.global _start
_start:
	MOV R0, #0b11010000// ; Load a binary value (208 in decimal) into R0
 MOV R1, #2 //; Load the shift amount (2) into R1
 //#Logical Shift Left (LSL)
 LSL R2, R0, R1 //; Perform Logical Shift Left on R0 by R1 (2 positions), result in R2
// #Logical Shift Right (LSR)
 LSR R3, R0, R1 //; Perform Logical Shift Right on R0 by R1 (2 positions), result in R3
 
	