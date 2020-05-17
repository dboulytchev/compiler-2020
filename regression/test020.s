	.global	main
	.data
global_n:	.int	0
global_p:	.int	0
global_s:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 2
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL n
# GLOBAL s
# GLOBAL p
# CONST 0
	movl	$0,	%ebx
# ST s
	movl	%ebx,	global_s
# DROP
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# DROP
# CONST 2
	movl	$2,	%ebx
# ST p
	movl	%ebx,	global_p
# DROP
# JMP L0
	jmp	L0
# LABEL L1
L1:
# CONST 2
	movl	$2,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# CONST 1
	movl	$1,	%ebx
# ST loc[1]
	movl	%ebx,	-8(%ebp)
# DROP
# CONST 2
	movl	$2,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# JMP L2
	jmp	L2
# LABEL L3
L3:
# LD p
	movl	global_p,	%ebx
# LD loc[0]
	movl	-4(%ebp),	%ecx
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
# ST loc[1]
	movl	%ebx,	-8(%ebp)
# DROP
# LD loc[0]
	movl	-4(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# LABEL L2
L2:
# LD loc[0]
	movl	-4(%ebp),	%ebx
# LD loc[0]
	movl	-4(%ebp),	%ecx
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
# LD loc[1]
	movl	-8(%ebp),	%ecx
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
# LD loc[1]
	movl	-8(%ebp),	%ebx
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
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
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
# DROP
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
# DROP
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
# END
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
	.set	main_SIZE,	8
