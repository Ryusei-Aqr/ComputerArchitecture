	.data		#s1260242
A:	.word 216
B:	.word 34
C:	.word 153
FF:	.word 2020
D:	.word 0
E:	.word 0
result:	.word 0
S:	.word 0

	.text
main:	lw $t0, A
	lw $t1, B
	lw $t2, C
	lw $t3, D
	lw $t4, E
	lw $t5, result
	lw $t6, FF
	
	sub $t3,$t0,$t1
	add $t4,$t3,$t2
	or $t5,$t4,$t6
	
	sw $t5,S
exit:	j exit
