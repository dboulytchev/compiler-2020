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
# CONST 9
	movl	$9,	%ecx
# CONST 8
	movl	$8,	%esi
# CONST 7
	movl	$7,	%edi
# CONST 6
	movl	$6,	-4(%ebp)
# CONST 5
	movl	$5,	-8(%ebp)
# ARRAY 6
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$6
	call	Barray
	addl	$28,	%esp
	movl	%eax,	%ebx
# ST x
	movl	%ebx,	global_x
# DROP
# LD x
	movl	global_x,	%ebx
# CALL Lsort, 1
	pushl	%ebx
	call	Lsort
	addl	$4,	%esp
	movl	%eax,	%ebx
# ST x
	movl	%ebx,	global_x
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
# ELEM
	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALL _write, 1
	pushl	%ebx
	call	Lwrite
	addl	$4,	%esp
	movl	%eax,	%ebx
# DROP
# LD i
	movl	global_i,	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST i
	movl	%ebx,	global_i
# DROP
# LABEL L0
L0:
# LD i
	movl	global_i,	%ebx
# LD x
	movl	global_x,	%ecx
# BUILTIN length, 1
	pushl	%ebx
	pushl	%ecx
	call	Blength
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP nz, L1
	cmpl	$0,	%ebx
	jnz	L1
# END
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
	.set	main_SIZE,	8
# LABEL Lsort
Lsort:
# BEGIN Lsort, 1, 4
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$Lsort_SIZE,	%esp
# LD arg[0]
	movl	8(%ebp),	%ebx
# BUILTIN length, 1
	pushl	%ebx
	call	Blength
	addl	$4,	%esp
	movl	%eax,	%ebx
# ST loc[3]
	movl	%ebx,	-16(%ebp)
# DROP
# LD loc[3]
	movl	-16(%ebp),	%ebx
# CONST 0
	movl	$0,	%ecx
# BINOP ==
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	sete	%dl
	movl	%edx,	%ebx
# CJMP z, L2
	cmpl	$0,	%ebx
	jz	L2
# JMP L3
	jmp	L3
# LABEL L2
L2:
# CONST 0
	movl	$0,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# JMP L4
	jmp	L4
# LABEL L5
L5:
# LD loc[0]
	movl	-4(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST loc[1]
	movl	%ebx,	-8(%ebp)
# DROP
# JMP L6
	jmp	L6
# LABEL L7
L7:
# LD arg[0]
	movl	8(%ebp),	%ebx
# LD loc[1]
	movl	-8(%ebp),	%ecx
# ELEM
	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD arg[0]
	movl	8(%ebp),	%ecx
# LD loc[0]
	movl	-4(%ebp),	%esi
# ELEM
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP z, L8
	cmpl	$0,	%ebx
	jz	L8
# LD arg[0]
	movl	8(%ebp),	%ebx
# LD loc[0]
	movl	-4(%ebp),	%ecx
# ELEM
	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# ST loc[2]
	movl	%ebx,	-12(%ebp)
# DROP
# LD arg[0]
	movl	8(%ebp),	%ebx
# LD loc[0]
	movl	-4(%ebp),	%ecx
# LD arg[0]
	movl	8(%ebp),	%esi
# LD loc[1]
	movl	-8(%ebp),	%edi
# ELEM
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# STA
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bsta
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# DROP
# LD arg[0]
	movl	8(%ebp),	%ecx
# LD loc[1]
	movl	-8(%ebp),	%esi
# LD loc[2]
	movl	-12(%ebp),	%edi
# STA
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Bsta
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP
# JMP L9
	jmp	L9
# LABEL L8
L8:
# LABEL L9
L9:
# LD loc[1]
	movl	-8(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST loc[1]
	movl	%ebx,	-8(%ebp)
# DROP
# LABEL L6
L6:
# LD loc[1]
	movl	-8(%ebp),	%ebx
# LD loc[3]
	movl	-16(%ebp),	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP nz, L7
	cmpl	$0,	%ebx
	jnz	L7
# LD loc[0]
	movl	-4(%ebp),	%ebx
# CONST 1
	movl	$1,	%ecx
# BINOP +
	movl	%ebx,	%eax
	addl	%ecx,	%eax
	movl	%eax,	%ebx
# ST loc[0]
	movl	%ebx,	-4(%ebp)
# DROP
# LABEL L4
L4:
# LD loc[0]
	movl	-4(%ebp),	%ebx
# LD loc[3]
	movl	-16(%ebp),	%ecx
# BINOP <
	movl	%ebx,	%eax
	xorl	%edx,	%edx
	cmpl	%ecx,	%eax
	setl	%dl
	movl	%edx,	%ebx
# CJMP nz, L5
	cmpl	$0,	%ebx
	jnz	L5
# LABEL L3
L3:
# LD arg[0]
	movl	8(%ebp),	%ebx
# END
	movl	%ebp,	%esp
	popl	%ebp
	movl	%ebx,	%eax
	ret
	.set	Lsort_SIZE,	24
