	.global	main
	.data
global_i:	.int	0
global_n:	.int	0
global_x:	.int	0
string_0:	.string	"abcdefgh"
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
# STRING "abcdefgh"
	movl	$string_0,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# ST x
	movl	%ebx,	global_x
# DROP
# LD x
	movl	global_x,	%ebx
# CALL LprintString, 1
	pushl	%ebx
	call	LprintString
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
# CONST 2
	movl	$2,	%edi
# BINOP +
	movl	%esi,	%eax
	addl	%edi,	%eax
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
# CALL LprintString, 1
	pushl	%ebx
	pushl	%ecx
	call	LprintString
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
# LABEL LprintString
LprintString:
# BEGIN LprintString, 1, 0
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LprintString_SIZE,	%esp
# CONST 0
	movl	$0,	%ecx
# ST i
	movl	%ecx,	global_i
# DROP
# JMP L2
	jmp	L2
# LABEL L3
L3:
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
# LABEL L2
L2:
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
# CJMP nz, L3
	cmpl	$0,	%ecx
	jnz	L3
# CONST 0
	movl	$0,	%ecx
# END
	movl	%ebp,	%esp
	popl	%ebp
	movl	%ecx,	%eax
	ret
	.set	LprintString_SIZE,	0
