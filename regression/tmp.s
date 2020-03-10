	.globl	main

	.data

string_6:	.string	"!!"

string_12:	.string	"!="

string_14:	.string	"%"

string_4:	.string	"%d\n"

string_0:	.string	"%s\n"

string_7:	.string	"&&"

string_16:	.string	"*"

string_18:	.string	"+"

string_17:	.string	"-"

string_1:	.string	"-i"

string_2:	.string	"-s"

string_15:	.string	"/"

string_11:	.string	"<"

string_10:	.string	"<="

string_13:	.string	"=="

string_9:	.string	">"

string_8:	.string	">="

string_3:	.string	"tmp.lama"

string_5:	.string	"z"

_init:	.int 0

	.section custom_data,"aw",@progbits

filler:	.fill	1, 4, 1

	.text

# PUBLIC ("main") / 

# EXTERN ("LcompileX86") / 

# EXTERN ("LcompileSM") / 

# EXTERN ("LevalSM") / 

# EXTERN ("Li__Infix_6045") / 

# EXTERN ("LemptyState") / 

# EXTERN ("LevalStmt") / 

# EXTERN ("LgetOutput") / 

# EXTERN ("LreadWorld") / 

# EXTERN ("LwriteWorld") / 

# EXTERN ("LcreateWorld") / 

# EXTERN ("Lfix") / 

# EXTERN ("Li__Infix_35") / 

# EXTERN ("Li__Infix_36") / 

# EXTERN ("Lid") / 

# EXTERN ("LiteriArray") / 

# EXTERN ("LiterArray") / 

# EXTERN ("LfoldrArray") / 

# EXTERN ("LfoldlArray") / 

# EXTERN ("LlistArray") / 

# EXTERN ("LarrayList") / 

# EXTERN ("LmapArray") / 

# EXTERN ("LinitArray") / 

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

# LABEL ("main") / 

main:

# BEGIN ("main", 0, 1, []) / 

	movl	_init,	%eax
	test	%eax,	%eax
	jz	_continue
	ret
_continue:

	movl	$1,	_init
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$Lmain_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSmain_SIZE,	%ecx
	rep movsl	
	call	L__gc_init
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	set_args
	addl	$8,	%esp
	call	initList
	call	initArray
	call	initFun
	call	initWorld
	call	initStmt
	call	initState
	call	initSM
	call	initX86
# LD (Global ("sysargs")) / 

	movl	global_sysargs,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# ARRAY (1) / 

	movl	$3,	%edi
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Barray_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L4") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L4
# LABEL ("L5") / 

L5:

# DROP / 

# JMP ("L3") / 

	jmp	L3
# LABEL ("L4") / 

L4:

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

# DROP / 

# STRING ("%s\\n") / 

	movl	$string_0,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Lprogram", 0) / 

	pushl	%ebx
	call	Lprogram
	addl	$0,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("LcompileSM", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	LcompileSM
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("LcompileX86", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	LcompileX86
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lprintf", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Lprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L0") / 

	jmp	L0
# LABEL ("L3") / 

L3:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# LDA (Local (0)) / 

	leal	-4(%ebp),	%ebx
# CLOSURE ("Llambda_0_5", []) / 

	pushl	%ebx
	pushl	$Llambda_0_5
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL ("Lfix", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lfix
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# CALLC (1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lreverse", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lreverse
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# CLOSURE ("Llambda_1_5", []) / 

	pushl	$Llambda_1_5
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Global ("sysargs")) / 

	movl	global_sysargs,	%ecx
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
# DUP / 

	movl	%ecx,	%esi
# STRING ("-i") / 

	movl	$string_1,	%edi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Bstring
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("z", "L25") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L25
# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lprogram", 0) / 

	pushl	%ebx
	pushl	%ecx
	call	Lprogram
	addl	$0,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("LevalStmt", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	LevalStmt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# JMP ("L19") / 

	jmp	L19
# LABEL ("L25") / 

L25:

# DUP / 

	movl	%ecx,	%esi
# STRING ("-s") / 

	movl	$string_2,	%edi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Bstring
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# PATT (StrCmp) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("z", "L21") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L21
# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lprogram", 0) / 

	pushl	%ebx
	pushl	%ecx
	call	Lprogram
	addl	$0,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("LcompileSM", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	LcompileSM
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("LevalSM", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	LevalSM
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# JMP ("L19") / 

	jmp	L19
# LABEL ("L21") / 

L21:

# FAIL ((63, 13), true) / 

	pushl	$27
	pushl	$127
	pushl	$string_3
	pushl	%ecx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L19") / 

	jmp	L19
# LABEL ("L19") / 

L19:

# CALL ("Liter", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Liter
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L0") / 

	jmp	L0
# LABEL ("L0") / 

L0:

# END / 

	movl	%ebx,	%eax
Lmain_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
	.set	Lmain_SIZE,	4

	.set	LSmain_SIZE,	1

# LABEL ("Llambda_1_5") / 

Llambda_1_5:

# BEGIN ("Llambda_1_5", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_1_5_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_1_5_SIZE,	%ecx
	rep movsl	
# STRING ("%d\\n") / 

	movl	$string_4,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lprintf", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Lprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_1_5_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_1_5_SIZE,	0

	.set	LSLlambda_1_5_SIZE,	0

# LABEL ("Llambda_0_5") / 

Llambda_0_5:

# BEGIN ("Llambda_0_5", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_0_5_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_0_5_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_2_13", [Arg (0)]) / 

	pushl	8(%ebp)
	pushl	$Llambda_2_13
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_0_5_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_0_5_SIZE,	0

	.set	LSLlambda_0_5_SIZE,	0

# LABEL ("Llambda_2_13") / 

Llambda_2_13:

# BEGIN ("Llambda_2_13", 1, 1, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_2_13_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_2_13_SIZE,	%ecx
	rep movsl	
# CALL ("LreadLine", 0) / 

	pushl	%edx
	call	LreadLine
	addl	$0,	%esp
	popl	%edx
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# PATT (UnBoxed) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Bunboxed_patt
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CJMP ("z", "L41") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L41
# DROP / 

# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# JMP ("L37") / 

	jmp	L37
# LABEL ("L41") / 

L41:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LstringInt", 1) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	LstringInt
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
# SEXP ("cons", 2) / 

	movl	$848787,	%edi
	pushl	%edx
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
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
# JMP ("L37") / 

	jmp	L37
# LABEL ("L37") / 

L37:

# END / 

	movl	%ebx,	%eax
LLlambda_2_13_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_2_13_SIZE,	4

	.set	LSLlambda_2_13_SIZE,	1

# LABEL ("Lprogram") / 

Lprogram:

# BEGIN ("Lprogram", 0, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLprogram_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLprogram_SIZE,	%ecx
	rep movsl	
# STRING ("z") / 

	movl	$string_5,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# CALL ("Li__Infix_45", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_45
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (2) / 

	movl	$5,	%esi
# CALL ("Li__Infix_45", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_45
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (3) / 

	movl	$7,	%esi
# CALL ("Li__Infix_45", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_45
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (4) / 

	movl	$9,	%esi
# CALL ("Li__Infix_45", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_45
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (5) / 

	movl	$11,	%esi
# CALL ("Li__Infix_45", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_45
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (6) / 

	movl	$13,	%esi
# CALL ("Li__Infix_45", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_45
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (7) / 

	movl	$15,	%esi
# CALL ("Li__Infix_45", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_45
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (8) / 

	movl	$17,	%esi
# CALL ("Li__Infix_45", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_45
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (9) / 

	movl	$19,	%esi
# CALL ("Li__Infix_45", 2) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_45
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_585861", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_585861
	addl	$8,	%esp
	movl	%eax,	%ebx
# STRING ("z") / 

	movl	$string_5,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lwrite", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lwrite
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_6262", 2) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_6262
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLprogram_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLprogram_SIZE,	0

	.set	LSLprogram_SIZE,	0

# LABEL ("Li__Infix_6262") / 

Li__Infix_6262:

# BEGIN ("Li__Infix_6262", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_6262_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_6262_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# SEXP ("Seq", 2) / 

	movl	$184657,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_6262_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_6262_SIZE,	0

	.set	LSLi__Infix_6262_SIZE,	0

# LABEL ("Li__Infix_585861") / 

Li__Infix_585861:

# BEGIN ("Li__Infix_585861", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_585861_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_585861_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# SEXP ("Assn", 2) / 

	movl	$7156942,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_585861_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_585861_SIZE,	0

	.set	LSLi__Infix_585861_SIZE,	0

# LABEL ("Lwrite") / 

Lwrite:

# BEGIN ("Lwrite", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLwrite_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLwrite_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	call	Lopnd
	addl	$4,	%esp
	movl	%eax,	%ebx
# SEXP ("Write", 1) / 

	movl	$826840325,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLwrite_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLwrite_SIZE,	0

	.set	LSLwrite_SIZE,	0

# LABEL ("Lread") / 

Lread:

# BEGIN ("Lread", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLread_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLread_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# SEXP ("Read", 1) / 

	movl	$11554884,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLread_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLread_SIZE,	0

	.set	LSLread_SIZE,	0

# LABEL ("Li__Infix_3333") / 

Li__Infix_3333:

# BEGIN ("Li__Infix_3333", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_3333_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_3333_SIZE,	%ecx
	rep movsl	
# STRING ("!!") / 

	movl	$string_6,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_3333_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_3333_SIZE,	0

	.set	LSLi__Infix_3333_SIZE,	0

# LABEL ("Li__Infix_3838") / 

Li__Infix_3838:

# BEGIN ("Li__Infix_3838", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_3838_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_3838_SIZE,	%ecx
	rep movsl	
# STRING ("&&") / 

	movl	$string_7,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_3838_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_3838_SIZE,	0

	.set	LSLi__Infix_3838_SIZE,	0

# LABEL ("Li__Infix_6261") / 

Li__Infix_6261:

# BEGIN ("Li__Infix_6261", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_6261_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_6261_SIZE,	%ecx
	rep movsl	
# STRING (">=") / 

	movl	$string_8,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_6261_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_6261_SIZE,	0

	.set	LSLi__Infix_6261_SIZE,	0

# LABEL ("Li__Infix_62") / 

Li__Infix_62:

# BEGIN ("Li__Infix_62", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_62_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_62_SIZE,	%ecx
	rep movsl	
# STRING (">") / 

	movl	$string_9,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_62_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_62_SIZE,	0

	.set	LSLi__Infix_62_SIZE,	0

# LABEL ("Li__Infix_6061") / 

Li__Infix_6061:

# BEGIN ("Li__Infix_6061", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_6061_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_6061_SIZE,	%ecx
	rep movsl	
# STRING ("<=") / 

	movl	$string_10,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_6061_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_6061_SIZE,	0

	.set	LSLi__Infix_6061_SIZE,	0

# LABEL ("Li__Infix_60") / 

Li__Infix_60:

# BEGIN ("Li__Infix_60", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_60_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_60_SIZE,	%ecx
	rep movsl	
# STRING ("<") / 

	movl	$string_11,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_60_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_60_SIZE,	0

	.set	LSLi__Infix_60_SIZE,	0

# LABEL ("Li__Infix_3361") / 

Li__Infix_3361:

# BEGIN ("Li__Infix_3361", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_3361_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_3361_SIZE,	%ecx
	rep movsl	
# STRING ("!=") / 

	movl	$string_12,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_3361_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_3361_SIZE,	0

	.set	LSLi__Infix_3361_SIZE,	0

# LABEL ("Li__Infix_6161") / 

Li__Infix_6161:

# BEGIN ("Li__Infix_6161", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_6161_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_6161_SIZE,	%ecx
	rep movsl	
# STRING ("==") / 

	movl	$string_13,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_6161_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_6161_SIZE,	0

	.set	LSLi__Infix_6161_SIZE,	0

# LABEL ("Li__Infix_37") / 

Li__Infix_37:

# BEGIN ("Li__Infix_37", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_37_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_37_SIZE,	%ecx
	rep movsl	
# STRING ("%") / 

	movl	$string_14,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_37_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_37_SIZE,	0

	.set	LSLi__Infix_37_SIZE,	0

# LABEL ("Li__Infix_47") / 

Li__Infix_47:

# BEGIN ("Li__Infix_47", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_47_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_47_SIZE,	%ecx
	rep movsl	
# STRING ("/") / 

	movl	$string_15,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_47_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_47_SIZE,	0

	.set	LSLi__Infix_47_SIZE,	0

# LABEL ("Li__Infix_42") / 

Li__Infix_42:

# BEGIN ("Li__Infix_42", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_42_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_42_SIZE,	%ecx
	rep movsl	
# STRING ("*") / 

	movl	$string_16,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_42_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_42_SIZE,	0

	.set	LSLi__Infix_42_SIZE,	0

# LABEL ("Li__Infix_45") / 

Li__Infix_45:

# BEGIN ("Li__Infix_45", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_45_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_45_SIZE,	%ecx
	rep movsl	
# STRING ("-") / 

	movl	$string_17,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_45_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_45_SIZE,	0

	.set	LSLi__Infix_45_SIZE,	0

# LABEL ("Li__Infix_43") / 

Li__Infix_43:

# BEGIN ("Li__Infix_43", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLi__Infix_43_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLi__Infix_43_SIZE,	%ecx
	rep movsl	
# STRING ("+") / 

	movl	$string_18,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	call	Lopnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lopnd", 1) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lopnd
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLi__Infix_43_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLi__Infix_43_SIZE,	0

	.set	LSLi__Infix_43_SIZE,	0

# LABEL ("Lopnd") / 

Lopnd:

# BEGIN ("Lopnd", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLopnd_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLopnd_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# PATT (String) / 

	pushl	%ebx
	pushl	%ecx
	call	Bstring_tag_patt
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L164") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L164
# DROP / 

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# SEXP ("Var", 1) / 

	movl	$196690,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L161") / 

	jmp	L161
# LABEL ("L164") / 

L164:

# DUP / 

	movl	%ebx,	%ecx
# PATT (UnBoxed) / 

	pushl	%ebx
	pushl	%ecx
	call	Bunboxed_patt
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CJMP ("z", "L166") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L166
# DROP / 

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# SEXP ("Const", 1) / 

	movl	$490530004,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L161") / 

	jmp	L161
# LABEL ("L166") / 

L166:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# JMP ("L161") / 

	jmp	L161
# LABEL ("L161") / 

L161:

# END / 

	movl	%ebx,	%eax
LLopnd_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLopnd_SIZE,	0

	.set	LSLopnd_SIZE,	0

