	.global	main
	.data
global_x0:	.int	0
global_x1:	.int	0
global_x2:	.int	0
global_x3:	.int	0
global_y:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$20,	%esp
	call	Lread
	movl	%eax,	%ebx
	movl	%ebx,	global_x0
	call	Lread
	movl	%eax,	%ebx
	movl	%ebx,	global_x1
	call	Lread
	movl	%eax,	%ebx
	movl	%ebx,	global_x2
	call	Lread
	movl	%eax,	%ebx
	movl	%ebx,	global_x3
	movl	global_x1,	%ebx
	movl	$576,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	global_x0,	%ecx
	movl	global_x0,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ebx
	movl	$6,	%ecx
	movl	$244,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$838,	%esi
	movl	$617,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ebx
	movl	global_x2,	%ecx
	movl	global_x3,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x3,	%esi
	movl	$296,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$628,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	$609,	%edi
	movl	$281,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setge	%dl
	movl	%edx,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$729,	%ecx
	movl	$619,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ecx
	movl	$446,	%esi
	movl	global_x1,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	movl	global_x2,	%esi
	movl	$460,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	$609,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
	movl	$7,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	$490,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	$821,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$979,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setge	%dl
	movl	%edx,	%ebx
	movl	$274,	%ecx
	movl	global_x2,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
	movl	$72,	%esi
	movl	global_x3,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	$885,	%edi
	movl	$331,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$731,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	$160,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$758,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	movl	global_x2,	%esi
	movl	$5,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x3,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	$109,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	$978,	-4(%ebp)
	movl	$784,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	$943,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	$232,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setg	%dl
	movl	%edx,	%ebx
	movl	$323,	%ecx
	movl	$255,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setg	%dl
	movl	%edx,	%ecx
	movl	global_x0,	%esi
	movl	global_x3,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%dl
	movl	%edx,	%ecx
	movl	$984,	%esi
	movl	global_x0,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	$544,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setg	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$651,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	$674,	%edi
	movl	$988,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	$397,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$588,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
	movl	$711,	%esi
	movl	$670,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	$669,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	$84,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$732,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	$250,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	$399,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$955,	-8(%ebp)
	movl	$694,	-12(%ebp)
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$444,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x2,	%edi
	movl	$752,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	$212,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	$510,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$44,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	$416,	-8(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	$261,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	$238,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$784,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	subl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$742,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$619,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setg	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-16(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setne	%al
	cmpl	-12(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ecx
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ebx
	movl	$187,	%ecx
	movl	global_x3,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$362,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	$480,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$797,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	$745,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	$95,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	$99,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x2,	%esi
	movl	global_x1,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	$719,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	$84,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$109,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%dl
	movl	%edx,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$288,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	global_x2,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	$753,	%edi
	movl	$79,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$708,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	$422,	%edi
	movl	$657,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	$906,	-4(%ebp)
	movl	$301,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$61,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	$230,	%edi
	movl	$176,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	$433,	-4(%ebp)
	movl	$458,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	$596,	-4(%ebp)
	movl	$571,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$180,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	$906,	-4(%ebp)
	movl	$383,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$642,	-12(%ebp)
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$982,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setne	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	subl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	movl	$653,	%esi
	movl	$799,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x2,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	$156,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	$720,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$547,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$553,	-8(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x0,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$735,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$70,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setg	%dl
	movl	%edx,	-8(%ebp)
	movl	$544,	-12(%ebp)
	movl	$509,	-16(%ebp)
	movl	-12(%ebp),	%eax
	addl	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	$335,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	$86,	-4(%ebp)
	movl	$322,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$565,	-8(%ebp)
	movl	$259,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	$537,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	$549,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setle	%dl
	movl	%edx,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$461,	-12(%ebp)
	movl	-8(%ebp),	%eax
	subl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$876,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setg	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$774,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	$668,	-8(%ebp)
	movl	$941,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$105,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	$466,	-16(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setne	%al
	cmpl	-12(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$879,	-8(%ebp)
	movl	$67,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	$254,	-16(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setne	%al
	cmpl	-12(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	subl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	$160,	-12(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setne	%dl
	movl	%edx,	-12(%ebp)
	movl	$70,	-16(%ebp)
	movl	$956,	-20(%ebp)
	movl	-16(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-20(%ebp),	%eax
	setl	%dl
	movl	%edx,	-16(%ebp)
	movl	-12(%ebp),	%eax
	subl	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	global_y
	movl	global_y,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
