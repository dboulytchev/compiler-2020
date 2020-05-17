	.global	main
	.data
global_i:	.int	0
global_n:	.int	0
global_x:	.int	0
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL n
# GLOBAL x
# GLOBAL i
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST n
	movl	%ebx,	global_n
# DROP
# CONST 10
	movl	$10,	%ebx
# CONST 20
	movl	$20,	%ecx
# CONST 30
	movl	$30,	%esi
# CONST 40
	movl	$40,	%edi
# ARRAY 4
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$4
	call	Barray
	addl	$20,	%esp
	movl	%eax,	%ebx
# ST x
	movl	%ebx,	global_x
# DROP
# LD x
	movl	global_x,	%ebx
# CALL LprintArray, 1
	pushl	%ebx
	call	LprintArray
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# CONST 0
	movl	$0,	%ebx
# ST i
	movl	%ebx,	global_i
# DROP
# JMP L0
	jmp	L0
# LABEL L1
L1:
# LD x
	movl	global_x,	%ebx
# LD i
	movl	global_i,	%ecx
# LD i
	movl	global_i,	%esi
# STA
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bsta
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# DROP
# LD i
	movl	global_i,	%ecx
# CONST 1
	movl	$1,	%esi
# BINOP +
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
# ST i
	movl	%ecx,	global_i
# DROP
# LABEL L0
L0:
# LD i
	movl	global_i,	%ecx
# LD x
	movl	global_x,	%esi
# BUILTIN length, 1
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Blength
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# BINOP <
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
# CJMP nz, L1
	cmpl	$0,	%ecx
	jnz	L1
# LD x
	movl	global_x,	%ecx
# CALL LprintArray, 1
	pushl	%ebx
	pushl	%ecx
	call	LprintArray
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# DROP
# END
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
	.set	main_SIZE,	0
# LABEL LprintArray
LprintArray:
# BEGIN LprintArray, 1, 1
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LprintArray_SIZE,	%esp
# LD arg[0]
	movl	8(%ebp),	%ecx
# BUILTIN length, 1
	pushl	%ebx
	pushl	%ecx
	call	Blength
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST 0
	movl	$0,	%esi
# BINOP ==
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	sete	%dl
	movl	%edx,	%ecx
# CJMP z, L2
	cmpl	$0,	%ecx
	jz	L2
# CONST 0
	movl	$0,	%ecx
# JMP L3
	jmp	L3
# LABEL L2
L2:
# CONST 0
	movl	$0,	%ecx
# ST i
	movl	%ecx,	global_i
# DROP
# JMP L4
	jmp	L4
# LABEL L5
L5:
# LD arg[0]
	movl	8(%ebp),	%ecx
# LD i
	movl	global_i,	%esi
# ELEM
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL _write, 1
	pushl	%ebx
	pushl	%ecx
	call	Lwrite
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# DROP
# LD i
	movl	global_i,	%ecx
# CONST 1
	movl	$1,	%esi
# BINOP +
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
# ST i
	movl	%ecx,	global_i
# DROP
# LABEL L4
L4:
# LD i
	movl	global_i,	%ecx
# LD arg[0]
	movl	8(%ebp),	%esi
# BUILTIN length, 1
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Blength
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# BINOP <
	movl	%ecx,	%eax
	xorl	%edx,	%edx
	cmpl	%esi,	%eax
	setl	%dl
	movl	%edx,	%ecx
# CJMP nz, L5
	cmpl	$0,	%ecx
	jnz	L5
# CONST 0
	movl	$0,	%ecx
# LABEL L3
L3:
# END
	movl	%ebp,	%esp
	popl	%ebp
	movl	%ecx,	%eax
	ret
	.set	LprintArray_SIZE,	4
