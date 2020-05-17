	.global	main
	.data
global_i:	.int	0
global_s:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 1
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL i
# GLOBAL s
# CONST 0
	movl	$0,	%ebx
# ST i
	movl	%ebx,	global_i
# DROP
# CONST 0
	movl	$0,	%ebx
# ST s
	movl	%ebx,	global_s
# DROP
# CONST 0
	movl	$0,	%ebx
# ST i
	movl	%ebx,	global_i
# DROP
# JMP L0
	jmp	L0
# LABEL L1
L1:
# CONST 0
	movl	$0,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# JMP L2
	jmp	L2
# LABEL L3
L3:
# LD s
	movl	global_s,	%ebx
# LD loc[0]
	movl	-4(%ebp),	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST s
	movl	%ebx,	global_s
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
# DROP
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
# DROP
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
	.set	main_SIZE,	4
