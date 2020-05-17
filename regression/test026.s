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
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST y
	movl	%ebx,	global_y
# DROP
# LD x
	movl	global_x,	%ebx
# CJMP z, L0
	cmpl	$0,	%ebx
	jz	L0
# CONST 6
	movl	$6,	%ebx
# JMP L1
	jmp	L1
# LABEL L0
L0:
# CONST 8
	movl	$8,	%ebx
# LABEL L1
L1:
# LD y
	movl	global_y,	%ecx
# CJMP z, L2
	cmpl	$0,	%ecx
	jz	L2
# CONST 12
	movl	$12,	%ecx
# JMP L3
	jmp	L3
# LABEL L2
L2:
# CONST 16
	movl	$16,	%ecx
# LABEL L3
L3:
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
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
