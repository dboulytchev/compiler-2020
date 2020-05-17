	.global	main
	.data
global_i:	.int	0
global_n:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL n
# GLOBAL i
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# DROP
# LD n
	movl	global_n,	%ebx
# ST i
	movl	%ebx,	global_i
# DROP
# JMP L0
	jmp	L0
# LABEL L1
L1:
# LD i
	movl	global_i,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD i
	movl	global_i,	%ebx
# CALL Lfib, 1
	pushl	%ebx
	call	Lfib
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD i
	movl	global_i,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP -
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
# ST i
	movl	%ebx,	global_i
# DROP
# LABEL L0
L0:
# LD i
	movl	global_i,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP >=
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setge	%dl
	movl	%edx,	%ebx
# CJMP nz, L1
	cmpl	$0,	%ebx
	jnz	L1
# END
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
	.set	main_SIZE,	0
# LABEL Lfib
Lfib:
# BEGIN Lfib, 1, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$Lfib_SIZE,	%esp
# LD arg[0]
	movl	8(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP <=
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setle	%dl
	movl	%edx,	%ebx
# CJMP z, L2
	cmpl	$0,	%ebx
	jz	L2
# CONST 1
	movl	$1,	%ebx
# JMP L3
	jmp	L3
# LABEL L2
L2:
# LD arg[0]
	movl	8(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP -
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
# CALL Lfib, 1
	pushl	%ebx
	call	Lfib
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD arg[0]
	movl	8(%ebp),	%ecx
# CONST 2
	movl	$2,	%esi
# BINOP -
	movl	%ecx,	%eax
	subl	%esi,	%eax
	movl	%eax,	%ecx
# CALL Lfib, 1
	pushl	%ebx
	pushl	%ecx
	call	Lfib
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# LABEL L3
L3:
# END
	movl	%ebp,	%esp
	popl	%ebp
	movl	%ebx,	%eax
	ret
	.set	Lfib_SIZE,	0
