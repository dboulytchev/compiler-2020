	.global	main
	.data
global_m:	.int	0
global_n:	.int	0
global_x:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL x
# GLOBAL m
# GLOBAL n
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST x
	movl	%ebx,	global_x
# DROP
# CONST 0
	movl	$0,	%ebx
# ST m
	movl	%ebx,	global_m
# DROP
# JMP L0
	jmp	L0
# LABEL L1
L1:
# CONST 0
	movl	$0,	%ebx
# ST n
	movl	%ebx,	global_n
# DROP
# JMP L2
	jmp	L2
# LABEL L3
L3:
# LD m
	movl	global_m,	%ebx
# LD n
	movl	global_n,	%ecx
# CALL Lack, 2
	pushl	%ecx
	pushl	%ebx
	call	Lack
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD n
	movl	global_n,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# DROP
# LABEL L2
L2:
# LD n
	movl	global_n,	%ebx
# CONST 7
	movl	$7,	%ecx
# BINOP <=
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setle	%dl
	movl	%edx,	%ebx
# CJMP nz, L3
	cmpl	$0,	%ebx
	jnz	L3
# LD m
	movl	global_m,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST m
	movl	%ebx,	global_m
# DROP
# LABEL L0
L0:
# LD m
	movl	global_m,	%ebx
# CONST 3
	movl	$3,	%ecx
# BINOP <=
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setle	%dl
	movl	%edx,	%ebx
# CJMP nz, L1
	cmpl	$0,	%ebx
	jnz	L1
# END
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
	.set	main_SIZE,	0
# LABEL Lack
Lack:
# BEGIN Lack, 2, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$Lack_SIZE,	%esp
# LD arg[0]
	movl	8(%ebp),	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP ==
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	sete	%dl
	movl	%edx,	%ebx
# CJMP z, L4
	cmpl	$0,	%ebx
	jz	L4
# LD arg[1]
	movl	12(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# JMP L5
	jmp	L5
# LABEL L4
L4:
# LD arg[0]
	movl	8(%ebp),	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP >
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setg	%dl
	movl	%edx,	%ebx
# LD arg[1]
	movl	12(%ebp),	%ecx
# CONST 0
	movl	$0,	%esi
# BINOP ==
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
# BINOP &&
	xorl	%eax,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setne	%al
	cmpl	%ebx,	%edx
	setne	%dl
	andl	%eax,	%edx
	movl	%edx,	%ebx
# CJMP z, L6
	cmpl	$0,	%ebx
	jz	L6
# LD arg[0]
	movl	8(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP -
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
# CONST 1
	movl	$1,	%ecx
# CALL Lack, 2
	pushl	%ecx
	pushl	%ebx
	call	Lack
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP L7
	jmp	L7
# LABEL L6
L6:
# LD arg[0]
	movl	8(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP -
	movl	%ebx,	%eax
	subl	%ecx,	%eax
	movl	%eax,	%ebx
# LD arg[0]
	movl	8(%ebp),	%ecx
# LD arg[1]
	movl	12(%ebp),	%esi
# CONST 1
	movl	$1,	%edi
# BINOP -
	movl	%esi,	%eax
	subl	%edi,	%eax
	movl	%eax,	%esi
# CALL Lack, 2
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Lack
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL Lack, 2
	pushl	%ecx
	pushl	%ebx
	call	Lack
	addl	$8,	%esp
	movl	%eax,	%ebx
# LABEL L7
L7:
# LABEL L5
L5:
# END
	movl	%ebp,	%esp
	popl	%ebp
	movl	%ebx,	%eax
	ret
	.set	Lack_SIZE,	0
