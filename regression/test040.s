	.global	main
	.data
global_x:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL x
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST x
	movl	%ebx,	global_x
# DROP
# CONST 10
	movl	$10,	%ebx
# CONST 100
	movl	$100,	%ecx
# CALL Ltest, 2
	pushl	%ecx
	pushl	%ebx
	call	Ltest
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# CONST 100
	movl	$100,	%ebx
# CONST 10
	movl	$10,	%ecx
# CALL Ltest, 2
	pushl	%ecx
	pushl	%ebx
	call	Ltest
	addl	$8,	%esp
	movl	%eax,	%ebx
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
	.set	main_SIZE,	0
# LABEL Ltest
Ltest:
# BEGIN Ltest, 2, 3
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$Ltest_SIZE,	%esp
# CONST 1
	movl	$1,	%ebx
# ST loc[2]
	movl	%ebx,	-12(%ebp)
# DROP
# CONST 0
	movl	$0,	%ebx
# ST loc[1]
	movl	%ebx,	-8(%ebp)
# DROP
# CONST 0
	movl	$0,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# JMP L0
	jmp	L0
# LABEL L1
L1:
# LD loc[1]
	movl	-8(%ebp),	%ebx
# LD loc[0]
	movl	-4(%ebp),	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST loc[1]
	movl	%ebx,	-8(%ebp)
# DROP
# LD loc[1]
	movl	-8(%ebp),	%ebx
# LD arg[1]
	movl	12(%ebp),	%ecx
# BINOP >
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setg	%dl
	movl	%edx,	%ebx
# CJMP z, L2
	cmpl	$0,	%ebx
	jz	L2
# CONST 0
	movl	$0,	%ebx
# ST loc[2]
	movl	%ebx,	-12(%ebp)
# DROP
# JMP L3
	jmp	L3
# LABEL L2
L2:
# LABEL L3
L3:
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
# LABEL L0
L0:
# LD loc[0]
	movl	-4(%ebp),	%ebx
# LD arg[0]
	movl	8(%ebp),	%ecx
# BINOP <=
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setle	%dl
	movl	%edx,	%ebx
# LD loc[2]
	movl	-12(%ebp),	%ecx
# BINOP &&
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ebx
# CJMP nz, L1
	cmpl	$0,	%ebx
	jnz	L1
# LD loc[1]
	movl	-8(%ebp),	%ebx
# END
	movl	%ebp,	%esp
	popl	%ebp
	movl	%ebx,	%eax
	ret
	.set	Ltest_SIZE,	12
