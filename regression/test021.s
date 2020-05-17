	.global	main
	.data
global_f:	.int	0
global_n:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL n
# GLOBAL f
# CONST 1
	movl	$1,	%ebx
# ST f
	movl	%ebx,	global_f
# DROP
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# DROP
# JMP L0
	jmp	L0
# LABEL L1
L1:
# LD f
	movl	global_f,	%ebx
# LD n
	movl	global_n,	%ecx
# BINOP *
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
# ST f
	movl	%ebx,	global_f
# DROP
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
# LABEL L0
L0:
# LD n
	movl	global_n,	%ebx
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
# LD f
	movl	global_f,	%ebx
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
