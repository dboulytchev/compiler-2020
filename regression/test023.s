	.global	main
	.data
global_s:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 1
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL s
# CONST 0
	movl	$0,	%ebx
# ST s
	movl	%ebx,	global_s
# DROP
# LABEL L0
L0:
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# LD s
	movl	global_s,	%ebx
# LD loc[0]
	movl	-4(%ebp),	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST s
	movl	%ebx,	global_s
# DROP
# LD loc[0]
	movl	-4(%ebp),	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP ==
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	sete	%dl
	movl	%edx,	%ebx
# CJMP z, L0
	cmpl	$0,	%ebx
	jz	L0
# LD s
	movl	global_s,	%ebx
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
