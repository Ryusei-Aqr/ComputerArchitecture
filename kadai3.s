        .data	#s1260242
A:      .word 12     # A[0] = 12 c
        .word 34     # A[1] = 34 22
        .word 56     #38
        .word 78     #4e
        .word 90     #5a
        .word 20     # A[5] = 20 14
        .word 20     # A[6] = 20 14
ADDRESS_A:  .word 20480   #00005000の10進表現
N:      .word 7    	  # The length of Array
B:      .space 28   	  # 配列B の格納先 大きさは28バイト=7words

	# 必要なら定数を宣言する
ONE:	.word 1 	  #Const 1
FOUR:	.word 4           #Const 4
ADDRESS_B:	.word 20544   #Address of B is 5040	
        .text
main:	or $t0,$0,$0 	 #Use for Loop
	lw $t1,ADDRESS_A #Memorize address of A
	lw $t2,ONE
	lw $t3,ADDRESS_B #Memorize address of B
	or $t4,$0,$0
	lw $t5,N
	lw $t6,FOUR
	

loop:	beq $t0,$t5,loopend #End the loop if $t0=$t5=N=7
	
	#Substitute to B[0] from A[0]
	lw $t4,0($t1)
	sw $t4,0($t3) #this is different
	
	add $t0,$t0,$t2    #increment
	add $t1,$t1,$t6    #Increment Address of A
	add $t3,$t3,$t6    #Increment Address of B

	j loop
	
loopend: sw $t3,B
	
exit: j exit
