	.global	main
	.data
global_fib:	.int	0
global_fib_1:	.int	0
global_fib_2:	.int	0
global_i:	.int	0
global_n:	.int	0
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
# ST fib_1
	movl	%ebx,	global_fib_1
# CONST 1
	movl	$1,	%ebx
# ST fib_2
	movl	%ebx,	global_fib_2
# CONST 1
	movl	$1,	%ebx
# ST fib
	movl	%ebx,	global_fib
# CONST 2
	movl	$2,	%ebx
# ST i
	movl	%ebx,	global_i
# JMP L0
	jmp	L0
# LABEL L1
L1:
# LD fib_1
	movl	global_fib_1,	%ebx
# LD fib_2
	movl	global_fib_2,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST fib
	movl	%ebx,	global_fib
# LD fib_1
	movl	global_fib_1,	%ebx
# ST fib_2
	movl	%ebx,	global_fib_2
# LD fib
	movl	global_fib,	%ebx
# ST fib_1
	movl	%ebx,	global_fib_1
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
# LD n
	movl	global_n,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP nz, L1
	cmpl	$0,	%ebx
	jnz	L1
# LD fib
	movl	global_fib,	%ebx
# WRITE
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
