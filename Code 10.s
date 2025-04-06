.global _start
_start:
	  MOV R0, #5                 // ; Load value 5 into R0 (x)
    MOV R1, #3                  //; Load value 3 into R1 (y)
    MOV R2, #2                  //; Load value 2 into R2 (z)
    MOV R3, #0                  //; Initialize count to 0
    CMP R0, R1                  //; Compare x (R0) with y (R1)
    BLE skip_first_check        //; If x <= y, skip the first comparison
    CMP R0, R2                  //; Compare x (R0) with z (R2)
    BLE skip_second_check       //; If x <= z, skip the second comparison
    ADD R3, R3, #1              //; If x > y and x > z, increment count
 skip_first_check:
 skip_second_check:
	