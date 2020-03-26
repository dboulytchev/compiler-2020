	.global	main
	.data
global_x:	.int	0
global_y:	.int	0
global_z:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$0,	%esp
	call	Lread
	movl	%eax,	%ebx
	movl	%ebx,	global_x
	call	Lread
	movl	%eax,	%ebx
	movl	%ebx,	global_y
	movl	global_x,	%ebx
	movl	global_y,	%ecx
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$3,	%ecx
	movl	%ebx,	%eax
	imull	%ecx,	%eax
	movl	%eax,	%ebx
	movl	%ebx,	global_z
	movl	global_z,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
