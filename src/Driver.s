	.globl	main

	.data

string_2:	.string	"%d\n"

string_1:	.string	"%s at %d:%d\n"

string_4:	.string	"-i"

string_5:	.string	"-s"

string_0:	.string	"Driver.lama"

string_3:	.string	"input file name not set\n"

string_7:	.string	"mode already set: %s\n"

string_6:	.string	"omitting \"%s\", input file name already set to \"%s\"\n"

_init:	.int 0

	.section custom_data,"aw",@progbits

filler:	.fill	6, 4, 1

global_args:	.int	1

	.text

# PUBLIC ("main") / 

# EXTERN ("LgetBaseName") / 

# EXTERN ("LgetInFile") / 

# EXTERN ("LgetMode") / 

# EXTERN ("LcompileX86") / 

# EXTERN ("LcompileSM") / 

# EXTERN ("LevalSM") / 

# EXTERN ("LshowSM") / 

# EXTERN ("LshowSMInsn") / 

# EXTERN ("LevalStmt") / 

# EXTERN ("global_lident") / 

# EXTERN ("global_end") / 

# EXTERN ("global_decimal") / 

# EXTERN ("global_kSkip") / 

# EXTERN ("global_kWrite") / 

# EXTERN ("global_kRead") / 

# EXTERN ("Ls") / 

# EXTERN ("LinitMatcher") / 

# EXTERN ("LgetCol") / 

# EXTERN ("LgetLine") / 

# EXTERN ("LmatchRegexp") / 

# EXTERN ("LmatchString") / 

# EXTERN ("LendOfMatcher") / 

# EXTERN ("LshowMatcher") / 

# EXTERN ("LcreateRegexp") / 

# EXTERN ("global_parse") / 

# EXTERN ("Lexpr") / 

# EXTERN ("Lright") / 

# EXTERN ("Lleft") / 

# EXTERN ("LparseString") / 

# EXTERN ("Lparse") / 

# EXTERN ("Lobserve") / 

# EXTERN ("Llist0") / 

# EXTERN ("Llist") / 

# EXTERN ("Llist0By") / 

# EXTERN ("LlistBy") / 

# EXTERN ("Lrep") / 

# EXTERN ("Lrep0") / 

# EXTERN ("Lopt") / 

# EXTERN ("Lbypass") / 

# EXTERN ("Llift") / 

# EXTERN ("Li__Infix_64") / 

# EXTERN ("Li__Infix_12462") / 

# EXTERN ("Li__Infix_124") / 

# EXTERN ("Lseq") / 

# EXTERN ("Lalt") / 

# EXTERN ("Lempty") / 

# EXTERN ("Leof") / 

# EXTERN ("Ltoken") / 

# EXTERN ("Lmemo") / 

# EXTERN ("LinitOstap") / 

# EXTERN ("LlogOn") / 

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

# EXTERN ("Li__Infix_585861") / 

# EXTERN ("Lderef") / 

# EXTERN ("Lref") / 

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

# EXTERN ("Lsystem") / 

# EXTERN ("LgetEnv") / 

# LABEL ("main") / 

main:

# BEGIN ("main", 2, 4, []) / 

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
	call	initRef
	call	initArray
	call	initFun
	call	initOstap
	call	initParser
	call	initMatcher
	call	initLexer
	call	initStmt
	call	initSM
	call	initX86
	call	initManifest
# LDA (Global ("args")) / 

	leal	global_args,	%ebx
# LD (Global ("sysargs")) / 

	movl	global_sysargs,	%ecx
# CALL ("LarrayList", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LarrayList
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Ltl", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Ltl
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("LparseArgs", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LparseArgs
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LD (Global ("parse")) / 

	movl	global_parse,	%ebx
# LD (Global ("end")) / 

	movl	global_end,	%ecx
# CALL ("Lbypass", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Lbypass
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Global ("args")) / 

	movl	global_args,	%ecx
# CALL ("LgetInFile", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LgetInFile
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lfread", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Lfread
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("LparseString", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LparseString
	addl	$8,	%esp
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Succ", 1) / 

	movl	$23765383,	%edi
	movl	$3,	-20(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-20(%ebp)
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
# CALL (".elem", 2, false) / 

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
# CALL (".elem", 2, false) / 

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

# LD (Global ("args")) / 

	movl	global_args,	%ebx
# CALL ("LgetMode", 1, false) / 

	pushl	%ebx
	call	LgetMode
	addl	$4,	%esp
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Comp", 0) / 

	movl	$15328929,	%edi
	movl	$1,	-20(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-20(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L24") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L24
# LABEL ("L25") / 

L25:

# DROP / 

# JMP ("L23") / 

	jmp	L23
# LABEL ("L24") / 

L24:

# DROP / 

# DROP / 

# LD (Global ("args")) / 

	movl	global_args,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LcompileSM", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LcompileSM
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("LcompileX86", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LcompileX86
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L0") / 

	jmp	L0
# LABEL ("L23") / 

L23:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DROP / 

# LDA (Local (2)) / 

	leal	-12(%ebp),	%ebx
# CLOSURE ("Llambda_0_7", []) / 

	pushl	%ebx
	pushl	$Llambda_0_7
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL ("Lfix", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Lfix
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# CALLC (1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lreverse", 1, false) / 

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

# CLOSURE ("Llambda_1_7", []) / 

	pushl	$Llambda_1_7
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# DUP / 

	movl	%ecx,	%esi
# DUP / 

	movl	%esi,	%edi
# TAG ("Int", 0) / 

	movl	$288553,	-20(%ebp)
	movl	$1,	-24(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L42") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L42
# LABEL ("L43") / 

L43:

# DROP / 

# JMP ("L41") / 

	jmp	L41
# LABEL ("L42") / 

L42:

# DROP / 

# DROP / 

# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL ("LevalStmt", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	LevalStmt
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# JMP ("L37") / 

	jmp	L37
# LABEL ("L41") / 

L41:

# DUP / 

	movl	%ecx,	%esi
# DUP / 

	movl	%esi,	%edi
# TAG ("SM", 0) / 

	movl	$5839,	-20(%ebp)
	movl	$1,	-24(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L46") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L46
# LABEL ("L47") / 

L47:

# DROP / 

# JMP ("L39") / 

	jmp	L39
# LABEL ("L46") / 

L46:

# DROP / 

# DROP / 

# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL ("LcompileSM", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	LcompileSM
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("LevalSM", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	LevalSM
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# JMP ("L37") / 

	jmp	L37
# LABEL ("L39") / 

L39:

# FAIL ((77, 18), true) / 

	pushl	$37
	pushl	$155
	pushl	$string_0
	pushl	%ecx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L37") / 

	jmp	L37
# LABEL ("L37") / 

L37:

# CALL ("Liter", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Liter
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L0") / 

	jmp	L0
# JMP ("L0") / 

	jmp	L0
# LABEL ("L17") / 

L17:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Fail", 3) / 

	movl	$16786585,	%edi
	movl	$7,	-20(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-20(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L51") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L51
# LABEL ("L52") / 

L52:

# DROP / 

# JMP ("L8") / 

	jmp	L8
# LABEL ("L51") / 

L51:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# CALL (".elem", 2, false) / 

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
# CALL (".elem", 2, false) / 

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
# CALL (".elem", 2, false) / 

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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# CALL (".elem", 2, false) / 

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
# CALL (".elem", 2, false) / 

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
# CALL (".elem", 2, false) / 

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

# STRING ("%s at %d:%d\\n") / 

	movl	$string_1,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# CALL ("Lhd", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Lhd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Local (1)) / 

	movl	-8(%ebp),	%esi
# LD (Local (0)) / 

	movl	-4(%ebp),	%edi
# CALL ("Lfailure", 4, false) / 

	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lfailure
	addl	$16,	%esp
	movl	%eax,	%ebx
# JMP ("L0") / 

	jmp	L0
# LABEL ("L8") / 

L8:

# FAIL ((62, 5), true) / 

	pushl	$11
	pushl	$125
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
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
	.set	Lmain_SIZE,	24

	.set	LSmain_SIZE,	6

# LABEL ("Llambda_1_7") / 

Llambda_1_7:

# BEGIN ("Llambda_1_7", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_1_7_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_1_7_SIZE,	%ecx
	rep movsl	
# STRING ("%d\\n") / 

	movl	$string_2,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_1_7_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_1_7_SIZE,	0

	.set	LSLlambda_1_7_SIZE,	0

# LABEL ("Llambda_0_7") / 

Llambda_0_7:

# BEGIN ("Llambda_0_7", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_0_7_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_0_7_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_2_17", [Arg (0)]) / 

	pushl	8(%ebp)
	pushl	$Llambda_2_17
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_0_7_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_0_7_SIZE,	0

	.set	LSLlambda_0_7_SIZE,	0

# LABEL ("Llambda_2_17") / 

Llambda_2_17:

# BEGIN ("Llambda_2_17", 1, 1, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_2_17_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_2_17_SIZE,	%ecx
	rep movsl	
# CALL ("LreadLine", 0, false) / 

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
# CJMP ("z", "L66") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L66
# DROP / 

# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# JMP ("L62") / 

	jmp	L62
# LABEL ("L66") / 

L66:

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
# CALL ("LstringInt", 1, false) / 

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
# CALLC (1, true) / 

	movl	%ecx,	12(%ebp)
	movl	%ebx,	%edx
	movl	(%edx),	%eax
	movl	%ebp,	%esp
	popl	%ebp
	popl	%ebx
	jmp	*%eax
# JMP ("L62") / 

	jmp	L62
# LABEL ("L62") / 

L62:

# END / 

	movl	%ebx,	%eax
LLlambda_2_17_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_2_17_SIZE,	4

	.set	LSLlambda_2_17_SIZE,	1

# LABEL ("LparseArgs") / 

LparseArgs:

# BEGIN ("LparseArgs", 1, 2, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLparseArgs_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLparseArgs_SIZE,	%ecx
	rep movsl	
# LDA (Local (1)) / 

	leal	-8(%ebp),	%ebx
# SEXP ("Comp", 0) / 

	movl	$7664464,	%ecx
	pushl	%ebx
	pushl	%ecx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lref", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Lref
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Local (0)) / 

	leal	-4(%ebp),	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# CALL ("Lref", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Lref
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# CLOSURE ("Llambda_3_25", [Local (0); Local (1)]) / 

	pushl	-8(%ebp)
	pushl	-4(%ebp)
	pushl	$Llambda_3_25
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# CALL ("Lfix", 1, false) / 

	pushl	%ebx
	call	Lfix
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALLC (1, false) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# DROP / 

# CLOSURE ("Llambda_4_25", [Local (1)]) / 

	pushl	-8(%ebp)
	pushl	$Llambda_4_25
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ebx
# CLOSURE ("Llambda_5_25", [Local (0)]) / 

	pushl	%ebx
	pushl	-4(%ebp)
	pushl	$Llambda_5_25
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLparseArgs_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLparseArgs_SIZE,	8

	.set	LSLparseArgs_SIZE,	2

# LABEL ("Llambda_5_25") / 

Llambda_5_25:

# BEGIN ("Llambda_5_25", 0, 1, [Local (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_5_25_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_5_25_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CALL ("Lderef", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Lderef
	addl	$4,	%esp
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
# CJMP ("z", "L95") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L95
# DROP / 

# STRING ("input file name not set\\n") / 

	movl	$string_3,	%ebx
	pushl	%edx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# CALL ("Lfailure", 1, true) / 

	pushl	%edx
	pushl	%ebx
	call	Lfailure
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L91") / 

	jmp	L91
# LABEL ("L95") / 

L95:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# JMP ("L91") / 

	jmp	L91
# LABEL ("L91") / 

L91:

# END / 

	movl	%ebx,	%eax
LLlambda_5_25_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_5_25_SIZE,	4

	.set	LSLlambda_5_25_SIZE,	1

# LABEL ("Llambda_4_25") / 

Llambda_4_25:

# BEGIN ("Llambda_4_25", 0, 0, [Local (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_4_25_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_4_25_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CALL ("Lderef", 1, true) / 

	pushl	%edx
	pushl	%ebx
	call	Lderef
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_4_25_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_4_25_SIZE,	0

	.set	LSLlambda_4_25_SIZE,	0

# LABEL ("Llambda_3_25") / 

Llambda_3_25:

# BEGIN ("Llambda_3_25", 1, 0, [Local (0); Local (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_3_25_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_3_25_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_6_35", [Arg (0); Access (0); Access (1)]) / 

	pushl	8(%edx)
	pushl	4(%edx)
	pushl	12(%ebp)
	pushl	$Llambda_6_35
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# END / 

	movl	%ebx,	%eax
LLlambda_3_25_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_3_25_SIZE,	0

	.set	LSLlambda_3_25_SIZE,	0

# LABEL ("Llambda_6_35") / 

Llambda_6_35:

# BEGIN ("Llambda_6_35", 1, 3, [Arg (0); Access (0); Access (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_6_35_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_6_35_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# BINOP ("==") / 

	xorl	%eax,	%eax
	cmpl	%esi,	%ecx
	sete	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ecx
# CJMP ("z", "L103") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L103
# DROP / 

# CONST (0) / 

	movl	$1,	%ebx
# JMP ("L100") / 

	jmp	L100
# LABEL ("L103") / 

L103:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-16(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-16(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L105") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L105
# LABEL ("L106") / 

L106:

# DROP / 

# JMP ("L101") / 

	jmp	L101
# LABEL ("L105") / 

L105:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# CALL (".elem", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# CALL (".elem", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# CALL (".elem", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# CALL (".elem", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# STRING ("-i") / 

	movl	$string_4,	%esi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CJMP ("z", "L110") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L110
# DROP / 

# CLOSURE ("LsetMode_25", [Access (2)]) / 

	pushl	12(%edx)
	pushl	$LsetMode_25
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# SEXP ("Int", 0) / 

	movl	$144276,	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ebx
# DROP / 

# JMP ("L107") / 

	jmp	L107
# LABEL ("L110") / 

L110:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("-s") / 

	movl	$string_5,	%esi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# PATT (StrCmp) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Bstring_patt
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CJMP ("z", "L114") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L114
# DROP / 

# CLOSURE ("LsetMode_25", [Access (2)]) / 

	pushl	12(%edx)
	pushl	$LsetMode_25
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# SEXP ("SM", 0) / 

	movl	$2919,	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ebx
# DROP / 

# JMP ("L107") / 

	jmp	L107
# LABEL ("L114") / 

L114:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# ST (Local (2)) / 

	movl	%ecx,	-12(%ebp)
# DROP / 

# DROP / 

# CLOSURE ("LsetInFile_25", [Access (1)]) / 

	pushl	8(%edx)
	pushl	$LsetInFile_25
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ebx
# DROP / 

# JMP ("L107") / 

	jmp	L107
# LABEL ("L107") / 

L107:

# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALLC (1, true) / 

	movl	%ecx,	12(%ebp)
	movl	%ebx,	%edx
	movl	(%edx),	%eax
	movl	%ebp,	%esp
	popl	%ebp
	popl	%ebx
	jmp	*%eax
# JMP ("L100") / 

	jmp	L100
# LABEL ("L101") / 

L101:

# FAIL ((39, 17), true) / 

	pushl	$35
	pushl	$79
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L100") / 

	jmp	L100
# LABEL ("L100") / 

L100:

# END / 

	movl	%ebx,	%eax
LLlambda_6_35_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_6_35_SIZE,	16

	.set	LSLlambda_6_35_SIZE,	4

# LABEL ("LsetInFile_25") / 

LsetInFile_25:

# BEGIN ("LsetInFile_25", 1, 0, [Local (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLsetInFile_25_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLsetInFile_25_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CALL ("Lderef", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Lderef
	addl	$4,	%esp
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
# CJMP ("z", "L126") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L126
# DROP / 

# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Arg (0)) / 

	movl	12(%ebp),	%ecx
# CALL ("Li__Infix_585861", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_585861
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L122") / 

	jmp	L122
# LABEL ("L126") / 

L126:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# STRING ("omitting \"%s\", input file name already set to \"%s\"\\n") / 

	movl	$string_6,	%ebx
	pushl	%edx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	12(%ebp),	%ecx
# LD (Access (0)) / 

	movl	4(%edx),	%esi
# CALL ("Lderef", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lderef
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALL ("Lfailure", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lfailure
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L122") / 

	jmp	L122
# LABEL ("L122") / 

L122:

# END / 

	movl	%ebx,	%eax
LLsetInFile_25_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLsetInFile_25_SIZE,	0

	.set	LSLsetInFile_25_SIZE,	0

# LABEL ("LsetMode_25") / 

LsetMode_25:

# BEGIN ("LsetMode_25", 1, 0, [Local (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLsetMode_25_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLsetMode_25_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CALL ("Lderef", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Lderef
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Comp", 0) / 

	movl	$15328929,	%edi
	movl	$1,	-4(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
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

# DROP / 

# DROP / 

# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Arg (0)) / 

	movl	12(%ebp),	%ecx
# CALL ("Li__Infix_585861", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_585861
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L133") / 

	jmp	L133
# LABEL ("L137") / 

L137:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# STRING ("mode already set: %s\\n") / 

	movl	$string_7,	%ebx
	pushl	%edx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# CALL ("Lderef", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Lderef
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL (".stringval", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Bstringval
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Lfailure", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Lfailure
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L133") / 

	jmp	L133
# LABEL ("L133") / 

L133:

# END / 

	movl	%ebx,	%eax
LLsetMode_25_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLsetMode_25_SIZE,	4

	.set	LSLsetMode_25_SIZE,	1

