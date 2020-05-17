	.global	main
	.data
global_c:	.int	0
global_n:	.int	0
global_p:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 6
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL n
# GLOBAL c
# GLOBAL p
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# DROP
# CONST 1
	movl	$1,	%ebx
# ST c
	movl	%ebx,	global_c
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
# CONST 1
	movl	$1,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# JMP L2
	jmp	L2
# LABEL L3
L3:
# CONST 2
	movl	$2,	%ebx
# ST loc[1]
	movl	%ebx,	-8(%ebp)
# DROP
# JMP L4
	jmp	L4
# LABEL L5
L5:
# LD p
	movl	global_p,	%ebx
# LD loc[1]
	movl	-8(%ebp),	%ecx
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
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# LD loc[1]
	movl	-8(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST loc[1]
	movl	%ebx,	-8(%ebp)
# DROP
# LABEL L4
L4:
# LD loc[1]
	movl	-8(%ebp),	%ebx
# LD loc[1]
	movl	-8(%ebp),	%ecx
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
# LD loc[0]
	movl	-4(%ebp),	%ecx
# BINOP &&
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ebx
# CJMP nz, L5
	cmpl	$0,	%ebx
	jnz	L5
# LD loc[0]
	movl	-4(%ebp),	%ebx
# CJMP z, L6
	cmpl	$0,	%ebx
	jz	L6
# CONST 0
	movl	$0,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# JMP L7
	jmp	L7
# LABEL L6
L6:
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
# CONST 1
	movl	$1,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# LABEL L7
L7:
# LABEL L2
L2:
# LD loc[0]
	movl	-4(%ebp),	%ebx
# CJMP nz, L3
	cmpl	$0,	%ebx
	jnz	L3
# LD p
	movl	global_p,	%ebx
# ST loc[2]
	movl	%ebx,	-12(%ebp)
# DROP
# CONST 0
	movl	$0,	%ebx
# ST loc[3]
	movl	%ebx,	-16(%ebp)
# DROP
# LD n
	movl	global_n,	%ebx
# LD loc[2]
	movl	-12(%ebp),	%ecx
# BINOP /
	movl	%ebx,	%eax
	cltd
	idivl	%ecx
	movl	%eax,	%ebx
# ST loc[4]
	movl	%ebx,	-20(%ebp)
# DROP
# LD n
	movl	global_n,	%ebx
# LD loc[2]
	movl	-12(%ebp),	%ecx
# BINOP %
	movl	%ebx,	%eax
	cltd
	idivl	%ecx
	movl	%edx,	%ebx
# ST loc[5]
	movl	%ebx,	-24(%ebp)
# DROP
# JMP L8
	jmp	L8
# LABEL L9
L9:
# LD loc[3]
	movl	-16(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST loc[3]
	movl	%ebx,	-16(%ebp)
# DROP
# LD loc[2]
	movl	-12(%ebp),	%ebx
# LD p
	movl	global_p,	%ecx
# BINOP *
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
# ST loc[2]
	movl	%ebx,	-12(%ebp)
# DROP
# LD n
	movl	global_n,	%ebx
# LD loc[2]
	movl	-12(%ebp),	%ecx
# BINOP %
	movl	%ebx,	%eax
	cltd
	idivl	%ecx
	movl	%edx,	%ebx
# ST loc[5]
	movl	%ebx,	-24(%ebp)
# DROP
# LD loc[5]
	movl	-24(%ebp),	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP ==
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	sete	%dl
	movl	%edx,	%ebx
# CJMP z, L10
	cmpl	$0,	%ebx
	jz	L10
# LD n
	movl	global_n,	%ebx
# LD loc[2]
	movl	-12(%ebp),	%ecx
# BINOP /
	movl	%ebx,	%eax
	cltd
	idivl	%ecx
	movl	%eax,	%ebx
# ST loc[4]
	movl	%ebx,	-20(%ebp)
# DROP
# JMP L11
	jmp	L11
# LABEL L10
L10:
# LABEL L11
L11:
# LABEL L8
L8:
# LD loc[4]
	movl	-20(%ebp),	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP >
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setg	%dl
	movl	%edx,	%ebx
# LD loc[5]
	movl	-24(%ebp),	%ecx
# CONST 0
	movl	$0,	%esi
# BINOP ==
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
# BINOP &&
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ebx
# CJMP nz, L9
	cmpl	$0,	%ebx
	jnz	L9
# LD p
	movl	global_p,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD loc[3]
	movl	-16(%ebp),	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD n
	movl	global_n,	%ebx
# LD loc[2]
	movl	-12(%ebp),	%ecx
# LD p
	movl	global_p,	%esi
# BINOP /
	movl	%ecx,	%eax
	cltd
	idivl	%esi
	movl	%eax,	%ecx
# BINOP /
	movl	%ebx,	%eax
	cltd
	idivl	%ecx
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# DROP
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
# LD n
	movl	global_n,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP !=
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%dl
	movl	%edx,	%ebx
# ST c
	movl	%ebx,	global_c
# DROP
# LABEL L0
L0:
# LD c
	movl	global_c,	%ebx
# CJMP nz, L1
	cmpl	$0,	%ebx
	jnz	L1
# END
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
	.set	main_SIZE,	24
