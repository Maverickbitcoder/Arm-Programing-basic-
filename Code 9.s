.global _start
_start:
	    MOV R0, #5              //; Load value 5 into R0
    MOV R1, #10             //; Load value 10 into R1
    CMP R0, R1              //; Compare R0 and R1 (effectively R0 - R1)
    
    BEQ equal               //; If R0 == R1, branch to 'equal'
    BGT greater             //; If R0 > R1, branch to 'greater'
    BLT less                //; If R0 < R1, branch to 'less'
 equal:
    MOV R2, #1              //; If R0 == R1, set R2 to 1
    B end                   //; Jump to 'end'
 greater:
    MOV R2, #2              //; If R0 > R1, set R2 to 2
    B end                  // ; Jump to 'end'
 less:
    MOV R2, #3              //; If R0 < R1, set R2 to 3
    B  end
end:
	