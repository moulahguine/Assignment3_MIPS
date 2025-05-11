.data
msg: .asciiz "(34 + 2) * 2 is "   
.text
main:
    li $a0, 34         
    jal foo            
    move $t0, $v0      

    li $v0, 4          
    la $a0, msg        
    syscall

    li $v0, 1         
    move $a0, $t0
    syscall

    li $v0, 10
    syscall

foo:
    addi $sp, $sp, -8     
    sw $ra, 4($sp)        
    sw $a0, 0($sp)        

    jal bar               
    move $t1, $v0         

    sll $v0, $t1, 1       

    lw $ra, 4($sp)       
    lw $a0, 0($sp)       
    addi $sp, $sp, 8     
    jr $ra               

bar:
    addi $v0, $a0, 2      
    jr $ra
