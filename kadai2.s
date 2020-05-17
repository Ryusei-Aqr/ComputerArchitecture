        .data	#s1260242
A:      .word 58     # A[0] = 58
        .word 41     # A[1] = 41
        .word 22
        .word 20
        .word 19
        .word 45
        .word 54
        .word 87    # A[7] = 87
ADDRESS_A:  .word 20480   #00005000の10進表現
N:      .word 8    # The length of Array
S:      .word 0

	.text
main:	or $t0,$t0,$t0
	lw $t1, ADDRESS_A

	lw   $t2, 0($t1)
        add  $t0, $t0, $t2 

        lw   $t2, 4($t1)
        add  $t0, $t0, $t2

        lw   $t2, 8($t1)
        add  $t0, $t0, $t2

        lw   $t2, 12($t1)
        add  $t0, $t0, $t2

	lw   $t2, 16($t1)
        add  $t0, $t0, $t2 

        lw   $t2, 20($t1)
        add  $t0, $t0, $t2

        lw   $t2, 24($t1)
        add  $t0, $t0, $t2

        lw   $t2, 28($t1)
        add  $t0, $t0, $t2

        sw   $t0, S
exit:   j exit
