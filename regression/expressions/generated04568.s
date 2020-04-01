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
	movl	$22,	%ebx
	movl	$23,	%ecx
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$29,	%ecx
	movl	$35,	%esi
	movl	global_x1,	%edi
	movl	%esi,	%eax
	addl	%edi,	%eax
	movl	%eax,	%esi
	movl	%ecx,	%eax
	cltd
	idivl	%esi
	movl	%eax,	%ecx
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
