.data
message: .asciiz "double of 15 is "

.text
main:
    li $a0, 15   
    jal doubleInt
    move $t0, $v0


    li $v0, 4
    la $a0, message
    syscall


    li $v0, 1
    move $a0, $t0
    syscall


    li $v0, 10
    syscall


doubleInt:
    sll $v0, $a0, 1
    jr $ra
