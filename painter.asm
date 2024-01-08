#s0 for mem-maped io base
#s1 for color
#s2 for paint
#s3 for button
#1px is 2
#1py is 512
.data

.text

init:
	addi	$v0,$zero,128	#x cordinate
	ori	$v1,$zero,16384	#y cordinate
loop:
	lw	$s1,-4($zero)
	lw	$s2,-12($zero)
	lw	$s3,-8($zero)
	sw	$zero,-8($zero)
	beq	$s2,$zero,move
	add	$t0,$v0,$v1
	sh	$s1,($t0)
move:
	andi	$t1,$s3,1	#b0001
	beq	$t1,$zero,move_down
	addi	$v1,$v1,-256
move_down:
	andi	$t1,$s3,2	#b0010
	beq	$t1,$zero,move_left
	addi	$v1,$v1,256
move_left:
	andi	$t1,$s3,4	#b0100
	beq	$t1,$zero,move_right
	addi	$v0,$v0,-2
move_right:
	andi	$t1,$s3,8	#b1000
	beq	$t1,$zero,epilog
	addi	$v0,$v0,2
epilog:
	j	loop
