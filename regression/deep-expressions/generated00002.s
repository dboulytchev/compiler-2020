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
	movl	$169,	%ebx
	movl	$568,	%ecx
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ebx
	movl	global_x3,	%ecx
	movl	$675,	%esi
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	global_x1,	%ecx
	movl	global_x3,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x3,	%esi
	movl	$750,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$851,	%ecx
	movl	$156,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setg	%dl
	movl	%edx,	%ecx
	movl	global_x2,	%esi
	movl	$741,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
	movl	global_x2,	%esi
	movl	$838,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	$6,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
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
	movl	$748,	%ecx
	movl	$463,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$482,	%esi
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
	sete	%dl
	movl	%edx,	%ecx
	movl	$635,	%esi
	movl	$104,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x0,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
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
	setle	%dl
	movl	%edx,	%ecx
	movl	global_x0,	%esi
	movl	$739,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
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
	setge	%dl
	movl	%edx,	%esi
	movl	$248,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
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
	setg	%dl
	movl	%edx,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%dl
	movl	%edx,	%ebx
	movl	$777,	%ecx
	movl	$59,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$685,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$235,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	$293,	%edi
	movl	$849,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$89,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	$509,	%edi
	movl	$386,	-4(%ebp)
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
	movl	$65,	%edi
	movl	$704,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	$563,	-4(%ebp)
	movl	$564,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
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
	setge	%dl
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	$913,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
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
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	$102,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$596,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
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
	movl	global_x0,	%edi
	movl	$572,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$336,	-4(%ebp)
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
	setle	%dl
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
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$509,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setl	%dl
	movl	%edx,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setge	%dl
	movl	%edx,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
	movl	global_x2,	%ecx
	movl	global_x3,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setg	%dl
	movl	%edx,	%ecx
	movl	$615,	%esi
	movl	global_x3,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ecx
	movl	$914,	%esi
	movl	global_x3,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x0,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x2,	%esi
	movl	$61,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	global_x0,	%edi
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
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	$303,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$845,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
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
	setg	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setg	%dl
	movl	%edx,	%ecx
	movl	$980,	%esi
	movl	$293,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	$542,	%edi
	movl	$408,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$649,	-4(%ebp)
	movl	$477,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setl	%dl
	movl	%edx,	-8(%ebp)
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
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ecx
	movl	$370,	%esi
	movl	global_x3,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	$17,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	$120,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	$67,	-4(%ebp)
	movl	$356,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	$237,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$413,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	$520,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	subl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	$174,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	$470,	-4(%ebp)
	movl	global_x2,	%eax
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
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$505,	-4(%ebp)
	movl	$22,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$669,	-8(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$721,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	$204,	-8(%ebp)
	movl	$265,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	$378,	-16(%ebp)
	movl	-12(%ebp),	%eax
	subl	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	subl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
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
	setge	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setge	%dl
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
	movl	global_x2,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%dl
	movl	%edx,	%ecx
	movl	global_x2,	%esi
	movl	global_x2,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	movl	$209,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	$516,	%edi
	movl	$376,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$52,	%esi
	movl	global_x2,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	$535,	%edi
	movl	$811,	-4(%ebp)
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
	setge	%dl
	movl	%edx,	%esi
	movl	$854,	%edi
	movl	$601,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	$468,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$451,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	$576,	-4(%ebp)
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
	movl	global_x1,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
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
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	$161,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$527,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$947,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x2,	%esi
	movl	global_x2,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	$947,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	$383,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	$64,	-4(%ebp)
	movl	$97,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	$920,	%edi
	movl	$957,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$60,	-8(%ebp)
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
	setne	%dl
	movl	%edx,	%edi
	movl	$587,	-4(%ebp)
	movl	$198,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	$877,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setl	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	$487,	%edi
	movl	global_x2,	%eax
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
	movl	$20,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	$304,	-8(%ebp)
	movl	$602,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setle	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$558,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setle	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$42,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	$934,	-12(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-16(%ebp)
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
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setg	%dl
	movl	%edx,	%ecx
	movl	$991,	%esi
	movl	$392,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	global_x2,	%eax
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
	sete	%dl
	movl	%edx,	%esi
	movl	$690,	%edi
	movl	$772,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$614,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
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
	setle	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	$884,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	$970,	-4(%ebp)
	movl	$460,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	$247,	-4(%ebp)
	movl	$656,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setl	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
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
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x3,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
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
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$641,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$362,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setle	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	movl	$949,	-12(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setne	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$372,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$939,	-4(%ebp)
	movl	$902,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$492,	-8(%ebp)
	movl	$769,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
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
	movl	$287,	-4(%ebp)
	movl	$229,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$853,	-8(%ebp)
	movl	$105,	-12(%ebp)
	movl	-8(%ebp),	%eax
	subl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setle	%dl
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
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
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
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$578,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	movl	$152,	-12(%ebp)
	movl	$186,	-16(%ebp)
	movl	-12(%ebp),	%eax
	subl	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	$488,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	movl	$859,	-12(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setle	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	$721,	-12(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-16(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setne	%al
	cmpl	-12(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-12(%ebp)
	movl	$157,	-16(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-20(%ebp),	%eax
	setg	%dl
	movl	%edx,	-16(%ebp)
	movl	-12(%ebp),	%eax
	subl	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setle	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
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
