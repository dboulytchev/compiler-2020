	.global	main
	.data
global_x:	.int	0
global_y:	.int	0
global_z:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL x
# GLOBAL y
# GLOBAL z
# CONST 1
	movl	$1,	%ebx
# ST x
	movl	%ebx,	global_x
# DROP
# CONST 2
	movl	$2,	%ebx
# ST y
	movl	%ebx,	global_y
# DROP
# LD x
	movl	global_x,	%ebx
# LD y
	movl	global_y,	%ecx
# BINOP -
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
# CONST 3
	movl	$3,	%ecx
# BINOP -
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
# ST z
	movl	%ebx,	global_z
# DROP
# LD z
	movl	global_z,	%ebx
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
