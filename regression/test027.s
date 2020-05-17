	.global	main
	.data
global_x:	.int	0
global_y:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL x
# GLOBAL y
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST x
	movl	%ebx,	global_x
# DROP
# LD x
	movl	global_x,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST y
	movl	%ebx,	global_y
# DROP
# LD y
	movl	global_y,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD x
	movl	global_x,	%ebx
# CJMP z, L0
	cmpl	$0,	%ebx
	jz	L0
# LDA x
	leal	global_x,	%eax
	movl	%eax,	%ebx
# JMP L1
	jmp	L1
# LABEL L0
L0:
# LDA y
	leal	global_y,	%eax
	movl	%eax,	%ebx
# LABEL L1
L1:
# CONST 18
	movl	$18,	%ecx
# STI
	movl	%ecx,	%eax
	movl	%ebx,	%edx
	movl	%eax,	(%edx)
	movl	%eax,	%ebx
# DROP
# LD x
	movl	global_x,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD y
	movl	global_y,	%ebx
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
