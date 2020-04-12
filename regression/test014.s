	.global	main
	.data
global_n:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$0,	%esp
# READ
	call	Lread
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# JMP L0
	jmp	L0
# LABEL L1
L1:
# LD n
	movl	global_n,	%ebx
# CONST 1000
	movl	$1000,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP z, L2
	cmpl	$0,	%ebx
	jz	L2
# LD n
	movl	global_n,	%ebx
# CONST 500
	movl	$500,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP z, L4
	cmpl	$0,	%ebx
	jz	L4
# LD n
	movl	global_n,	%ebx
# CONST 250
	movl	$250,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP z, L6
	cmpl	$0,	%ebx
	jz	L6
# LD n
	movl	global_n,	%ebx
# CONST 125
	movl	$125,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP z, L8
	cmpl	$0,	%ebx
	jz	L8
# LD n
	movl	global_n,	%ebx
# CONST 63
	movl	$63,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP z, L10
	cmpl	$0,	%ebx
	jz	L10
# LD n
	movl	global_n,	%ebx
# CONST 32
	movl	$32,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP z, L12
	cmpl	$0,	%ebx
	jz	L12
# CONST 1
	movl	$1,	%ebx
# WRITE
	pushl	%ebx
	call	Lwrite
	popl	%eax
# JMP L13
	jmp	L13
# LABEL L12
L12:
# LABEL L13
L13:
# JMP L11
	jmp	L11
# LABEL L10
L10:
# LABEL L11
L11:
# JMP L9
	jmp	L9
# LABEL L8
L8:
# LABEL L9
L9:
# JMP L7
	jmp	L7
# LABEL L6
L6:
# LABEL L7
L7:
# JMP L5
	jmp	L5
# LABEL L4
L4:
# LABEL L5
L5:
# JMP L3
	jmp	L3
# LABEL L2
L2:
# LABEL L3
L3:
# LD n
	movl	global_n,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP -
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# LABEL L0
L0:
# LD n
	movl	global_n,	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP >
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setg	%dl
	movl	%edx,	%ebx
# CJMP nz, L1
	cmpl	$0,	%ebx
	jnz	L1
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
