.data 
intArray: .space 40
.text
	addi $t0, $t0, 0
	addi $t1, $t1, 0
	addi $t2, $t2, 0
	addi $t3, $t3, 0
	addi $t4, $t4, 0
	
	#carregando array
	
	for:
	addi $t0, $t0, 1
	sw $t0, intArray($t1)
	addi $t1, $t1, 4
	bne $t0, 10, for
	
	li $t1, 0
	lw $t3, intArray($t1)
	

	#comparando e atribuindo o valor do array ao $t3 caso a condição seja atendida
	for2:
	addi $t1, $t1, 4
	lw $t4, intArray($t1)
	sgt $t6, $t4, $t3

	bne $t9, 1, if
	lw $t4, intArray($t1)
	if:
	
	bne $t4, 10, for2
	
	li $v0 ,1
	addi $a0, $t4, 0
	syscall 