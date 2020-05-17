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
# CONST 0
	movl	$0,	%ebx
# ST x
	movl	%ebx,	global_x
# DROP
# LD x
	movl	global_x,	%ebx
# CJMP z, L0
	cmpl	$0,	%ebx
	jz	L0
# CONST 1
	movl	$1,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# JMP L1
	jmp	L1
# LABEL L0
L0:
# CONST 2
	movl	$2,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LABEL L1
L1:
# END
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
	.set	main_SIZE,	0
