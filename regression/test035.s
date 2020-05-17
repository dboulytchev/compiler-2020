	.global	main
	.data
global_i:	.int	0
global_n:	.int	0
global_result:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL n
# GLOBAL i
# GLOBAL result
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
# CALL Lfact, 1
	pushl	%ebx
	call	Lfact
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD i
	movl	global_i,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD result
	movl	global_result,	%ebx
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
# LABEL Lfact
Lfact:
# BEGIN Lfact, 1, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$Lfact_SIZE,	%esp
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
# ST result
	movl	%ebx,	global_result
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
# CALL Lfact, 1
	pushl	%ebx
	call	Lfact
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD result
	movl	global_result,	%ebx
# LD arg[0]
	movl	8(%ebp),	%ecx
# BINOP *
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
# ST result
	movl	%ebx,	global_result
# LABEL L3
L3:
# END
	movl	%ebp,	%esp
	popl	%ebp
	movl	%ebx,	%eax
	ret
	.set	Lfact_SIZE,	0
