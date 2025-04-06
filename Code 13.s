.global _start
_start:
	    MOV R4, #0        //  ; Initialize i = 0
    LDR R5, =A          //; Load address of array A into R5
    LDR R6, =B          //; Load address of array B into R6
    LDR R7, =C          //; Load address of array C into R7
 loop_start:
    CMP R4, #5          //; Compare i with 5
    BGE end_loop        //; If i >= 5, exit the loop
    LDR R8, [R5, R4, LSL #2] // ; Load A[i] into R8
    LDR R9, [R6, R4, LSL #2] // ; Load B[i] into R9
    MUL R10, R8, R9    // ; Multiply A[i] * B[i] and store in R10
    STR R10, [R7, R4, LSL #2] //; Store result in C[i]
    
    ADD R4, R4, #1     // ; Increment i
    B loop_start        //; Branch back to loop_start
 end_loop:
 A:.word 4,6,8,9,9,9
 B:.word 6,7,8,9,2,8
 C:.word 3,6,8,2,1,2
	