	.global	main
	.data
global_a:	.int	0
global_b:	.int	0
global_x:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL x
# GLOBAL a
# GLOBAL b
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST x
	movl	%ebx,	global_x
# DROP
# CALL Ltest1, 0
	call	Ltest1
	addl	$0,	%esp
	movl	%eax,	%ebx
# DROP
# LD a
	movl	global_a,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# CONST 8
	movl	$8,	%ebx
# CALL Ltest2, 1
	pushl	%ebx
	call	Ltest2
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD a
	movl	global_a,	%ebx
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
# LABEL Ltest1
Ltest1:
# BEGIN Ltest1, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$Ltest1_SIZE,	%esp
# CONST 3
	movl	$3,	%ebx
# ST a
	movl	%ebx,	global_a
# END
	movl	%ebp,	%esp
	popl	%ebp
	movl	%ebx,	%eax
	ret
	.set	Ltest1_SIZE,	0
# LABEL Ltest2
Ltest2:
# BEGIN Ltest2, 1, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$Ltest2_SIZE,	%esp
# LD arg[0]
	movl	8(%ebp),	%ebx
# ST a
	movl	%ebx,	global_a
# END
	movl	%ebp,	%esp
	popl	%ebp
	movl	%ebx,	%eax
	ret
	.set	Ltest2_SIZE,	0
