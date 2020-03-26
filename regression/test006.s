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
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
	movl	%ebx,	global_z
	movl	global_z,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	global_x,	%ebx
	movl	global_y,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setle	%dl
	movl	%edx,	%ebx
	movl	%ebx,	global_z
	movl	global_z,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	global_x,	%ebx
	movl	global_y,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	sete	%dl
	movl	%edx,	%ebx
	movl	%ebx,	global_z
	movl	global_z,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	global_x,	%ebx
	movl	global_y,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%dl
	movl	%edx,	%ebx
	movl	%ebx,	global_z
	movl	global_z,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	global_x,	%ebx
	movl	global_y,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setge	%dl
	movl	%edx,	%ebx
	movl	%ebx,	global_z
	movl	global_z,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	global_x,	%ebx
	movl	global_y,	%ecx
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setg	%dl
	movl	%edx,	%ebx
	movl	%ebx,	global_z
	movl	global_z,	%ebx
	pushl	%ebx
	call	Lwrite
	popl	%eax
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
