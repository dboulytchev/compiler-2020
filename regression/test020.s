	.global	main
	.data
global_c:	.int	0
global_f:	.int	0
global_n:	.int	0
global_p:	.int	0
global_s:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$0,	%esp
# CONST 0
	movl	$0,	%ebx
# ST s
	movl	%ebx,	global_s
# READ
	call	Lread
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# CONST 2
	movl	$2,	%ebx
# ST p
	movl	%ebx,	global_p
# JMP L0
	jmp	L0
# LABEL L1
L1:
# CONST 2
	movl	$2,	%ebx
# ST c
	movl	%ebx,	global_c
# CONST 1
	movl	$1,	%ebx
# ST f
	movl	%ebx,	global_f
# CONST 2
	movl	$2,	%ebx
# ST c
	movl	%ebx,	global_c
# JMP L2
	jmp	L2
# LABEL L3
L3:
# LD p
	movl	global_p,	%ebx
# LD c
	movl	global_c,	%ecx
# BINOP %
	movl	%ebx,	%eax
	cltd
	idivl	%ecx
	movl	%edx,	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP !=
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%dl
	movl	%edx,	%ebx
# ST f
	movl	%ebx,	global_f
# LD c
	movl	global_c,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST c
	movl	%ebx,	global_c
# LABEL L2
L2:
# LD c
	movl	global_c,	%ebx
# LD c
	movl	global_c,	%ecx
# BINOP *
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
# LD p
	movl	global_p,	%ecx
# BINOP <=
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setle	%dl
	movl	%edx,	%ebx
# LD f
	movl	global_f,	%ecx
# BINOP &&
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ebx
# CJMP nz, L3
	cmpl	$0,	%ebx
	jnz	L3
# LD f
	movl	global_f,	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP !=
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%dl
	movl	%edx,	%ebx
# CJMP z, L4
	cmpl	$0,	%ebx
	jz	L4
# LD n
	movl	global_n,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP ==
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	sete	%dl
	movl	%edx,	%ebx
# CJMP z, L6
	cmpl	$0,	%ebx
	jz	L6
# LD p
	movl	global_p,	%ebx
# WRITE
	pushl	%ebx
	call	Lwrite
	popl	%eax
# JMP L7
	jmp	L7
# LABEL L6
L6:
# LABEL L7
L7:
# LD n
	movl	global_n,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP -
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# JMP L5
	jmp	L5
# LABEL L4
L4:
# LABEL L5
L5:
# LD p
	movl	global_p,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST p
	movl	%ebx,	global_p
# LABEL L0
L0:
# LD n
	movl	global_n,	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP >
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setg	%dl
	movl	%edx,	%ebx
# CJMP nz, L1
	cmpl	$0,	%ebx
	jnz	L1
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
