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
	movl	$833,	%ebx
	movl	$158,	%ecx
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
	movl	global_x0,	%ecx
	movl	$656,	%esi
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
	movl	$866,	%ecx
	movl	global_x3,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$743,	%esi
	movl	global_x0,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setg	%dl
	movl	%edx,	%ecx
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$744,	%ecx
	movl	global_x1,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setge	%dl
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	$123,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	$348,	%edi
	movl	$185,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$607,	%ecx
	movl	global_x1,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setge	%dl
	movl	%edx,	%ecx
	movl	global_x2,	%esi
	movl	global_x2,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ecx
	movl	$6,	%esi
	movl	$729,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	$151,	-4(%ebp)
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
	sete	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setge	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	global_x2,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x3,	%edi
	movl	$770,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	$237,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$326,	-8(%ebp)
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
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
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
	imull	%ecx,	%eax
	movl	%eax,	%ebx
	movl	global_x1,	%ecx
	movl	global_x1,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$933,	%edi
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
	movl	global_x1,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	$528,	%edi
	movl	$165,	-4(%ebp)
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
	setne	%dl
	movl	%edx,	%ecx
	movl	$323,	%esi
	movl	global_x3,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	$517,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	$425,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
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
	movl	$621,	%esi
	movl	$867,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	$459,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
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
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
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
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
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
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
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
	setge	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$860,	-8(%ebp)
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
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	subl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
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
	andl	%eax,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$68,	%ecx
	movl	global_x0,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%dl
	movl	%edx,	%ecx
	movl	$598,	%esi
	movl	global_x2,	%edi
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
	movl	$553,	%esi
	movl	global_x3,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x0,	%esi
	movl	$114,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	$979,	%edi
	movl	$565,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	$996,	%edi
	movl	$800,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$56,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
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
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	movl	$387,	%esi
	movl	$818,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	$541,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x0,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$807,	-4(%ebp)
	movl	global_x3,	%eax
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
	sete	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	$446,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x2,	%eax
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
	movl	$623,	-4(%ebp)
	movl	$98,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	$819,	-8(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setg	%dl
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
	setg	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	movl	$716,	%esi
	movl	$244,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	$197,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	$152,	-4(%ebp)
	movl	$7,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
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
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	$56,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$461,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$663,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$683,	-12(%ebp)
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
	movl	global_x1,	%edi
	movl	$502,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x3,	%eax
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
	setle	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$215,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$985,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
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
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$210,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	$446,	-8(%ebp)
	movl	$903,	-12(%ebp)
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
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setle	%dl
	movl	%edx,	-12(%ebp)
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
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%dl
	movl	%edx,	%ebx
	movl	$997,	%ecx
	movl	global_x3,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x1,	%esi
	movl	global_x0,	%edi
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
	movl	global_x2,	%esi
	movl	$189,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	$744,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	movl	$29,	%esi
	movl	$296,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	$687,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
	movl	$534,	%esi
	movl	$167,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	$246,	%edi
	movl	$884,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	$675,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$241,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
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
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	$335,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	global_x1,	%eax
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
	movl	$125,	-4(%ebp)
	movl	$400,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$750,	-12(%ebp)
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
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
	setg	%dl
	movl	%edx,	%ecx
	movl	$610,	%esi
	movl	$681,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	$215,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	$890,	%edi
	movl	$177,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	$211,	-4(%ebp)
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
	setl	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%dl
	movl	%edx,	%esi
	movl	$782,	%edi
	movl	$575,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$832,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$184,	-8(%ebp)
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
	movl	$834,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setg	%dl
	movl	%edx,	-8(%ebp)
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
	sete	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	$84,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$982,	-4(%ebp)
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
	movl	$702,	-8(%ebp)
	movl	$134,	-12(%ebp)
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
	setl	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	$775,	-8(%ebp)
	movl	$117,	-12(%ebp)
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
	setne	%dl
	movl	%edx,	-4(%ebp)
	movl	$422,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setle	%dl
	movl	%edx,	-8(%ebp)
	movl	$998,	-12(%ebp)
	movl	$972,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	sete	%dl
	movl	%edx,	-12(%ebp)
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
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setge	%dl
	movl	%edx,	%ecx
	movl	global_x2,	%esi
	movl	global_x2,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	global_x1,	%edi
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
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	$168,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	$558,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	$342,	-4(%ebp)
	movl	global_x3,	%eax
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
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$578,	-8(%ebp)
	movl	$572,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
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
	movl	global_x1,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$356,	-8(%ebp)
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
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x0,	%eax
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
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$249,	-4(%ebp)
	movl	$561,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	$35,	-8(%ebp)
	movl	$912,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setl	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setle	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setle	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	$695,	%edi
	movl	$58,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	$837,	-4(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$184,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%dl
	movl	%edx,	-4(%ebp)
	movl	$400,	-8(%ebp)
	movl	$149,	-12(%ebp)
	movl	-8(%ebp),	%eax
	subl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	$132,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$231,	-12(%ebp)
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
	movl	$696,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setl	%dl
	movl	%edx,	-8(%ebp)
	movl	$895,	-12(%ebp)
	movl	$162,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setg	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	sete	%dl
	movl	%edx,	%edi
	movl	$163,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	$360,	-8(%ebp)
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
	setge	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	movl	$623,	-12(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setge	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%dl
	movl	%edx,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$278,	-8(%ebp)
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
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	$317,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setge	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
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
	movl	$443,	-16(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-20(%ebp),	%eax
	setg	%dl
	movl	%edx,	-16(%ebp)
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
	orl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
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
	movl	%ebx,	global_y
	movl	global_y,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
