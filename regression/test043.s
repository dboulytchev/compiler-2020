	.global	main
	.data
global_i:	.int	0
global_j:	.int	0
global_x:	.int	0
global_y:	.int	0
string_0:	.string	"abcd"
string_1:	.string	"efgh"
	.text
# LABEL main
main:
# BEGIN main, 0, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$main_SIZE,	%esp
# GLOBAL x
# GLOBAL y
# GLOBAL i
# GLOBAL j
# CALL _read, 0
	call	Lread
	addl	$0,	%esp
	movl	%eax,	%ebx
# ST y
	movl	%ebx,	global_y
# DROP
# STRING "abcd"
	movl	$string_0,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# STRING "efgh"
	movl	$string_1,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ARRAY 2
	pushl	%ecx
	pushl	%ebx
	pushl	$2
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# ST x
	movl	%ebx,	global_x
# DROP
# LD x
	movl	global_x,	%ebx
# CALL LprintAS, 1
	pushl	%ebx
	call	LprintAS
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
# CONST 0
	movl	$0,	%ebx
# ST j
	movl	%ebx,	global_j
# DROP
# JMP L2
	jmp	L2
# LABEL L3
L3:
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
# LD j
	movl	global_j,	%ecx
# CONST 97
	movl	$97,	%esi
# STA
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bsta
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# DROP
# LD j
	movl	global_j,	%ecx
# CONST 1
	movl	$1,	%esi
# BINOP +
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
# ST j
	movl	%ecx,	global_j
# DROP
# LABEL L2
L2:
# LD j
	movl	global_j,	%ecx
# LD x
	movl	global_x,	%esi
# LD i
	movl	global_i,	%edi
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
# CJMP nz, L3
	cmpl	$0,	%ecx
	jnz	L3
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
# CALL LprintAS, 1
	pushl	%ebx
	pushl	%ecx
	call	LprintAS
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
# LABEL LprintAS
LprintAS:
# BEGIN LprintAS, 1, 2
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LprintAS_SIZE,	%esp
# CONST 0
	movl	$0,	%ecx
# ST loc[0]
	movl	%ecx,	-4(%ebp)
# DROP
# JMP L4
	jmp	L4
# LABEL L5
L5:
# CONST 0
	movl	$0,	%ecx
# ST loc[1]
	movl	%ecx,	-8(%ebp)
# DROP
# JMP L6
	jmp	L6
# LABEL L7
L7:
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
# LD loc[1]
	movl	-8(%ebp),	%esi
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
# LD loc[1]
	movl	-8(%ebp),	%ecx
# CONST 1
	movl	$1,	%esi
# BINOP +
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
# ST loc[1]
	movl	%ecx,	-8(%ebp)
# DROP
# LABEL L6
L6:
# LD loc[1]
	movl	-8(%ebp),	%ecx
# LD arg[0]
	movl	8(%ebp),	%esi
# LD loc[0]
	movl	-4(%ebp),	%edi
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
# CJMP nz, L7
	cmpl	$0,	%ecx
	jnz	L7
# LD loc[0]
	movl	-4(%ebp),	%ecx
# CONST 1
	movl	$1,	%esi
# BINOP +
	movl	%ecx,	%eax
	addl	%esi,	%eax
	movl	%eax,	%ecx
# ST loc[0]
	movl	%ecx,	-4(%ebp)
# DROP
# LABEL L4
L4:
# LD loc[0]
	movl	-4(%ebp),	%ecx
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
# END
	movl	%ebp,	%esp
	popl	%ebp
	movl	%ecx,	%eax
	ret
	.set	LprintAS_SIZE,	8
