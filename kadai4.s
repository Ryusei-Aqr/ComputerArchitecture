        .data
A:      .word 126	#7e
B:      .word 242	#f2
C:      .word 0
	#add
cnt:	.word 8
	

        .text
main:	or $t0,$0,$0
	lw $t1,A	#multiplicand-9876
	lw $t2,B	#multiplier-5432
	or $t3,$0,$0	#Product resister
	lw $t4,cnt
	addi $t5,$0,1	#Previous preparation
	or $t6,$0,$0
	


Loop:	beq $t0,$t4,loopend
	
	beq $t6,$0,Else #if $t2==$t0 go to Else
	add $t3,$t3,$t1	 #1a
	

Else:	add $t1,$t1,$t1 #shift left
	
	add $t5,$t5,$t5 #shift left
	and $t6,$t2,$t5	#shift right

	addi $t0,$t0,1 #increment

	j Loop
		
loopend:sw $t3,C
	
exit:j exit
