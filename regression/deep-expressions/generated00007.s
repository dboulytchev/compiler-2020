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
	movl	global_x0,	%ebx
	movl	global_x1,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$909,	%ecx
	movl	$548,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
	movl	global_x1,	%ecx
	movl	$212,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	$252,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
	movl	$193,	%ecx
	movl	global_x1,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$475,	%esi
	movl	$456,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
	movl	$66,	%esi
	movl	$82,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x2,	%edi
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
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ebx
	movl	global_x1,	%ecx
	movl	$215,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$401,	%esi
	movl	$960,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setg	%dl
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	$861,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	$321,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x1,	%esi
	movl	$540,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	$565,	%edi
	movl	$642,	-4(%ebp)
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
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
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
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ebx
	movl	global_x0,	%ecx
	movl	global_x3,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%dl
	movl	%edx,	%ecx
	movl	$336,	%esi
	movl	$69,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$625,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	$286,	%edi
	movl	$248,	-4(%ebp)
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
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ecx
	movl	global_x0,	%esi
	movl	$707,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	$650,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	$449,	%edi
	movl	$415,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
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
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
	movl	$334,	%esi
	movl	global_x0,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	$594,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x0,	%edi
	movl	$805,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$54,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	$584,	-4(%ebp)
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
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$95,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	$533,	-8(%ebp)
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
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
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
	movl	global_x1,	%ecx
	movl	$53,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	$965,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$767,	%esi
	movl	$824,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	$453,	%edi
	movl	$950,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
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
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$544,	%esi
	movl	global_x3,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x2,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	$23,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$908,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
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
	movl	global_x1,	%esi
	movl	global_x0,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
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
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	$456,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	$856,	%edi
	movl	$573,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$993,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$85,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
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
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
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
	movl	$295,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	$413,	%edi
	movl	$253,	-4(%ebp)
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
	movl	global_x1,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$945,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
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
	movl	$310,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
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
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$258,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x0,	%eax
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
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x2,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
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
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	$265,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setg	%dl
	movl	%edx,	-8(%ebp)
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
	movl	$299,	-4(%ebp)
	movl	$475,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	$735,	-8(%ebp)
	movl	$206,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
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
	movl	$813,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	imull	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%dl
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
	andl	%eax,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%dl
	movl	%edx,	%ebx
	movl	$323,	%ecx
	movl	$486,	%esi
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x3,	%esi
	movl	$630,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x0,	%esi
	movl	$312,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setg	%dl
	movl	%edx,	%ecx
	movl	$370,	%esi
	movl	$374,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	$937,	%edi
	movl	$956,	-4(%ebp)
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
	movl	global_x1,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$870,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	$798,	%edi
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
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x0,	%edi
	movl	$795,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	$428,	%edi
	movl	$5,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$760,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$862,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	$912,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
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
	setl	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
	movl	$908,	%esi
	movl	global_x3,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	$121,	%edi
	movl	$841,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$940,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	$372,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
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
	movl	$337,	-4(%ebp)
	movl	$71,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
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
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$765,	-8(%ebp)
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
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$437,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$644,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setg	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	$379,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setge	%dl
	movl	%edx,	-12(%ebp)
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
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$521,	%esi
	movl	global_x0,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	$878,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x0,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	$574,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$586,	-8(%ebp)
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
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	$12,	-8(%ebp)
	movl	global_x2,	%eax
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
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x2,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$317,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	$621,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setg	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$295,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	$94,	-8(%ebp)
	movl	$375,	-12(%ebp)
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
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	$326,	-12(%ebp)
	movl	$844,	-16(%ebp)
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
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	$733,	%edi
	movl	$183,	-4(%ebp)
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
	setle	%dl
	movl	%edx,	%edi
	movl	$166,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	$680,	-8(%ebp)
	movl	$869,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
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
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$539,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$968,	-8(%ebp)
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
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-16(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setne	%al
	cmpl	-12(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-12(%ebp)
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
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$680,	-4(%ebp)
	movl	$407,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
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
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$148,	-12(%ebp)
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	$960,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setl	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$556,	-8(%ebp)
	movl	$515,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	movl	$736,	-12(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setle	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setg	%dl
	movl	%edx,	-8(%ebp)
	movl	$337,	-12(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	addl	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
	movl	$405,	-16(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	subl	-20(%ebp),	%eax
	movl	%eax,	-16(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setne	%al
	cmpl	-12(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
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
