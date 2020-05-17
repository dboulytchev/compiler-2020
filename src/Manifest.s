	.globl	LdumpAST

	.globl	LdumpSM

	.globl	LgetBaseName

	.globl	LgetInFile

	.globl	LgetMode

	.globl	initManifest

	.data

string_1:	.string	".ast"

string_0:	.string	".lama"

string_2:	.string	".sm"

_init:	.int 0

	.section custom_data,"aw",@progbits

filler:	.fill	1, 4, 1

	.text

# PUBLIC ("initManifest") / 

# PUBLIC ("LgetMode") / 

# PUBLIC ("LgetInFile") / 

# PUBLIC ("LdumpSM") / 

# PUBLIC ("LdumpAST") / 

# PUBLIC ("LgetBaseName") / 

# EXTERN ("Lfix") / 

# EXTERN ("Li__Infix_35") / 

# EXTERN ("Li__Infix_36") / 

# EXTERN ("Lid") / 

# EXTERN ("Lforce") / 

# EXTERN ("LmakeLazy") / 

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

# EXTERN ("Lforce") / 

# EXTERN ("LmakeLazy") / 

# EXTERN ("Lforce") / 

# EXTERN ("LmakeLazy") / 

# LABEL ("initManifest") / 

initManifest:

# BEGIN ("initManifest", 0, 0, []) / 

	movl	_init,	%eax
	test	%eax,	%eax
	jz	_continue
	ret
_continue:

	movl	$1,	_init
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LinitManifest_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSinitManifest_SIZE,	%ecx
	rep movsl	
	call	initLazy
	call	initLazy
	call	initLazy
	call	initFun
# CONST (0) / 

	movl	$1,	%ebx
# END / 

	movl	%ebx,	%eax
LinitManifest_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LinitManifest_SIZE,	0

	.set	LSinitManifest_SIZE,	0

# LABEL ("LgetBaseName") / 

LgetBaseName:

# BEGIN ("LgetBaseName", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLgetBaseName_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLgetBaseName_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_0_3", [Arg (0)]) / 

	pushl	8(%ebp)
	pushl	$Llambda_0_3
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ebx
# CALL ("LmakeLazy", 1, false) / 

	pushl	%ebx
	call	LmakeLazy
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Lforce", 1, true) / 

	movl	%ebx,	8(%ebp)
	movl	%ebp,	%esp
	popl	%ebp
	jmp	Lforce
# END / 

	movl	%ebx,	%eax
LLgetBaseName_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLgetBaseName_SIZE,	0

	.set	LSLgetBaseName_SIZE,	0

# LABEL ("Llambda_0_3") / 

Llambda_0_3:

# BEGIN ("Llambda_0_3", 0, 1, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_0_3_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_0_3_SIZE,	%ecx
	rep movsl	
# LDA (Local (0)) / 

	leal	-4(%ebp),	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# CALL ("LgetInFile", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	LgetInFile
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# STRING (".lama") / 

	movl	$string_0,	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL (".length", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Blength
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CONST (5) / 

	movl	$11,	%edi
# BINOP ("-") / 

	subl	%edi,	%esi
	orl	$0x0001,	%esi
# CALL ("LmatchSubString", 3, false) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LmatchSubString
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# CJMP ("z", "L12") / 

	sarl	%ebx
	cmpl	$0,	%ebx
	jz	L12
# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL (".length", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Blength
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CONST (5) / 

	movl	$11,	%edi
# BINOP ("-") / 

	subl	%edi,	%esi
	orl	$0x0001,	%esi
# CALL ("Lsubstring", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lsubstring
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L5") / 

	jmp	L5
# LABEL ("L12") / 

L12:

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# JMP ("L5") / 

	jmp	L5
# LABEL ("L5") / 

L5:

# END / 

	movl	%ebx,	%eax
LLlambda_0_3_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_0_3_SIZE,	4

	.set	LSLlambda_0_3_SIZE,	1

# LABEL ("LdumpAST") / 

LdumpAST:

# BEGIN ("LdumpAST", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLdumpAST_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLdumpAST_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (3) / 

	movl	$7,	%ecx
# CALL (".elem", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALLC (0, false) / 

	pushl	%ebx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$0,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# CJMP ("z", "L27") / 

	sarl	%ebx
	cmpl	$0,	%ebx
	jz	L27
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CALL ("LgetBaseName", 1, false) / 

	pushl	%ebx
	call	LgetBaseName
	addl	$4,	%esp
	movl	%eax,	%ebx
# STRING (".ast") / 

	movl	$string_1,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_4343", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_4343
	addl	$8,	%esp
	movl	%eax,	%ebx
# CLOSURE ("Lforce", []) / 

	pushl	%ebx
	pushl	$Lforce
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Li__Infix_36", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_36
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lfwrite", 2, true) / 

	movl	%ebx,	8(%ebp)
	movl	%ecx,	12(%ebp)
	movl	%ebp,	%esp
	popl	%ebp
	jmp	Lfwrite
# JMP ("L25") / 

	jmp	L25
# LABEL ("L27") / 

L27:

# CONST (0) / 

	movl	$1,	%ebx
# JMP ("L25") / 

	jmp	L25
# LABEL ("L25") / 

L25:

# END / 

	movl	%ebx,	%eax
LLdumpAST_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLdumpAST_SIZE,	0

	.set	LSLdumpAST_SIZE,	0

# LABEL ("LdumpSM") / 

LdumpSM:

# BEGIN ("LdumpSM", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLdumpSM_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLdumpSM_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (2) / 

	movl	$5,	%ecx
# CALL (".elem", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALLC (0, false) / 

	pushl	%ebx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$0,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# CJMP ("z", "L41") / 

	sarl	%ebx
	cmpl	$0,	%ebx
	jz	L41
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CALL ("LgetBaseName", 1, false) / 

	pushl	%ebx
	call	LgetBaseName
	addl	$4,	%esp
	movl	%eax,	%ebx
# STRING (".sm") / 

	movl	$string_2,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_4343", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_4343
	addl	$8,	%esp
	movl	%eax,	%ebx
# CLOSURE ("Lforce", []) / 

	pushl	%ebx
	pushl	$Lforce
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Li__Infix_36", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_36
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lfwrite", 2, true) / 

	movl	%ebx,	8(%ebp)
	movl	%ecx,	12(%ebp)
	movl	%ebp,	%esp
	popl	%ebp
	jmp	Lfwrite
# JMP ("L39") / 

	jmp	L39
# LABEL ("L41") / 

L41:

# CONST (0) / 

	movl	$1,	%ebx
# JMP ("L39") / 

	jmp	L39
# LABEL ("L39") / 

L39:

# END / 

	movl	%ebx,	%eax
LLdumpSM_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLdumpSM_SIZE,	0

	.set	LSLdumpSM_SIZE,	0

# LABEL ("LgetInFile") / 

LgetInFile:

# BEGIN ("LgetInFile", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLgetInFile_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLgetInFile_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (1) / 

	movl	$3,	%ecx
# CALL (".elem", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALLC (0, true) / 

	pushl	%ebx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$0,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLgetInFile_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLgetInFile_SIZE,	0

	.set	LSLgetInFile_SIZE,	0

# LABEL ("LgetMode") / 

LgetMode:

# BEGIN ("LgetMode", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLgetMode_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLgetMode_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# CALL (".elem", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALLC (0, true) / 

	pushl	%ebx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$0,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLgetMode_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLgetMode_SIZE,	0

	.set	LSLgetMode_SIZE,	0

