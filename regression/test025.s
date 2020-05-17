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
# LD x
	movl	global_x,	%ebx
# CJMP z, L0
	cmpl	$0,	%ebx
	jz	L0
# CONST 3
	movl	$3,	%ebx
# JMP L1
	jmp	L1
# LABEL L0
L0:
# CONST 5
	movl	$5,	%ebx
# LABEL L1
L1:
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
