.global _start
_start:
	 MOV R0, #10              // ; Initialize i = 10 (R0 holds i)
    LDR R1, =a                 //; Load address of array a into R1
    LDR R2, =b                 //; Load address of array b into R2
    LDR R3, =c                 //; Load address of array c into R3
 loop_start:
    CMP R0, #0                //; Compare i (R0) with 0
    BEQ loop_end              // ; If i == 0, break out of loop
    LDR R4, [R1, R0, LSL #2] // ; Load a[i] into R4 (shift i by 2 for word offset)
    LDR R5, [R2, R0, LSL #2]  //; Load b[i] into R5 (shift i by 2 for word offset)
    ADD R6, R4, R5            //; Add a[i] and b[i], store result in R6
    STR R6, [R3, R0, LSL #2]  //; Store result in c[i]
    SUB R0, R0, #1            //; Decrement i
    B loop_start               //; Jump back to the start of the loop
 loop_end:
                           // ; End of program
    .data
 a:  .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
 b:  .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
 c:  .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0  ; //Initialize c to 0
	