	.globl	LemptyState

	.globl	Li__Infix_6045

	.globl	initState

	.data

string_0:	.string	"State.lama"

string_1:	.string	"undefined variable \"%s\"\n"

_init:	.int 0

	.section custom_data,"aw",@progbits

filler:	.fill	2, 4, 1

	.text

# PUBLIC ("initState") / 

# PUBLIC ("LemptyState") / 

# PUBLIC ("Li__Infix_6045") / 

# EXTERN ("Ls__Infix_37") / 

# EXTERN ("Ls__Infix_47") / 

# EXTERN ("Ls__Infix_42") / 

# EXTERN ("Ls__Infix_45") / 

# EXTERN ("Ls__Infix_43") / 

# EXTERN ("Ls__Infix_62") / 

# EXTERN ("Ls__Infix_6261") / 

# EXTERN ("Ls__Infix_60") / 

# EXTERN ("Ls__Infix_6061") / 

# EXTERN ("Ls__Infix_3361") / 

# EXTERN ("Ls__Infix_6161") / 

# EXTERN ("Ls__Infix_3838") / 

# EXTERN ("Ls__Infix_3333") / 

# EXTERN ("Ls__Infix_58") / 

# EXTERN ("Li__Infix_4343") / 

# EXTERN ("Lcompare") / 

# EXTERN ("Lwrite") / 

# EXTERN ("Lread") / 

# EXTERN ("Lfailure") / 

# EXTERN ("Lfwrite") / 

# EXTERN ("Lfread") / 

# EXTERN ("Lfclose") / 

# EXTERN ("Lfopen") / 

# EXTERN ("Lfprintf") / 

# EXTERN ("Lprintf") / 

# EXTERN ("LmakeString") / 

# EXTERN ("Lsprintf") / 

# EXTERN ("LregexpMatch") / 

# EXTERN ("Lregexp") / 

# EXTERN ("Lsubstring") / 

# EXTERN ("LmatchSubString") / 

# EXTERN ("Lstringcat") / 

# EXTERN ("LreadLine") / 

# EXTERN ("Ltl") / 

# EXTERN ("Lhd") / 

# EXTERN ("Lsnd") / 

# EXTERN ("Lfst") / 

# EXTERN ("Lhash") / 

# EXTERN ("Lclone") / 

# EXTERN ("LmakeArray") / 

# EXTERN ("LstringInt") / 

# EXTERN ("global_sysargs") / 

# LABEL ("initState") / 

initState:

# BEGIN ("initState", 0, 0, []) / 

	movl	_init,	%eax
	test	%eax,	%eax
	jz	_continue
	ret
_continue:

	movl	$1,	_init
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LinitState_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSinitState_SIZE,	%ecx
	rep movsl	
# CONST (0) / 

	movl	$1,	%ebx
# END / 

	movl	%ebx,	%eax
LinitState_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LinitState_SIZE,	0

	.set	LSinitState_SIZE,	0

# LABEL ("Li__Infix_6045") / 

Li__Infix_6045:

# BEGIN ("Li__Infix_6045", 2, 2, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_6045_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_6045_SIZE,	%ecx
	rep movsl	
# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# ARRAY (2) / 

	movl	$5,	%edi
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Barray_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L5") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L5
# LABEL ("L6") / 

L6:

# DROP / 

# JMP ("L3") / 

	jmp	L3
# LABEL ("L5") / 

L5:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# CALL (".elem", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# CALL (".elem", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# CALL (".elem", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# CALL (".elem", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# CLOSURE ("Llambda_0_4", [Local (1); Local (0); Arg (0)]) / 

	pushl	8(%ebp)
	pushl	-4(%ebp)
	pushl	-8(%ebp)
	pushl	$Llambda_0_4
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L3") / 

L3:

# FAIL ((9, 38), true) / 

	pushl	$77
	pushl	$19
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L2") / 

	jmp	L2
# LABEL ("L2") / 

L2:

# END / 

	movl	%ebx,	%eax
LLi__Infix_6045_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_6045_SIZE,	8

	.set	LSLi__Infix_6045_SIZE,	2

# LABEL ("Llambda_0_4") / 

Llambda_0_4:

# BEGIN ("Llambda_0_4", 1, 0, [Local (1); Local (0); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_0_4_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_0_4_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Arg (0)) / 

	movl	12(%ebp),	%ecx
# CALL ("Lcompare", 2) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Lcompare
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# BINOP ("==") / 

	xorl	%eax,	%eax
	cmpl	%ecx,	%ebx
	sete	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# CJMP ("z", "L9") / 

	sarl	%ebx
	cmpl	$0,	%ebx
	jz	L9
# LD (Access (1)) / 

	movl	8(%edx),	%ebx
# JMP ("L7") / 

	jmp	L7
# LABEL ("L9") / 

L9:

# LD (Access (2)) / 

	movl	12(%edx),	%ebx
# LD (Arg (0)) / 

	movl	12(%ebp),	%ecx
# CALLC (1) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L7") / 

	jmp	L7
# LABEL ("L7") / 

L7:

# END / 

	movl	%ebx,	%eax
LLlambda_0_4_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_0_4_SIZE,	0

	.set	LSLlambda_0_4_SIZE,	0

# LABEL ("LemptyState") / 

LemptyState:

# BEGIN ("LemptyState", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLemptyState_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLemptyState_SIZE,	%ecx
	rep movsl	
# STRING ("undefined variable \"%s\"\\n") / 

	movl	$string_1,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lfailure", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Lfailure
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLemptyState_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLemptyState_SIZE,	0

	.set	LSLemptyState_SIZE,	0

