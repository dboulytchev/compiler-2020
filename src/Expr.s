	.globl	LevalExpr

	.globl	LevaluateBINOP

	.globl	initExpr

	.data

string_12:	.string	"!!"

string_6:	.string	"!="

string_4:	.string	"%"

string_11:	.string	"&&"

string_2:	.string	"*"

string_0:	.string	"+"

string_1:	.string	"-"

string_3:	.string	"/"

string_8:	.string	"<"

string_10:	.string	"<="

string_5:	.string	"=="

string_7:	.string	">"

string_9:	.string	">="

string_13:	.string	"Expr.lama"

_init:	.int 0

	.section custom_data,"aw",@progbits

filler:	.fill	4, 4, 1

	.text

# PUBLIC ("initExpr") / 

# PUBLIC ("LevalExpr") / 

# PUBLIC ("LevaluateBINOP") / 

# EXTERN ("Li__Infix_6045") / 

# EXTERN ("LemptyState") / 

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

# LABEL ("initExpr") / 

initExpr:

# BEGIN ("initExpr", 0, 0, []) / 

	movl	_init,	%eax
	test	%eax,	%eax
	jz	_continue
	ret
_continue:

	movl	$1,	_init
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LinitExpr_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSinitExpr_SIZE,	%ecx
	rep movsl	
	call	initList
	call	initState
# CONST (0) / 

	movl	$1,	%ebx
# END / 

	movl	%ebx,	%eax
LinitExpr_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LinitExpr_SIZE,	0

	.set	LSinitExpr_SIZE,	0

# LABEL ("LevaluateBINOP") / 

LevaluateBINOP:

# BEGIN ("LevaluateBINOP", 3, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLevaluateBINOP_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLevaluateBINOP_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# STRING ("+") / 

	movl	$string_0,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L5") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L5
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("+") / 

	addl	%ecx,	%ebx
	decl	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L5") / 

L5:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("-") / 

	movl	$string_1,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L8") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L8
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("-") / 

	subl	%ecx,	%ebx
	orl	$0x0001,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L8") / 

L8:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("*") / 

	movl	$string_2,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L11") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L11
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("*") / 

	decl	%ebx
	movl	%ecx,	%eax
	sarl	%eax
	imull	%eax,	%ebx
	orl	$0x0001,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L11") / 

L11:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("/") / 

	movl	$string_3,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L14") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L14
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("/") / 

	movl	%ebx,	%eax
	sarl	%eax
	cltd
	sarl	%ecx
	idivl	%ecx
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L14") / 

L14:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("%") / 

	movl	$string_4,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L17") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L17
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("%") / 

	movl	%ebx,	%eax
	sarl	%eax
	cltd
	sarl	%ecx
	idivl	%ecx
	sall	%edx
	orl	$0x0001,	%edx
	movl	%edx,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L17") / 

L17:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("==") / 

	movl	$string_5,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L20") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L20
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("==") / 

	xorl	%eax,	%eax
	cmpl	%ecx,	%ebx
	sete	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L20") / 

L20:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("!=") / 

	movl	$string_6,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L23") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L23
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("!=") / 

	xorl	%eax,	%eax
	cmpl	%ecx,	%ebx
	setne	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L23") / 

L23:

# DUP / 

	movl	%ebx,	%ecx
# STRING (">") / 

	movl	$string_7,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L26") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L26
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP (">") / 

	xorl	%eax,	%eax
	cmpl	%ecx,	%ebx
	setg	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L26") / 

L26:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("<") / 

	movl	$string_8,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L29") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L29
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("<") / 

	xorl	%eax,	%eax
	cmpl	%ecx,	%ebx
	setl	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L29") / 

L29:

# DUP / 

	movl	%ebx,	%ecx
# STRING (">=") / 

	movl	$string_9,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L32") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L32
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP (">=") / 

	xorl	%eax,	%eax
	cmpl	%ecx,	%ebx
	setge	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L32") / 

L32:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("<=") / 

	movl	$string_10,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L35") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L35
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("<=") / 

	xorl	%eax,	%eax
	cmpl	%ecx,	%ebx
	setle	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L35") / 

L35:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("&&") / 

	movl	$string_11,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L38") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L38
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("&&") / 

	decl	%ecx
	movl	%ecx,	%eax
	andl	%ecx,	%eax
	movl	$0,	%eax
	setne	%al
	decl	%ebx
	movl	%ebx,	%edx
	andl	%ebx,	%edx
	movl	$0,	%edx
	setne	%dl
	andl	%edx,	%eax
	setne	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L38") / 

L38:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("!!") / 

	movl	$string_12,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L3") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L3
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# BINOP ("!!") / 

	movl	%ebx,	%eax
	sarl	%eax
	sarl	%ecx
	orl	%ecx,	%eax
	movl	$0,	%eax
	setne	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# JMP ("L2") / 

	jmp	L2
# LABEL ("L3") / 

L3:

# FAIL ((19, 12), true) / 

	pushl	$25
	pushl	$39
	pushl	$string_13
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L2") / 

	jmp	L2
# LABEL ("L2") / 

L2:

# END / 

	movl	%ebx,	%eax
LLevaluateBINOP_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLevaluateBINOP_SIZE,	0

	.set	LSLevaluateBINOP_SIZE,	0

# LABEL ("LevalExpr") / 

LevalExpr:

# BEGIN ("LevalExpr", 2, 3, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLevalExpr_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLevalExpr_SIZE,	%ecx
	rep movsl	
# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
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
# CJMP ("nz", "L47") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L47
# LABEL ("L48") / 

L48:

# DROP / 

# JMP ("L46") / 

	jmp	L46
# LABEL ("L47") / 

L47:

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
# JMP ("L43") / 

	jmp	L43
# LABEL ("L46") / 

L46:

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
# CJMP ("nz", "L50") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L50
# LABEL ("L51") / 

L51:

# DROP / 

# JMP ("L49") / 

	jmp	L49
# LABEL ("L50") / 

L50:

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

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALLC (1) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L43") / 

	jmp	L43
# LABEL ("L49") / 

L49:

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
# CJMP ("nz", "L54") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L54
# LABEL ("L55") / 

L55:

# DROP / 

# JMP ("L44") / 

	jmp	L44
# LABEL ("L54") / 

L54:

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

# LD (Local (2)) / 

	movl	-12(%ebp),	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# LD (Local (1)) / 

	movl	-8(%ebp),	%esi
# CALL ("LevalExpr", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	LevalExpr
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (0)) / 

	movl	8(%ebp),	%esi
# LD (Local (0)) / 

	movl	-4(%ebp),	%edi
# CALL ("LevalExpr", 2) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	LevalExpr
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("LevaluateBINOP", 3) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LevaluateBINOP
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L43") / 

	jmp	L43
# LABEL ("L44") / 

L44:

# FAIL ((10, 6), true) / 

	pushl	$13
	pushl	$21
	pushl	$string_13
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L43") / 

	jmp	L43
# LABEL ("L43") / 

L43:

# END / 

	movl	%ebx,	%eax
LLevalExpr_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLevalExpr_SIZE,	16

	.set	LSLevalExpr_SIZE,	4

