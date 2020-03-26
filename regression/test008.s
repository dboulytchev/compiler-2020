	.global	main
	.data
global_z:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$0,	%esp
	movl	$0,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$2,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$3,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$4,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$5,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$6,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$7,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$8,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
	movl	$9,	%ecx
	movl	%ebx,	%eax
	subl	%ecx,	%eax
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
