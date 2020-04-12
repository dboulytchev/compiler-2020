	.global	main
	.data
global_c:	.int	0
global_cc:	.int	0
global_d:	.int	0
global_i:	.int	0
global_m:	.int	0
global_n:	.int	0
global_p:	.int	0
global_q:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$0,	%esp
# READ
	call	Lread
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# CONST 1
	movl	$1,	%ebx
# ST c
	movl	%ebx,	global_c
# CONST 2
	movl	$2,	%ebx
# ST p
	movl	%ebx,	global_p
# JMP L0
	jmp	L0
# LABEL L1
L1:
# CONST 1
	movl	$1,	%ebx
# ST cc
	movl	%ebx,	global_cc
# JMP L2
	jmp	L2
# LABEL L3
L3:
# CONST 2
	movl	$2,	%ebx
# ST q
	movl	%ebx,	global_q
# JMP L4
	jmp	L4
# LABEL L5
L5:
# LD p
	movl	global_p,	%ebx
# LD q
	movl	global_q,	%ecx
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
# ST cc
	movl	%ebx,	global_cc
# LD q
	movl	global_q,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST q
	movl	%ebx,	global_q
# LABEL L4
L4:
# LD q
	movl	global_q,	%ebx
# LD q
	movl	global_q,	%ecx
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
# LD cc
	movl	global_cc,	%ecx
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
# LD cc
	movl	global_cc,	%ebx
# CJMP z, L6
	cmpl	$0,	%ebx
	jz	L6
# CONST 0
	movl	$0,	%ebx
# ST cc
	movl	%ebx,	global_cc
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
# CONST 1
	movl	$1,	%ebx
# ST cc
	movl	%ebx,	global_cc
# LABEL L7
L7:
# LABEL L2
L2:
# LD cc
	movl	global_cc,	%ebx
# CJMP nz, L3
	cmpl	$0,	%ebx
	jnz	L3
# LD p
	movl	global_p,	%ebx
# ST d
	movl	%ebx,	global_d
# CONST 0
	movl	$0,	%ebx
# ST i
	movl	%ebx,	global_i
# LD n
	movl	global_n,	%ebx
# LD d
	movl	global_d,	%ecx
# BINOP /
	movl	%ebx,	%eax
	cltd
	idivl	%ecx
	movl	%eax,	%ebx
# ST q
	movl	%ebx,	global_q
# LD n
	movl	global_n,	%ebx
# LD d
	movl	global_d,	%ecx
# BINOP %
	movl	%ebx,	%eax
	cltd
	idivl	%ecx
	movl	%edx,	%ebx
# ST m
	movl	%ebx,	global_m
# JMP L8
	jmp	L8
# LABEL L9
L9:
# LD i
	movl	global_i,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST i
	movl	%ebx,	global_i
# LD d
	movl	global_d,	%ebx
# LD p
	movl	global_p,	%ecx
# BINOP *
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
# ST d
	movl	%ebx,	global_d
# LD n
	movl	global_n,	%ebx
# LD d
	movl	global_d,	%ecx
# BINOP %
	movl	%ebx,	%eax
	cltd
	idivl	%ecx
	movl	%edx,	%ebx
# ST m
	movl	%ebx,	global_m
# LD m
	movl	global_m,	%ebx
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
# LD d
	movl	global_d,	%ecx
# BINOP /
	movl	%ebx,	%eax
	cltd
	idivl	%ecx
	movl	%eax,	%ebx
# ST q
	movl	%ebx,	global_q
# JMP L11
	jmp	L11
# LABEL L10
L10:
# LABEL L11
L11:
# LABEL L8
L8:
# LD q
	movl	global_q,	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP >
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setg	%dl
	movl	%edx,	%ebx
# LD m
	movl	global_m,	%ecx
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
# WRITE
	pushl	%ebx
	call	Lwrite
	popl	%eax
# LD i
	movl	global_i,	%ebx
# WRITE
	pushl	%ebx
	call	Lwrite
	popl	%eax
# LD n
	movl	global_n,	%ebx
# LD d
	movl	global_d,	%ecx
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
# LABEL L0
L0:
# LD c
	movl	global_c,	%ebx
# CJMP nz, L1
	cmpl	$0,	%ebx
	jnz	L1
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
