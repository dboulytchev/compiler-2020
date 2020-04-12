	.global	main
	.data
global_i:	.int	0
global_j:	.int	0
global_s:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$0,	%esp
# CONST 0
	movl	$0,	%ebx
# ST i
	movl	%ebx,	global_i
# CONST 0
	movl	$0,	%ebx
# ST s
	movl	%ebx,	global_s
# JMP L0
	jmp	L0
# LABEL L1
L1:
# CONST 0
	movl	$0,	%ebx
# ST j
	movl	%ebx,	global_j
# JMP L2
	jmp	L2
# LABEL L3
L3:
# LD s
	movl	global_s,	%ebx
# LD j
	movl	global_j,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST s
	movl	%ebx,	global_s
# LD j
	movl	global_j,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST j
	movl	%ebx,	global_j
# LABEL L2
L2:
# LD j
	movl	global_j,	%ebx
# CONST 100
	movl	$100,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP nz, L3
	cmpl	$0,	%ebx
	jnz	L3
# LD s
	movl	global_s,	%ebx
# LD i
	movl	global_i,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST s
	movl	%ebx,	global_s
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
# LABEL L0
L0:
# LD i
	movl	global_i,	%ebx
# CONST 100
	movl	$100,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP nz, L1
	cmpl	$0,	%ebx
	jnz	L1
# LD s
	movl	global_s,	%ebx
# WRITE
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
