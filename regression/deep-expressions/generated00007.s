	.global	main
	.data
global_x0:	.int	0
global_x1:	.int	0
global_x2:	.int	0
global_x3:	.int	0
global_y:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL x0
# GLOBAL x1
# GLOBAL x2
# GLOBAL x3
# GLOBAL y
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST x0
	movl	%ebx,	global_x0
# DROP
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST x1
	movl	%ebx,	global_x1
# DROP
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST x2
	movl	%ebx,	global_x2
# DROP
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST x3
	movl	%ebx,	global_x3
# DROP
# LD x0
	movl	global_x0,	%ebx
# LD x1
	movl	global_x1,	%ecx
# BINOP -
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
# CONST 909
	movl	$909,	%ecx
# CONST 548
	movl	$548,	%esi
# BINOP <=
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	setle	%al
	movl	%eax,	%ecx
# BINOP <
	movl	%ebx,	%edx
	xorl	%eax,	%eax
	cmpl	%ecx,	%edx
	setl	%al
	movl	%eax,	%ebx
# LD x1
	movl	global_x1,	%ecx
# CONST 212
	movl	$212,	%esi
# BINOP !!
	movl	%ecx,	%eax
	orl	%esi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ecx
# LD x1
	movl	global_x1,	%esi
# CONST 252
	movl	$252,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# BINOP -
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
# BINOP <
	movl	%ebx,	%edx
	xorl	%eax,	%eax
	cmpl	%ecx,	%edx
	setl	%al
	movl	%eax,	%ebx
# CONST 193
	movl	$193,	%ecx
# LD x1
	movl	global_x1,	%esi
# BINOP -
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
# CONST 475
	movl	$475,	%esi
# CONST 456
	movl	$456,	%edi
# BINOP !=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setne	%al
	movl	%eax,	%esi
# BINOP *
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
# CONST 66
	movl	$66,	%esi
# CONST 82
	movl	$82,	%edi
# BINOP !!
	movl	%esi,	%eax
	orl	%edi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# BINOP !!
	movl	%edi,	%eax
	orl	-4(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
# BINOP >
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setg	%al
	movl	%eax,	%esi
# BINOP ==
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	sete	%al
	movl	%eax,	%ecx
# BINOP &&
	movl	%ecx,	%eax
	andl	%ecx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%ebx,	%edx
	andl	%ebx,	%edx
	movl	$0,	%edx
	setne	%dl
	andl	%edx,	%eax
	setne	%al
	movl	%eax,	%ebx
# LD x1
	movl	global_x1,	%ecx
# CONST 215
	movl	$215,	%esi
# BINOP +
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
# CONST 401
	movl	$401,	%esi
# CONST 960
	movl	$960,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# BINOP >
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	setg	%al
	movl	%eax,	%ecx
# LD x1
	movl	global_x1,	%esi
# CONST 861
	movl	$861,	%edi
# BINOP >=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setge	%al
	movl	%eax,	%esi
# CONST 321
	movl	$321,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP <=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setle	%al
	movl	%eax,	%edi
# BINOP -
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
# BINOP -
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
# LD x1
	movl	global_x1,	%esi
# CONST 540
	movl	$540,	%edi
# BINOP <
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setl	%al
	movl	%eax,	%esi
# CONST 565
	movl	$565,	%edi
# CONST 642
	movl	$642,	-4(%ebp)
# BINOP >
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setg	%al
	movl	%eax,	%edi
# BINOP !!
	movl	%esi,	%eax
	orl	%edi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# BINOP *
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP !=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP <=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setle	%al
	movl	%eax,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# BINOP -
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
# BINOP !!
	movl	%ebx,	%eax
	orl	%ecx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ebx
# LD x0
	movl	global_x0,	%ecx
# LD x3
	movl	global_x3,	%esi
# BINOP !=
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	setne	%al
	movl	%eax,	%ecx
# CONST 336
	movl	$336,	%esi
# CONST 69
	movl	$69,	%edi
# BINOP >
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setg	%al
	movl	%eax,	%esi
# BINOP !=
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	setne	%al
	movl	%eax,	%ecx
# LD x3
	movl	global_x3,	%esi
# CONST 625
	movl	$625,	%edi
# BINOP <
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setl	%al
	movl	%eax,	%esi
# CONST 286
	movl	$286,	%edi
# CONST 248
	movl	$248,	-4(%ebp)
# BINOP >=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setge	%al
	movl	%eax,	%edi
# BINOP !!
	movl	%esi,	%eax
	orl	%edi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# BINOP !!
	movl	%ecx,	%eax
	orl	%esi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ecx
# LD x0
	movl	global_x0,	%esi
# CONST 707
	movl	$707,	%edi
# BINOP -
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# CONST 650
	movl	$650,	-4(%ebp)
# BINOP *
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP >=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setge	%al
	movl	%eax,	%esi
# CONST 449
	movl	$449,	%edi
# CONST 415
	movl	$415,	-4(%ebp)
# BINOP -
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# BINOP >
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setg	%al
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setge	%al
	movl	%eax,	%edi
# BINOP >=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setge	%al
	movl	%eax,	%esi
# BINOP *
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
# CONST 334
	movl	$334,	%esi
# LD x0
	movl	global_x0,	%edi
# BINOP >=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setge	%al
	movl	%eax,	%esi
# CONST 594
	movl	$594,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setge	%al
	movl	%eax,	%edi
# BINOP +
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
# LD x0
	movl	global_x0,	%edi
# CONST 805
	movl	$805,	-4(%ebp)
# BINOP <=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setle	%al
	movl	%eax,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# CONST 54
	movl	$54,	-8(%ebp)
# BINOP <=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# CONST 584
	movl	$584,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP &&
	movl	-8(%ebp),	%eax
	andl	-8(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	-4(%ebp),	%edx
	andl	-4(%ebp),	%edx
	movl	$0,	%edx
	setne	%dl
	andl	%edx,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# CONST 95
	movl	$95,	-8(%ebp)
# BINOP >=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	-4(%ebp)
# CONST 533
	movl	$533,	-8(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
# BINOP &&
	movl	-12(%ebp),	%eax
	andl	-12(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	-8(%ebp),	%edx
	andl	-8(%ebp),	%edx
	movl	$0,	%edx
	setne	%dl
	andl	%edx,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP ==
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	sete	%al
	movl	%eax,	%edi
# BINOP <
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setl	%al
	movl	%eax,	%esi
# BINOP <
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	setl	%al
	movl	%eax,	%ecx
# BINOP !!
	movl	%ebx,	%eax
	orl	%ecx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ebx
# LD x1
	movl	global_x1,	%ecx
# CONST 53
	movl	$53,	%esi
# BINOP <=
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	setle	%al
	movl	%eax,	%ecx
# LD x1
	movl	global_x1,	%esi
# CONST 965
	movl	$965,	%edi
# BINOP >=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setge	%al
	movl	%eax,	%esi
# BINOP +
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
# CONST 767
	movl	$767,	%esi
# CONST 824
	movl	$824,	%edi
# BINOP !=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setne	%al
	movl	%eax,	%esi
# CONST 453
	movl	$453,	%edi
# CONST 950
	movl	$950,	-4(%ebp)
# BINOP <
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setl	%al
	movl	%eax,	%edi
# BINOP &&
	movl	%edi,	%eax
	andl	%edi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%esi,	%edx
	andl	%esi,	%edx
	movl	$0,	%edx
	setne	%dl
	andl	%edx,	%eax
	setne	%al
	movl	%eax,	%esi
# BINOP +
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
# CONST 544
	movl	$544,	%esi
# LD x3
	movl	global_x3,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# BINOP >=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setge	%al
	movl	%eax,	%esi
# LD x3
	movl	global_x3,	%edi
# CONST 23
	movl	$23,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# CONST 908
	movl	$908,	-8(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setl	%al
	movl	%eax,	%edi
# BINOP >=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setge	%al
	movl	%eax,	%esi
# BINOP >=
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	setge	%al
	movl	%eax,	%ecx
# LD x1
	movl	global_x1,	%esi
# LD x0
	movl	global_x0,	%edi
# BINOP !!
	movl	%esi,	%eax
	orl	%edi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# BINOP ==
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	sete	%al
	movl	%eax,	%edi
# BINOP !!
	movl	%esi,	%eax
	orl	%edi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# CONST 456
	movl	$456,	-4(%ebp)
# BINOP ==
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	sete	%al
	movl	%eax,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# BINOP <
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setge	%al
	movl	%eax,	%edi
# BINOP +
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
# CONST 856
	movl	$856,	%edi
# CONST 573
	movl	$573,	-4(%ebp)
# BINOP -
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# CONST 993
	movl	$993,	-8(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# CONST 85
	movl	$85,	-8(%ebp)
# BINOP !!
	movl	-4(%ebp),	%eax
	orl	-8(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# BINOP <=
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setle	%al
	movl	%eax,	-8(%ebp)
# BINOP <
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	-4(%ebp)
# BINOP -
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP <=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setle	%al
	movl	%eax,	%esi
# BINOP <
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	setl	%al
	movl	%eax,	%ecx
# LD x3
	movl	global_x3,	%esi
# CONST 295
	movl	$295,	%edi
# BINOP <=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setle	%al
	movl	%eax,	%esi
# CONST 413
	movl	$413,	%edi
# CONST 253
	movl	$253,	-4(%ebp)
# BINOP &&
	movl	-4(%ebp),	%eax
	andl	-4(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%edi,	%edx
	andl	%edi,	%edx
	movl	$0,	%edx
	setne	%dl
	andl	%edx,	%eax
	setne	%al
	movl	%eax,	%edi
# BINOP !!
	movl	%esi,	%eax
	orl	%edi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# BINOP ==
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	sete	%al
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# CONST 945
	movl	$945,	-8(%ebp)
# BINOP >
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setg	%al
	movl	%eax,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# BINOP >=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setge	%al
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP !!
	movl	%edi,	%eax
	orl	-4(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
# CONST 310
	movl	$310,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# BINOP ==
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setl	%al
	movl	%eax,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# CONST 258
	movl	$258,	-8(%ebp)
# BINOP <=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# BINOP *
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP !=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP >
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setg	%al
	movl	%eax,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setl	%al
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# BINOP >
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setg	%al
	movl	%eax,	-4(%ebp)
# BINOP !!
	movl	%edi,	%eax
	orl	-4(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP ==
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	-4(%ebp)
# CONST 265
	movl	$265,	-8(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
# BINOP >
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setg	%al
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# CONST 299
	movl	$299,	-4(%ebp)
# CONST 475
	movl	$475,	-8(%ebp)
# BINOP >=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	-4(%ebp)
# CONST 735
	movl	$735,	-8(%ebp)
# CONST 206
	movl	$206,	-12(%ebp)
# BINOP ==
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	sete	%al
	movl	%eax,	-8(%ebp)
# BINOP &&
	movl	-8(%ebp),	%eax
	andl	-8(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	-4(%ebp),	%edx
	andl	-4(%ebp),	%edx
	movl	$0,	%edx
	setne	%dl
	andl	%edx,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# CONST 813
	movl	$813,	-12(%ebp)
# BINOP >=
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setge	%al
	movl	%eax,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-16(%ebp)
# BINOP *
	movl	-12(%ebp),	%eax
	imull	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
# BINOP !=
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setne	%al
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP ==
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	sete	%al
	movl	%eax,	%esi
# BINOP &&
	movl	%esi,	%eax
	andl	%esi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%ecx,	%edx
	andl	%ecx,	%edx
	movl	$0,	%edx
	setne	%dl
	andl	%edx,	%eax
	setne	%al
	movl	%eax,	%ecx
# BINOP !=
	movl	%ebx,	%edx
	xorl	%eax,	%eax
	cmpl	%ecx,	%edx
	setne	%al
	movl	%eax,	%ebx
# CONST 323
	movl	$323,	%ecx
# CONST 486
	movl	$486,	%esi
# BINOP *
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
# LD x3
	movl	global_x3,	%esi
# CONST 630
	movl	$630,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# BINOP -
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
# LD x0
	movl	global_x0,	%esi
# CONST 312
	movl	$312,	%edi
# BINOP >=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setge	%al
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# BINOP *
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP -
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
# BINOP >
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	setg	%al
	movl	%eax,	%ecx
# CONST 370
	movl	$370,	%esi
# CONST 374
	movl	$374,	%edi
# BINOP >=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setge	%al
	movl	%eax,	%esi
# CONST 937
	movl	$937,	%edi
# CONST 956
	movl	$956,	-4(%ebp)
# BINOP >=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setge	%al
	movl	%eax,	%edi
# BINOP !!
	movl	%esi,	%eax
	orl	%edi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# BINOP *
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
# CONST 870
	movl	$870,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP *
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# BINOP !!
	movl	%ecx,	%eax
	orl	%esi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ecx
# LD x1
	movl	global_x1,	%esi
# LD x1
	movl	global_x1,	%edi
# BINOP <
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setl	%al
	movl	%eax,	%esi
# CONST 798
	movl	$798,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP &&
	movl	-4(%ebp),	%eax
	andl	-4(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%edi,	%edx
	andl	%edi,	%edx
	movl	$0,	%edx
	setne	%dl
	andl	%edx,	%eax
	setne	%al
	movl	%eax,	%edi
# BINOP +
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
# LD x0
	movl	global_x0,	%edi
# CONST 795
	movl	$795,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	%edi,	%eax
	addl	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP +
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
# CONST 428
	movl	$428,	%edi
# CONST 5
	movl	$5,	-4(%ebp)
# BINOP *
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
# CONST 760
	movl	$760,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP ==
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	-4(%ebp)
# BINOP *
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# CONST 862
	movl	$862,	-8(%ebp)
# BINOP ==
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	-4(%ebp)
# CONST 912
	movl	$912,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# BINOP ==
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	sete	%al
	movl	%eax,	-8(%ebp)
# BINOP <
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setl	%al
	movl	%eax,	%edi
# BINOP !=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setne	%al
	movl	%eax,	%esi
# BINOP *
	movl	%ecx,	%eax
	imull	%esi,	%eax
	movl	%eax,	%ecx
# CONST 908
	movl	$908,	%esi
# LD x3
	movl	global_x3,	%edi
# BINOP >
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setg	%al
	movl	%eax,	%esi
# LD x0
	movl	global_x0,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP ==
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	sete	%al
	movl	%eax,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# CONST 121
	movl	$121,	%edi
# CONST 841
	movl	$841,	-4(%ebp)
# BINOP ==
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	sete	%al
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# CONST 940
	movl	$940,	-8(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setl	%al
	movl	%eax,	%edi
# BINOP &&
	movl	%edi,	%eax
	andl	%edi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%esi,	%edx
	andl	%esi,	%edx
	movl	$0,	%edx
	setne	%dl
	andl	%edx,	%eax
	setne	%al
	movl	%eax,	%esi
# LD x0
	movl	global_x0,	%edi
# CONST 372
	movl	$372,	-4(%ebp)
# BINOP >
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setg	%al
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# BINOP <=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	-4(%ebp)
# BINOP !!
	movl	%edi,	%eax
	orl	-4(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
# CONST 337
	movl	$337,	-4(%ebp)
# CONST 71
	movl	$71,	-8(%ebp)
# BINOP <=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
# BINOP +
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP <
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	-4(%ebp)
# BINOP !!
	movl	%edi,	%eax
	orl	-4(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setge	%al
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# CONST 765
	movl	$765,	-8(%ebp)
# BINOP <
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	-4(%ebp)
# BINOP ==
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	sete	%al
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# BINOP +
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setl	%al
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# CONST 437
	movl	$437,	-8(%ebp)
# BINOP *
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# CONST 644
	movl	$644,	-8(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
# BINOP >
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setg	%al
	movl	%eax,	-8(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
# BINOP ==
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	sete	%al
	movl	%eax,	-8(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
# CONST 379
	movl	$379,	-16(%ebp)
# BINOP >=
	movl	-12(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-16(%ebp),	%edx
	setge	%al
	movl	%eax,	-12(%ebp)
# BINOP +
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP !!
	movl	-4(%ebp),	%eax
	orl	-8(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setge	%al
	movl	%eax,	%edi
# BINOP -
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
# BINOP +
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
# CONST 521
	movl	$521,	%esi
# LD x0
	movl	global_x0,	%edi
# BINOP !!
	movl	%esi,	%eax
	orl	%edi,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# CONST 878
	movl	$878,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# BINOP *
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP *
	movl	%esi,	%eax
	imull	%edi,	%eax
	movl	%eax,	%esi
# LD x0
	movl	global_x0,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP <=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setle	%al
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# BINOP !=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setne	%al
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# CONST 574
	movl	$574,	-4(%ebp)
# BINOP -
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# CONST 586
	movl	$586,	-8(%ebp)
# BINOP !!
	movl	-4(%ebp),	%eax
	orl	-8(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP *
	movl	%edi,	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP >
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setg	%al
	movl	%eax,	-4(%ebp)
# CONST 12
	movl	$12,	-8(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
# BINOP <=
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setle	%al
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setge	%al
	movl	%eax,	%edi
# BINOP -
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setge	%al
	movl	%eax,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# CONST 317
	movl	$317,	-8(%ebp)
# BINOP ==
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	-4(%ebp)
# BINOP -
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP >
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setg	%al
	movl	%eax,	-4(%ebp)
# CONST 621
	movl	$621,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# BINOP >
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setg	%al
	movl	%eax,	-8(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP -
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
# CONST 295
	movl	$295,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# BINOP <
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	-4(%ebp)
# CONST 94
	movl	$94,	-8(%ebp)
# CONST 375
	movl	$375,	-12(%ebp)
# BINOP >=
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setge	%al
	movl	%eax,	-8(%ebp)
# BINOP <=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
# BINOP +
	movl	-8(%ebp),	%eax
	addl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# CONST 326
	movl	$326,	-12(%ebp)
# CONST 844
	movl	$844,	-16(%ebp)
# BINOP !=
	movl	-12(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-16(%ebp),	%edx
	setne	%al
	movl	%eax,	-12(%ebp)
# BINOP -
	movl	-8(%ebp),	%eax
	subl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP <=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	-4(%ebp)
# BINOP >
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setg	%al
	movl	%eax,	%edi
# BINOP +
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
# CONST 733
	movl	$733,	%edi
# CONST 183
	movl	$183,	-4(%ebp)
# BINOP !!
	movl	%edi,	%eax
	orl	-4(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP !!
	movl	-4(%ebp),	%eax
	orl	-8(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP <=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setle	%al
	movl	%eax,	%edi
# CONST 166
	movl	$166,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# BINOP ==
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	-4(%ebp)
# CONST 680
	movl	$680,	-8(%ebp)
# CONST 869
	movl	$869,	-12(%ebp)
# BINOP ==
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	sete	%al
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# CONST 539
	movl	$539,	-8(%ebp)
# BINOP !!
	movl	-4(%ebp),	%eax
	orl	-8(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# CONST 968
	movl	$968,	-8(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
# BINOP !!
	movl	-8(%ebp),	%eax
	orl	-12(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
# BINOP *
	movl	-4(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
# BINOP !=
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setne	%al
	movl	%eax,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-16(%ebp)
# BINOP !!
	movl	-12(%ebp),	%eax
	orl	-16(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
# BINOP ==
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	sete	%al
	movl	%eax,	-8(%ebp)
# BINOP <
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	-4(%ebp)
# BINOP -
	movl	%edi,	%eax
	subl	-4(%ebp),	%eax
	movl	%eax,	%edi
# CONST 680
	movl	$680,	-4(%ebp)
# CONST 407
	movl	$407,	-8(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
# BINOP >=
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setge	%al
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-4(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# CONST 148
	movl	$148,	-12(%ebp)
# BINOP *
	movl	-8(%ebp),	%eax
	imull	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
# CONST 960
	movl	$960,	-16(%ebp)
# BINOP <
	movl	-12(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-16(%ebp),	%edx
	setl	%al
	movl	%eax,	-12(%ebp)
# BINOP ==
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	sete	%al
	movl	%eax,	-8(%ebp)
# BINOP !!
	movl	-4(%ebp),	%eax
	orl	-8(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# CONST 556
	movl	$556,	-8(%ebp)
# CONST 515
	movl	$515,	-12(%ebp)
# BINOP !!
	movl	-8(%ebp),	%eax
	orl	-12(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
# CONST 736
	movl	$736,	-12(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-16(%ebp)
# BINOP <=
	movl	-12(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-16(%ebp),	%edx
	setle	%al
	movl	%eax,	-12(%ebp)
# BINOP >
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setg	%al
	movl	%eax,	-8(%ebp)
# CONST 337
	movl	$337,	-12(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-16(%ebp)
# BINOP +
	movl	-12(%ebp),	%eax
	addl	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
# CONST 405
	movl	$405,	-16(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-20(%ebp)
# BINOP -
	movl	-16(%ebp),	%eax
	subl	-20(%ebp),	%eax
	movl	%eax,	-16(%ebp)
# BINOP !!
	movl	-12(%ebp),	%eax
	orl	-16(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
# BINOP ==
	movl	-8(%ebp),	%edx
	xorl	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	sete	%al
	movl	%eax,	-8(%ebp)
# BINOP !!
	movl	-4(%ebp),	%eax
	orl	-8(%ebp),	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP !=
	movl	%edi,	%edx
	xorl	%eax,	%eax
	cmpl	-4(%ebp),	%edx
	setne	%al
	movl	%eax,	%edi
# BINOP <=
	movl	%esi,	%edx
	xorl	%eax,	%eax
	cmpl	%edi,	%edx
	setle	%al
	movl	%eax,	%esi
# BINOP <
	movl	%ecx,	%edx
	xorl	%eax,	%eax
	cmpl	%esi,	%edx
	setl	%al
	movl	%eax,	%ecx
# BINOP !!
	movl	%ebx,	%eax
	orl	%ecx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ebx
# ST y
	movl	%ebx,	global_y
# DROP
# LD y
	movl	global_y,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# END
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
	.set	main_SIZE,	20
