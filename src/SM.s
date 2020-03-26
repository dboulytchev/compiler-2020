	.globl	LcompileSM

	.globl	LevalSM

	.globl	LshowSM

	.globl	LshowSMInsn

	.globl	initSM

	.data

string_5:	.string	"BINOP %s"

string_8:	.string	"CONST %d"

string_6:	.string	"LD %s"

string_3:	.string	"READ"

string_1:	.string	"SM.lama"

string_7:	.string	"ST %s"

string_4:	.string	"WRITE"

string_0:	.string	"Wrong expr"

string_2:	.string	"\n"

_init:	.int 0

	.section custom_data,"aw",@progbits

filler:	.fill	10, 4, 1

	.text

# PUBLIC ("initSM") / 

# PUBLIC ("LshowSMInsn") / 

# PUBLIC ("LshowSM") / 

# PUBLIC ("LevalSM") / 

# PUBLIC ("LcompileSM") / 

# EXTERN ("LdeepFlatten") / 

# EXTERN ("LevalExpr") / 

# EXTERN ("LbinOp") / 

# EXTERN ("Li__Infix_6045") / 

# EXTERN ("LemptyState") / 

# EXTERN ("LgetOutput") / 

# EXTERN ("LreadWorld") / 

# EXTERN ("LwriteWorld") / 

# EXTERN ("LcreateWorld") / 

# EXTERN ("Lfilter") / 

# EXTERN ("Lremove") / 

# EXTERN ("Lunzip") / 

# EXTERN ("Lzip") / 

# EXTERN ("Lflatten") / 

# EXTERN ("Lfind") / 

# EXTERN ("Lassoc") / 

# EXTERN ("Lreverse") / 

# EXTERN ("Li__Infix_434343") / 

# EXTERN ("Lmap") / 

# EXTERN ("Liter") / 

# EXTERN ("Lfoldr") / 

# EXTERN ("Lfoldl") / 

# EXTERN ("Lsize") / 

# EXTERN ("Lsingleton") / 

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

# LABEL ("initSM") / 

initSM:

# BEGIN ("initSM", 0, 0, []) / 

	movl	_init,	%eax
	test	%eax,	%eax
	jz	_continue
	ret
_continue:

	movl	$1,	_init
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LinitSM_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSinitSM_SIZE,	%ecx
	rep movsl	
	call	initList
	call	initWorld
	call	initState
	call	initExpr
	call	initUtil
# CONST (0) / 

	movl	$1,	%ebx
# END / 

	movl	%ebx,	%eax
LinitSM_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LinitSM_SIZE,	0

	.set	LSinitSM_SIZE,	0

# LABEL ("LcompileSM") / 

LcompileSM:

# BEGIN ("LcompileSM", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLcompileSM_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLcompileSM_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CALL ("Lcompile_sm_3", 1) / 

	pushl	%ebx
	call	Lcompile_sm_3
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("LdeepFlatten", 1) / 

	pushl	%ebx
	call	LdeepFlatten
	addl	$4,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLcompileSM_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLcompileSM_SIZE,	0

	.set	LSLcompileSM_SIZE,	0

# LABEL ("Lcompile_sm_3") / 

Lcompile_sm_3:

# BEGIN ("Lcompile_sm_3", 1, 2, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLcompile_sm_3_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLcompile_sm_3_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Read", 1) / 

	movl	$23109769,	%edi
	movl	$3,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L9") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L9
# LABEL ("L10") / 

L10:

# DROP / 

# JMP ("L8") / 

	jmp	L8
# LABEL ("L9") / 

L9:

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SEXP ("READ", 0) / 

	movl	$11663070,	%ebx
	pushl	%ebx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# SEXP ("ST", 1) / 

	movl	$2926,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# SEXP ("cons", 2) / 

	movl	$848787,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# JMP ("L5") / 

	jmp	L5
# LABEL ("L8") / 

L8:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Write", 1) / 

	movl	$1653680651,	%edi
	movl	$3,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L18") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L18
# LABEL ("L19") / 

L19:

# DROP / 

# JMP ("L17") / 

	jmp	L17
# LABEL ("L18") / 

L18:

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CALL ("LcompileExpr", 1) / 

	pushl	%ebx
	call	LcompileExpr
	addl	$4,	%esp
	movl	%eax,	%ebx
# SEXP ("WRITE", 0) / 

	movl	$833764255,	%ecx
	pushl	%ebx
	pushl	%ecx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# SEXP ("cons", 2) / 

	movl	$848787,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# JMP ("L5") / 

	jmp	L5
# LABEL ("L17") / 

L17:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Seq", 2) / 

	movl	$369315,	%edi
	movl	$5,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L27") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L27
# LABEL ("L28") / 

L28:

# DROP / 

# JMP ("L26") / 

	jmp	L26
# LABEL ("L27") / 

L27:

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

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("LcompileSM", 1) / 

	pushl	%ebx
	call	LcompileSM
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LcompileSM", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	LcompileSM
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# SEXP ("cons", 2) / 

	movl	$848787,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# JMP ("L5") / 

	jmp	L5
# LABEL ("L26") / 

L26:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Assn", 2) / 

	movl	$14313885,	%edi
	movl	$5,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L36") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L36
# LABEL ("L37") / 

L37:

# DROP / 

# JMP ("L35") / 

	jmp	L35
# LABEL ("L36") / 

L36:

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

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CALL ("LcompileExpr", 1) / 

	pushl	%ebx
	call	LcompileExpr
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# SEXP ("ST", 1) / 

	movl	$2926,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# SEXP ("cons", 2) / 

	movl	$848787,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# JMP ("L5") / 

	jmp	L5
# LABEL ("L35") / 

L35:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# CONST (0) / 

	movl	$1,	%ebx
# JMP ("L5") / 

	jmp	L5
# LABEL ("L5") / 

L5:

# END / 

	movl	%ebx,	%eax
LLcompile_sm_3_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLcompile_sm_3_SIZE,	12

	.set	LSLcompile_sm_3_SIZE,	3

# LABEL ("LcompileExpr") / 

LcompileExpr:

# BEGIN ("LcompileExpr", 1, 3, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLcompileExpr_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLcompileExpr_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Binop", 3) / 

	movl	$944359329,	%edi
	movl	$7,	-16(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-16(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L48") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L48
# LABEL ("L49") / 

L49:

# DROP / 

# JMP ("L47") / 

	jmp	L47
# LABEL ("L48") / 

L48:

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

# DUP / 

	movl	%ecx,	%esi
# CONST (2) / 

	movl	$5,	%edi
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
# ST (Local (2)) / 

	movl	%ecx,	-12(%ebp)
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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (2) / 

	movl	$5,	%esi
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

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("LcompileExpr", 1) / 

	pushl	%ebx
	call	LcompileExpr
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LcompileExpr", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	LcompileExpr
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Local (2)) / 

	movl	-12(%ebp),	%esi
# SEXP ("BINOP", 1) / 

	movl	$479103594,	%edi
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CONST (0) / 

	movl	$1,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-16(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-16(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("cons", 2) / 

	movl	$848787,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# JMP ("L44") / 

	jmp	L44
# LABEL ("L47") / 

L47:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Const", 1) / 

	movl	$981060009,	%edi
	movl	$3,	-16(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-16(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L60") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L60
# LABEL ("L61") / 

L61:

# DROP / 

# JMP ("L59") / 

	jmp	L59
# LABEL ("L60") / 

L60:

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# SEXP ("CONST", 1) / 

	movl	$497453934,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# CALL ("Lsingleton", 1) / 

	pushl	%ebx
	call	Lsingleton
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L44") / 

	jmp	L44
# LABEL ("L59") / 

L59:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Var", 1) / 

	movl	$393381,	%edi
	movl	$3,	-16(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-16(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L65") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L65
# LABEL ("L66") / 

L66:

# DROP / 

# JMP ("L64") / 

	jmp	L64
# LABEL ("L65") / 

L65:

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# SEXP ("LD", 1) / 

	movl	$2462,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# CALL ("Lsingleton", 1) / 

	pushl	%ebx
	call	Lsingleton
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L44") / 

	jmp	L44
# LABEL ("L64") / 

L64:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# STRING ("Wrong expr") / 

	movl	$string_0,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Lfailure", 1) / 

	pushl	%ebx
	call	Lfailure
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L44") / 

	jmp	L44
# LABEL ("L44") / 

L44:

# END / 

	movl	%ebx,	%eax
LLcompileExpr_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLcompileExpr_SIZE,	16

	.set	LSLcompileExpr_SIZE,	4

# LABEL ("LevalSM") / 

LevalSM:

# BEGIN ("LevalSM", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLevalSM_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLevalSM_SIZE,	%ecx
	rep movsl	
# CONST (0) / 

	movl	$1,	%ebx
# CLOSURE ("LemptyState", []) / 

	pushl	%ebx
	pushl	$LemptyState
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%esi
# CALL ("LcreateWorld", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	LcreateWorld
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL (".array", 3) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALL ("Leval", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Leval
	addl	$8,	%esp
	movl	%eax,	%ebx
# CONST (2) / 

	movl	$5,	%ecx
# CALL (".elem", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALL ("LgetOutput", 1) / 

	pushl	%ebx
	call	LgetOutput
	addl	$4,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLevalSM_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLevalSM_SIZE,	0

	.set	LSLevalSM_SIZE,	0

# LABEL ("Leval") / 

Leval:

# BEGIN ("Leval", 2, 8, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLeval_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLeval_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# ARRAY (3) / 

	movl	$7,	%edi
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Barray_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L83") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L83
# LABEL ("L84") / 

L84:

# DROP / 

# JMP ("L81") / 

	jmp	L81
# LABEL ("L83") / 

L83:

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

# DUP / 

	movl	%ecx,	%esi
# CONST (2) / 

	movl	$5,	%edi
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
# ST (Local (2)) / 

	movl	%ecx,	-12(%ebp)
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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (2) / 

	movl	$5,	%esi
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

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L88") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L88
# LABEL ("L89") / 

L89:

# DROP / 

# JMP ("L87") / 

	jmp	L87
# LABEL ("L88") / 

L88:

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
# DUP / 

	movl	%esi,	%edi
# TAG ("BINOP", 1) / 

	movl	$958207189,	-36(%ebp)
	movl	$3,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L90") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L90
# LABEL ("L91") / 

L91:

# DROP / 

# JMP ("L89") / 

	jmp	L89
# LABEL ("L90") / 

L90:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# CALL (".elem", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# DROP / 

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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (2)) / 

	movl	-12(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L94") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L94
# LABEL ("L95") / 

L95:

# DROP / 

# JMP ("L92") / 

	jmp	L92
# LABEL ("L94") / 

L94:

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
# DUP / 

	movl	%esi,	%edi
# TAG ("cons", 2) / 

	movl	$1697575,	-36(%ebp)
	movl	$5,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L96") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L96
# LABEL ("L97") / 

L97:

# DROP / 

# JMP ("L95") / 

	jmp	L95
# LABEL ("L96") / 

L96:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# CALL (".elem", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# DROP / 

# DUP / 

	movl	%esi,	%edi
# CONST (1) / 

	movl	$3,	-36(%ebp)
# CALL (".elem", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# DROP / 

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
# ST (Local (7)) / 

	movl	%ecx,	-32(%ebp)
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
# ST (Local (6)) / 

	movl	%ecx,	-28(%ebp)
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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
# DROP / 

# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# LD (Local (6)) / 

	movl	-28(%ebp),	%ecx
# LD (Local (7)) / 

	movl	-32(%ebp),	%esi
# CALL ("LbinOp", 3) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LbinOp
	addl	$12,	%esp
	movl	%eax,	%ebx
# LD (Local (5)) / 

	movl	-24(%ebp),	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL (".array", 3) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("Leval", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Leval
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L80") / 

	jmp	L80
# LABEL ("L92") / 

L92:

# FAIL ((30, 35), true) / 

	pushl	$71
	pushl	$61
	pushl	$string_1
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L80") / 

	jmp	L80
# JMP ("L80") / 

	jmp	L80
# LABEL ("L87") / 

L87:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L109") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L109
# LABEL ("L110") / 

L110:

# DROP / 

# JMP ("L108") / 

	jmp	L108
# LABEL ("L109") / 

L109:

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
# DUP / 

	movl	%esi,	%edi
# TAG ("CONST", 1) / 

	movl	$994907869,	-36(%ebp)
	movl	$3,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L111") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L111
# LABEL ("L112") / 

L112:

# DROP / 

# JMP ("L110") / 

	jmp	L110
# LABEL ("L111") / 

L111:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# CALL (".elem", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# DROP / 

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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL (".array", 3) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("Leval", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Leval
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L80") / 

	jmp	L80
# LABEL ("L108") / 

L108:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L121") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L121
# LABEL ("L122") / 

L122:

# DROP / 

# JMP ("L120") / 

	jmp	L120
# LABEL ("L121") / 

L121:

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
# DUP / 

	movl	%esi,	%edi
# TAG ("READ", 0) / 

	movl	$23326141,	-36(%ebp)
	movl	$1,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L123") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L123
# LABEL ("L124") / 

L124:

# DROP / 

# JMP ("L122") / 

	jmp	L122
# LABEL ("L123") / 

L123:

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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CALL ("LreadWorld", 1) / 

	pushl	%ebx
	call	LreadWorld
	addl	$4,	%esp
	movl	%eax,	%ebx
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
# CJMP ("nz", "L128") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L128
# LABEL ("L129") / 

L129:

# DROP / 

# JMP ("L125") / 

	jmp	L125
# LABEL ("L128") / 

L128:

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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
# DROP / 

# DROP / 

# LD (Local (5)) / 

	movl	-24(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (4)) / 

	movl	-20(%ebp),	%esi
# CALL (".array", 3) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("Leval", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Leval
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L80") / 

	jmp	L80
# LABEL ("L125") / 

L125:

# FAIL ((34, 35), true) / 

	pushl	$71
	pushl	$69
	pushl	$string_1
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L80") / 

	jmp	L80
# JMP ("L80") / 

	jmp	L80
# LABEL ("L120") / 

L120:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L138") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L138
# LABEL ("L139") / 

L139:

# DROP / 

# JMP ("L137") / 

	jmp	L137
# LABEL ("L138") / 

L138:

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
# DUP / 

	movl	%esi,	%edi
# TAG ("WRITE", 0) / 

	movl	$1667528511,	-36(%ebp)
	movl	$1,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L140") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L140
# LABEL ("L141") / 

L141:

# DROP / 

# JMP ("L139") / 

	jmp	L139
# LABEL ("L140") / 

L140:

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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (2)) / 

	movl	-12(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L144") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L144
# LABEL ("L145") / 

L145:

# DROP / 

# JMP ("L142") / 

	jmp	L142
# LABEL ("L144") / 

L144:

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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
# DROP / 

# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (5)) / 

	movl	-24(%ebp),	%esi
# LD (Local (0)) / 

	movl	-4(%ebp),	%edi
# CALL ("LwriteWorld", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	LwriteWorld
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL (".array", 3) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("Leval", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Leval
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L80") / 

	jmp	L80
# LABEL ("L142") / 

L142:

# FAIL ((37, 35), true) / 

	pushl	$71
	pushl	$75
	pushl	$string_1
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L80") / 

	jmp	L80
# JMP ("L80") / 

	jmp	L80
# LABEL ("L137") / 

L137:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L154") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L154
# LABEL ("L155") / 

L155:

# DROP / 

# JMP ("L153") / 

	jmp	L153
# LABEL ("L154") / 

L154:

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
# DUP / 

	movl	%esi,	%edi
# TAG ("LD", 1) / 

	movl	$4925,	-36(%ebp)
	movl	$3,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L156") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L156
# LABEL ("L157") / 

L157:

# DROP / 

# JMP ("L155") / 

	jmp	L155
# LABEL ("L156") / 

L156:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# CALL (".elem", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# DROP / 

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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# LD (Local (4)) / 

	movl	-20(%ebp),	%ecx
# CALLC (1) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL (".array", 3) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("Leval", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Leval
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L80") / 

	jmp	L80
# LABEL ("L153") / 

L153:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L168") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L168
# LABEL ("L169") / 

L169:

# DROP / 

# JMP ("L167") / 

	jmp	L167
# LABEL ("L168") / 

L168:

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
# DUP / 

	movl	%esi,	%edi
# TAG ("ST", 1) / 

	movl	$5853,	-36(%ebp)
	movl	$3,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L170") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L170
# LABEL ("L171") / 

L171:

# DROP / 

# JMP ("L169") / 

	jmp	L169
# LABEL ("L170") / 

L170:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# CALL (".elem", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# DROP / 

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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (2)) / 

	movl	-12(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L174") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L174
# LABEL ("L175") / 

L175:

# DROP / 

# JMP ("L172") / 

	jmp	L172
# LABEL ("L174") / 

L174:

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
# ST (Local (6)) / 

	movl	%ecx,	-28(%ebp)
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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
# DROP / 

# DROP / 

# LD (Local (5)) / 

	movl	-24(%ebp),	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (4)) / 

	movl	-20(%ebp),	%esi
# LD (Local (6)) / 

	movl	-28(%ebp),	%edi
# CALL (".array", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Li__Infix_6045", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_6045
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL (".array", 3) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("Leval", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Leval
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L80") / 

	jmp	L80
# LABEL ("L172") / 

L172:

# FAIL ((41, 35), true) / 

	pushl	$71
	pushl	$83
	pushl	$string_1
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L80") / 

	jmp	L80
# JMP ("L80") / 

	jmp	L80
# LABEL ("L167") / 

L167:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# LD (Local (2)) / 

	movl	-12(%ebp),	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL (".array", 3) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	movl	%eax,	%ebx
# JMP ("L80") / 

	jmp	L80
# JMP ("L80") / 

	jmp	L80
# LABEL ("L81") / 

L81:

# FAIL ((28, 40), true) / 

	pushl	$81
	pushl	$57
	pushl	$string_1
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L80") / 

	jmp	L80
# LABEL ("L80") / 

L80:

# END / 

	movl	%ebx,	%eax
LLeval_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLeval_SIZE,	40

	.set	LSLeval_SIZE,	10

# LABEL ("LshowSM") / 

LshowSM:

# BEGIN ("LshowSM", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLshowSM_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLshowSM_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_0_54", []) / 

	pushl	$Llambda_0_54
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lmap", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Lmap
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALL ("Lstringcat", 1) / 

	pushl	%ebx
	call	Lstringcat
	addl	$4,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLshowSM_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLshowSM_SIZE,	0

	.set	LSLshowSM_SIZE,	0

# LABEL ("Llambda_0_54") / 

Llambda_0_54:

# BEGIN ("Llambda_0_54", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_0_54_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_0_54_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CALL ("LshowSMInsn", 1) / 

	pushl	%ebx
	call	LshowSMInsn
	addl	$4,	%esp
	movl	%eax,	%ebx
# STRING ("\\n") / 

	movl	$string_2,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_4343", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_4343
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_0_54_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_0_54_SIZE,	0

	.set	LSLlambda_0_54_SIZE,	0

# LABEL ("LshowSMInsn") / 

LshowSMInsn:

# BEGIN ("LshowSMInsn", 1, 1, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLshowSMInsn_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLshowSMInsn_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("READ", 0) / 

	movl	$23326141,	%edi
	movl	$1,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L200") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L200
# LABEL ("L201") / 

L201:

# DROP / 

# JMP ("L199") / 

	jmp	L199
# LABEL ("L200") / 

L200:

# DROP / 

# DROP / 

# STRING ("READ") / 

	movl	$string_3,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Lsprintf", 1) / 

	pushl	%ebx
	call	Lsprintf
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L196") / 

	jmp	L196
# LABEL ("L199") / 

L199:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("WRITE", 0) / 

	movl	$1667528511,	%edi
	movl	$1,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L204") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L204
# LABEL ("L205") / 

L205:

# DROP / 

# JMP ("L203") / 

	jmp	L203
# LABEL ("L204") / 

L204:

# DROP / 

# DROP / 

# STRING ("WRITE") / 

	movl	$string_4,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Lsprintf", 1) / 

	pushl	%ebx
	call	Lsprintf
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L196") / 

	jmp	L196
# LABEL ("L203") / 

L203:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L208") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L208
# LABEL ("L209") / 

L209:

# DROP / 

# JMP ("L207") / 

	jmp	L207
# LABEL ("L208") / 

L208:

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# STRING ("BINOP %s") / 

	movl	$string_5,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L196") / 

	jmp	L196
# LABEL ("L207") / 

L207:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("LD", 1) / 

	movl	$4925,	%edi
	movl	$3,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L213") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L213
# LABEL ("L214") / 

L214:

# DROP / 

# JMP ("L212") / 

	jmp	L212
# LABEL ("L213") / 

L213:

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# STRING ("LD %s") / 

	movl	$string_6,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L196") / 

	jmp	L196
# LABEL ("L212") / 

L212:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("ST", 1) / 

	movl	$5853,	%edi
	movl	$3,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L218") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L218
# LABEL ("L219") / 

L219:

# DROP / 

# JMP ("L217") / 

	jmp	L217
# LABEL ("L218") / 

L218:

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# STRING ("ST %s") / 

	movl	$string_7,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L196") / 

	jmp	L196
# LABEL ("L217") / 

L217:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("CONST", 1) / 

	movl	$994907869,	%edi
	movl	$3,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L222") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L222
# LABEL ("L223") / 

L223:

# DROP / 

# JMP ("L197") / 

	jmp	L197
# LABEL ("L222") / 

L222:

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# STRING ("CONST %d") / 

	movl	$string_8,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L196") / 

	jmp	L196
# LABEL ("L197") / 

L197:

# FAIL ((12, 7), true) / 

	pushl	$15
	pushl	$25
	pushl	$string_1
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L196") / 

	jmp	L196
# LABEL ("L196") / 

L196:

# END / 

	movl	%ebx,	%eax
LLshowSMInsn_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLshowSMInsn_SIZE,	8

	.set	LSLshowSMInsn_SIZE,	2

