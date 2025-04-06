.global _start
_start:
	    MOV R4, #0         // ; Initialize i = 0
    MOV R5, #0          //; Initialize sum = 0
    LDR R6, =arr       // ; Load the address of arr into R6
 loop_start:
    CMP R4, #5          //; Compare i with 5
    BGE end_loop        //; If i >= 5, exit the loop
    LDR R7, [R6, R4, LSL #2] // ; Load arr[i] into R7 (R6 + i * 4)
    ADD R5, R5, R7      //; Add arr[i] to sum
    ADD R4, R4, #1     // ; Increment i
    B loop_start      //  ; Branch back to loop_start
 end_loop:
 .data
 arr: .word 3,4,6,7,9
	