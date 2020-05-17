	.global	main
	.data
global_fib:	.int	0
global_fib_1:	.int	0
global_fib_2:	.int	0
global_n:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 1
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL n
# GLOBAL fib_1
# GLOBAL fib_2
# GLOBAL fib
# CONST 1
	movl	$1,	%ebx
# ST fib_1
	movl	%ebx,	global_fib_1
# DROP
# CONST 1
	movl	$1,	%ebx
# ST fib_2
	movl	%ebx,	global_fib_2
# DROP
# CONST 1
	movl	$1,	%ebx
# ST fib
	movl	%ebx,	global_fib
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
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
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
# DROP
# LD fib_1
	movl	global_fib_1,	%ebx
# ST fib_2
	movl	%ebx,	global_fib_2
# DROP
# LD fib
	movl	global_fib,	%ebx
# ST fib_1
	movl	%ebx,	global_fib_1
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
# LABEL L0
L0:
# LD loc[0]
	movl	-4(%ebp),	%ebx
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
