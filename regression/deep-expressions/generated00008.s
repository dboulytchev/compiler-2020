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
	movl	$86,	%ebx
	movl	global_x3,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setle	%dl
	movl	%edx,	%ebx
	movl	$535,	%ecx
	movl	global_x3,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	global_x3,	%ecx
	movl	global_x2,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x1,	%esi
	movl	$173,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	sete	%dl
	movl	%edx,	%ebx
	movl	global_x3,	%ecx
	movl	global_x0,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x3,	%esi
	movl	$836,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x3,	%edi
	movl	$403,	-4(%ebp)
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
	movl	global_x0,	%ecx
	movl	$175,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	global_x0,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	global_x1,	%esi
	movl	$460,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	$895,	%edi
	movl	$440,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$702,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	$342,	%edi
	movl	$66,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	$754,	%edi
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
	movl	$267,	-4(%ebp)
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
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$56,	%ecx
	movl	global_x2,	%esi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ecx
	movl	global_x2,	%esi
	movl	global_x2,	%edi
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
	orl	%eax,	%edx
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$770,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	$453,	%edi
	movl	$97,	-4(%ebp)
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
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	movl	$948,	%esi
	movl	$730,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	$859,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	$657,	%edi
	movl	$367,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$22,	-8(%ebp)
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
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%dl
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	global_x3,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	$399,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	sete	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	$180,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setl	%dl
	movl	%edx,	%edi
	movl	$258,	-4(%ebp)
	movl	$75,	-8(%ebp)
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
	setg	%dl
	movl	%edx,	%esi
	movl	$127,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$141,	-8(%ebp)
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
	movl	$620,	-4(%ebp)
	movl	$33,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$264,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setg	%dl
	movl	%edx,	-8(%ebp)
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
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%dl
	movl	%edx,	%ebx
	movl	global_x2,	%ecx
	movl	global_x1,	%esi
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
	movl	$316,	%esi
	movl	$780,	%edi
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$631,	%esi
	movl	global_x2,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x3,	%edi
	movl	$287,	-4(%ebp)
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
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	$740,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	$931,	%edi
	movl	$579,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setg	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	$331,	-4(%ebp)
	movl	$74,	-8(%ebp)
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
	setle	%dl
	movl	%edx,	%ecx
	movl	global_x3,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	$407,	%edi
	movl	$159,	-4(%ebp)
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
	movl	global_x3,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$589,	-4(%ebp)
	movl	global_x0,	%eax
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
	setg	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	$360,	-4(%ebp)
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
	movl	$699,	-4(%ebp)
	movl	$781,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	$594,	-8(%ebp)
	movl	global_x0,	%eax
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
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	movl	global_x2,	%esi
	movl	$182,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x2,	%edi
	movl	$208,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	$647,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setge	%dl
	movl	%edx,	%edi
	movl	$112,	-4(%ebp)
	movl	$528,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$637,	-8(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setne	%al
	cmpl	-4(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	$344,	-8(%ebp)
	movl	$616,	-12(%ebp)
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
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setne	%al
	cmpl	%esi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	$789,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$953,	-4(%ebp)
	movl	global_x1,	%eax
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
	andl	%eax,	%edx
	movl	%edx,	%edi
	movl	$404,	-4(%ebp)
	movl	$222,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$90,	-8(%ebp)
	movl	$872,	-12(%ebp)
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
	setne	%dl
	movl	%edx,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$659,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	$271,	-8(%ebp)
	movl	global_x1,	%eax
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
	movl	$352,	-8(%ebp)
	movl	$957,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setg	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	$131,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setge	%dl
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
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%dl
	movl	%edx,	%ebx
	movl	global_x3,	%ecx
	movl	$701,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
	movl	global_x1,	%esi
	movl	global_x2,	%edi
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setle	%dl
	movl	%edx,	%ecx
	movl	global_x2,	%esi
	movl	$320,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setge	%dl
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	global_x3,	%eax
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
	andl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
	movl	$401,	%esi
	movl	$275,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	$635,	-4(%ebp)
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
	movl	$702,	%edi
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
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$508,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
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
	movl	$291,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x0,	%edi
	movl	global_x1,	%eax
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
	movl	$69,	%edi
	movl	$462,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	$166,	-4(%ebp)
	movl	global_x3,	%eax
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
	sete	%dl
	movl	%edx,	%esi
	movl	$171,	%edi
	movl	$508,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	$109,	-4(%ebp)
	movl	$765,	-8(%ebp)
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
	movl	$982,	-4(%ebp)
	movl	$778,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$591,	-8(%ebp)
	movl	$795,	-12(%ebp)
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
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setne	%al
	cmpl	%ecx,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%ecx
	movl	$399,	%esi
	movl	$31,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setl	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	global_x3,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x2,	%eax
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
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x2,	%edi
	movl	$367,	-4(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%al
	cmpl	%edi,	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	$411,	-4(%ebp)
	movl	global_x0,	%eax
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
	orl	%eax,	%edx
	movl	%edx,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$428,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$503,	-8(%ebp)
	movl	$187,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
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
	sete	%dl
	movl	%edx,	%esi
	movl	$809,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$351,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$482,	-4(%ebp)
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
	movl	$711,	-8(%ebp)
	movl	$962,	-12(%ebp)
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
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$149,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
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
	orl	%eax,	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$868,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setl	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	global_x1,	%eax
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
	setge	%dl
	movl	%edx,	%esi
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
	movl	$320,	%esi
	movl	$952,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	global_x1,	%edi
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	$8,	%edi
	movl	$59,	-4(%ebp)
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$294,	-8(%ebp)
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
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	global_x1,	%edi
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setle	%dl
	movl	%edx,	%edi
	movl	global_x1,	%eax
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
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$122,	-4(%ebp)
	movl	$585,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
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
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setg	%dl
	movl	%edx,	%esi
	movl	global_x2,	%edi
	movl	$537,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$874,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	sete	%dl
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$992,	-4(%ebp)
	movl	$462,	-8(%ebp)
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
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
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
	andl	%eax,	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%eax
	xorl	%edx,	%edx
	cmpl	-4(%ebp),	%eax
	setne	%dl
	movl	%edx,	%edi
	movl	$431,	-4(%ebp)
	movl	$260,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setg	%dl
	movl	%edx,	-4(%ebp)
	movl	$496,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
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
	movl	global_x2,	%eax
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
	movl	$658,	-12(%ebp)
	movl	$498,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setle	%dl
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	xorl	%edx,	%edx
	cmpl	%edi,	%eax
	setle	%dl
	movl	%edx,	%esi
	movl	$211,	%edi
	movl	$927,	-4(%ebp)
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$341,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
	movl	$547,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$55,	-8(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
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
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$190,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setle	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$312,	-8(%ebp)
	movl	$126,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
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
	movl	$847,	-4(%ebp)
	movl	$767,	-8(%ebp)
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
	movl	$239,	-8(%ebp)
	movl	$766,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setge	%dl
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-8(%ebp),	%eax
	setl	%dl
	movl	%edx,	-4(%ebp)
	movl	$161,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	sete	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	$583,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setge	%dl
	movl	%edx,	-12(%ebp)
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%al
	cmpl	-8(%ebp),	%edx
	setne	%dl
	orl	%eax,	%edx
	movl	%edx,	-8(%ebp)
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
	movl	$249,	-12(%ebp)
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	global_x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	addl	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-12(%ebp),	%eax
	setne	%dl
	movl	%edx,	-8(%ebp)
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	$139,	-16(%ebp)
	movl	-12(%ebp),	%eax
	imull	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	global_x3,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-20(%ebp),	%eax
	setl	%dl
	movl	%edx,	-16(%ebp)
	movl	-12(%ebp),	%eax
	xorl	%edx,	%edx
	cmpl	-16(%ebp),	%eax
	setg	%dl
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
	movl	%ebx,	global_y
	movl	global_y,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
