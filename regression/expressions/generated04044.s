	.global	main
	.data
global_x0:	.int	0
global_x1:	.int	0
global_y:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$0,	%esp
	call	Lread
	movl	%eax,	%ebx
	movl	%ebx,	global_x0
	call	Lread
	movl	%eax,	%ebx
	movl	%ebx,	global_x1
	movl	global_x1,	%ebx
	movl	global_x1,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$43,	%ecx
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$44,	%ecx
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	%ebx,	global_y
	movl	global_y,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
