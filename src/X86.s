	.globl	LcompileX86

	.globl	initX86

	.data

string_15:	.string	" "

string_33:	.string	"!!"

string_29:	.string	"!="

string_17:	.string	"# "

string_62:	.string	"$%d"

string_25:	.string	"%"

string_36:	.string	"%al"

string_64:	.string	"%d(%s)"

string_4:	.string	"%eax"

string_6:	.string	"%ebp"

string_0:	.string	"%ebx"

string_1:	.string	"%ecx"

string_3:	.string	"%edi"

string_5:	.string	"%edx"

string_2:	.string	"%esi"

string_7:	.string	"%esp"

string_58:	.string	"%s:\n"

string_43:	.string	"%s:\t.int\t0\n"

string_32:	.string	"&&"

string_63:	.string	"(%s)"

string_23:	.string	"*"

string_21:	.string	"+"

string_22:	.string	"-"

string_61:	.string	"-%d(%%ebp)"

string_10:	.string	"../runtime/"

string_8:	.string	".s"

string_24:	.string	"/"

string_11:	.string	"/runtime.o"

string_26:	.string	"<"

string_27:	.string	"<="

string_28:	.string	"=="

string_30:	.string	">"

string_31:	.string	">="

string_9:	.string	"LAMA_RUNTIME"

string_19:	.string	"Lread"

string_20:	.string	"Lwrite"

string_46:	.string	"Stack     : %s\nStackSlots: %d\nGlobals   : %s\n"

string_16:	.string	"X86.lama"

string_18:	.string	"\n"

string_51:	.string	"\t%s\t%s,\t%s\n"

string_44:	.string	"\t.data\n"

string_12:	.string	"\t.global\tmain\n"

string_45:	.string	"\t.text\n"

string_57:	.string	"\tcall\t%s\n"

string_48:	.string	"\tcltd\n"

string_50:	.string	"\tidivl\t%s\n"

string_60:	.string	"\tj%s\t%s\n"

string_59:	.string	"\tjmp\t%s\n"

string_52:	.string	"\tleal\t%s,\t%s\n"

string_53:	.string	"\tmovl\t%s,\t%s\n"

string_55:	.string	"\tpopl\t%s\n"

string_54:	.string	"\tpushl\t%s\n"

string_56:	.string	"\tret\n"

string_49:	.string	"\tset%s\t%s\n"

string_35:	.string	"^"

string_65:	.string	"addl"

string_68:	.string	"andl"

string_34:	.string	"cmp"

string_71:	.string	"cmpl"

string_39:	.string	"e"

string_42:	.string	"g"

string_14:	.string	"gcc -g -m32 -o "

string_41:	.string	"ge"

string_47:	.string	"global_"

string_67:	.string	"imull"

string_37:	.string	"l"

string_38:	.string	"le"

string_13:	.string	"main:\n"

string_40:	.string	"ne"

string_69:	.string	"orl"

string_66:	.string	"subl"

string_70:	.string	"xorl"

_init:	.int 0

	.section custom_data,"aw",@progbits

filler:	.fill	21, 4, 1

global_eax:	.int	1

global_ebp:	.int	1

global_ebx:	.int	1

global_ecx:	.int	1

global_edi:	.int	1

global_edx:	.int	1

global_esi:	.int	1

global_esp:	.int	1

global_nRegs:	.int	1

global_regs:	.int	1

global_wordSize:	.int	1

	.text

# PUBLIC ("initX86") / 

# PUBLIC ("LcompileX86") / 

# EXTERN ("LgetBaseName") / 

# EXTERN ("LdumpSM") / 

# EXTERN ("LgetInFile") / 

# EXTERN ("LgetMode") / 

# EXTERN ("LdeepFlatten") / 

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

# EXTERN ("LremoveHashTab") / 

# EXTERN ("LfindHashTab") / 

# EXTERN ("LaddHashTab") / 

# EXTERN ("LemptyHashTab") / 

# EXTERN ("LlookupMemo") / 

# EXTERN ("LemptyMemo") / 

# EXTERN ("LfoldSet") / 

# EXTERN ("LmapSet") / 

# EXTERN ("LiterSet") / 

# EXTERN ("LlistSet") / 

# EXTERN ("Ldiff") / 

# EXTERN ("Lunion") / 

# EXTERN ("Lelements") / 

# EXTERN ("LremoveSet") / 

# EXTERN ("LmemSet") / 

# EXTERN ("LaddSet") / 

# EXTERN ("LemptySet") / 

# EXTERN ("LfoldMap") / 

# EXTERN ("LmapMap") / 

# EXTERN ("LiterMap") / 

# EXTERN ("LlistMap") / 

# EXTERN ("Lbindings") / 

# EXTERN ("LremoveMap") / 

# EXTERN ("LfindMap") / 

# EXTERN ("LaddMap") / 

# EXTERN ("LemptyMap") / 

# EXTERN ("LvalidateColl") / 

# EXTERN ("LcompileSM") / 

# EXTERN ("LevalSM") / 

# EXTERN ("LshowSM") / 

# EXTERN ("LshowSMInsn") / 

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

# LABEL ("initX86") / 

initX86:

# BEGIN ("initX86", 0, 0, []) / 

	movl	_init,	%eax
	test	%eax,	%eax
	jz	_continue
	ret
_continue:

	movl	$1,	_init
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LinitX86_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSinitX86_SIZE,	%ecx
	rep movsl	
	call	initSM
	call	initCollection
	call	initList
	call	initUtil
	call	initManifest
# LDA (Global ("regs")) / 

	leal	global_regs,	%ebx
# STRING ("%ebx") / 

	movl	$string_0,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STRING ("%ecx") / 

	movl	$string_1,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# STRING ("%esi") / 

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
# STRING ("%edi") / 

	movl	$string_3,	-4(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-4(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
# STRING ("%eax") / 

	movl	$string_4,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
# STRING ("%edx") / 

	movl	$string_5,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-12(%ebp)
# STRING ("%ebp") / 

	movl	$string_6,	-16(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-16(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-16(%ebp)
# STRING ("%esp") / 

	movl	$string_7,	-20(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-20(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-20(%ebp)
# CALL (".array", 8, false) / 

	pushl	%ebx
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$17
	call	Barray
	addl	$36,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("nRegs")) / 

	leal	global_nRegs,	%ebx
# LD (Global ("regs")) / 

	movl	global_regs,	%ecx
# CALL (".length", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Blength
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (5) / 

	movl	$11,	%esi
# BINOP ("-") / 

	subl	%esi,	%ecx
	orl	$0x0001,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("ebx")) / 

	leal	global_ebx,	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# SEXP ("R", 1) / 

	movl	$44,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("ecx")) / 

	leal	global_ecx,	%ebx
# CONST (1) / 

	movl	$3,	%ecx
# SEXP ("R", 1) / 

	movl	$44,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("esi")) / 

	leal	global_esi,	%ebx
# CONST (2) / 

	movl	$5,	%ecx
# SEXP ("R", 1) / 

	movl	$44,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("edi")) / 

	leal	global_edi,	%ebx
# CONST (3) / 

	movl	$7,	%ecx
# SEXP ("R", 1) / 

	movl	$44,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("eax")) / 

	leal	global_eax,	%ebx
# CONST (4) / 

	movl	$9,	%ecx
# SEXP ("R", 1) / 

	movl	$44,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("edx")) / 

	leal	global_edx,	%ebx
# CONST (5) / 

	movl	$11,	%ecx
# SEXP ("R", 1) / 

	movl	$44,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("ebp")) / 

	leal	global_ebp,	%ebx
# CONST (6) / 

	movl	$13,	%ecx
# SEXP ("R", 1) / 

	movl	$44,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("esp")) / 

	leal	global_esp,	%ebx
# CONST (7) / 

	movl	$15,	%ecx
# SEXP ("R", 1) / 

	movl	$44,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("wordSize")) / 

	leal	global_wordSize,	%ebx
# CONST (4) / 

	movl	$9,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# CONST (0) / 

	movl	$1,	%ebx
# END / 

	movl	%ebx,	%eax
LinitX86_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LinitX86_SIZE,	20

	.set	LSinitX86_SIZE,	5

# LABEL ("LcompileX86") / 

LcompileX86:

# BEGIN ("LcompileX86", 2, 5, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLcompileX86_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLcompileX86_SIZE,	%ecx
	rep movsl	
# CALL ("LinitEnv", 0, false) / 

	call	LinitEnv
	addl	$0,	%esp
	movl	%eax,	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALL ("Lcompile", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Lcompile
	addl	$8,	%esp
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
# CJMP ("nz", "L71") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L71
# LABEL ("L72") / 

L72:

# DROP / 

# JMP ("L66") / 

	jmp	L66
# LABEL ("L71") / 

L71:

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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LDA (Local (3)) / 

	leal	-16(%ebp),	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("LgetBaseName", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LgetBaseName
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STRING (".s") / 

	movl	$string_8,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Li__Infix_4343", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_4343
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Local (2)) / 

	leal	-12(%ebp),	%ebx
# STRING ("LAMA_RUNTIME") / 

	movl	$string_9,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("LgetEnv", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LgetEnv
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# DUP / 

	movl	%ecx,	%esi
# PATT (UnBoxed) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bunboxed_patt
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("z", "L89") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L89
# DROP / 

# STRING ("../runtime/") / 

	movl	$string_10,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# JMP ("L85") / 

	jmp	L85
# LABEL ("L89") / 

L89:

# DUP / 

	movl	%ecx,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# ST (Local (4)) / 

	movl	%esi,	-20(%ebp)
# DROP / 

# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ecx
# JMP ("L85") / 

	jmp	L85
# LABEL ("L85") / 

L85:

# STRING ("/runtime.o") / 

	movl	$string_11,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Li__Infix_4343", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_4343
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# CLOSURE ("LinsnString", []) / 

	pushl	%ebx
	pushl	$LinsnString
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# STRING ("\\t.global\\tmain\\n") / 

	movl	$string_12,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Meta", 1) / 

	movl	$10245377,	%edi
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
# CLOSURE ("LdataDef", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$LdataDef
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%eax
	movl	%eax,	-24(%ebp)
# CALL ("LgetGlobals", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	call	LgetGlobals
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-24(%ebp)
# CALL ("Lmap", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-24(%ebp)
	pushl	%edi
	call	Lmap
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("LdataSection", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	LdataSection
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# STRING ("main:\\n") / 

	movl	$string_13,	-24(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-24(%ebp)
# SEXP ("Meta", 1) / 

	movl	$10245377,	-28(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-24(%ebp)
# LD (Local (1)) / 

	movl	-8(%ebp),	%eax
	movl	%eax,	-28(%ebp)
# CALL ("LgetStackSize", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-28(%ebp)
	call	LgetStackSize
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-28(%ebp)
# CALL ("Lprologue", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-28(%ebp)
	call	Lprologue
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-28(%ebp)
# LD (Local (0)) / 

	movl	-4(%ebp),	%eax
	movl	%eax,	-32(%ebp)
# CALL ("Lepilogue", 0, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Lepilogue
	addl	$0,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-36(%ebp)
# CONST (0) / 

	movl	$1,	-40(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-44(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-36(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-32(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-28(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-32(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-24(%ebp)
# CALL ("LcodeSection", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	call	LcodeSection
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-24(%ebp)
# CONST (0) / 

	movl	$1,	-28(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-32(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-24(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-28(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-24(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-24(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("LdeepFlatten", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	LdeepFlatten
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Lmap", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Lmap
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lstringcat", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Lstringcat
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lfwrite", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Lfwrite
	addl	$8,	%esp
	movl	%eax,	%ebx
# DROP / 

# STRING ("gcc -g -m32 -o ") / 

	movl	$string_14,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("LgetBaseName", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LgetBaseName
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STRING (" ") / 

	movl	$string_15,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Local (2)) / 

	movl	-12(%ebp),	%edi
# STRING (" ") / 

	movl	$string_15,	-24(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-24(%ebp)
# LD (Local (3)) / 

	movl	-16(%ebp),	%eax
	movl	%eax,	-28(%ebp)
# CONST (0) / 

	movl	$1,	-32(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-28(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-32(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-24(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-28(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-24(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-24(%ebp)
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
# CALL ("Lstringcat", 1, false) / 

	pushl	%ebx
	call	Lstringcat
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Lsystem", 1, true) / 

	pushl	%ebx
	call	Lsystem
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L65") / 

	jmp	L65
# LABEL ("L66") / 

L66:

# FAIL ((458, 7), true) / 

	pushl	$15
	pushl	$917
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L65") / 

	jmp	L65
# LABEL ("L65") / 

L65:

# END / 

	movl	%ebx,	%eax
LLcompileX86_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLcompileX86_SIZE,	44

	.set	LSLcompileX86_SIZE,	11

# LABEL ("Lcompile") / 

Lcompile:

# BEGIN ("Lcompile", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLcompile_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLcompile_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALL ("Lcompile_11", 2, true) / 

	movl	%ebx,	8(%ebp)
	movl	%ecx,	12(%ebp)
	movl	%ebp,	%esp
	popl	%ebp
	jmp	Lcompile_11
# END / 

	movl	%ebx,	%eax
LLcompile_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLcompile_SIZE,	0

	.set	LSLcompile_SIZE,	0

# LABEL ("Lcompile_11") / 

Lcompile_11:

# BEGIN ("Lcompile_11", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLcompile_11_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLcompile_11_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_0_13", []) / 

	pushl	$Llambda_0_13
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CONST (0) / 

	movl	$1,	%esi
# CALL (".array", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lfoldl", 3, true) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lfoldl
	addl	$12,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLcompile_11_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLcompile_11_SIZE,	0

	.set	LSLcompile_11_SIZE,	0

# LABEL ("Llambda_0_13") / 

Llambda_0_13:

# BEGIN ("Llambda_0_13", 2, 8, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_0_13_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_0_13_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
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
# CJMP ("nz", "L149") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L149
# LABEL ("L150") / 

L150:

# DROP / 

# JMP ("L147") / 

	jmp	L147
# LABEL ("L149") / 

L149:

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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LDA (Local (2)) / 

	leal	-12(%ebp),	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# STRING ("# ") / 

	movl	$string_17,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Arg (1)) / 

	movl	12(%ebp),	%edi
# CALL ("LshowSMInsn", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	LshowSMInsn
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("Li__Infix_4343", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Li__Infix_4343
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# STRING ("\\n") / 

	movl	$string_18,	%edi
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
# CALL ("Li__Infix_4343", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Li__Infix_4343
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Meta", 1) / 

	movl	$10245377,	%edi
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
# CALL ("Lsingleton", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lsingleton
	addl	$4,	%esp
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
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("READ", 0) / 

	movl	$23326141,	%edi
	movl	$1,	-36(%ebp)
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
# CJMP ("nz", "L167") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L167
# LABEL ("L168") / 

L168:

# DROP / 

# JMP ("L166") / 

	jmp	L166
# LABEL ("L167") / 

L167:

# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("Lallocate", 1, false) / 

	pushl	%ebx
	call	Lallocate
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
# CJMP ("nz", "L172") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L172
# LABEL ("L173") / 

L173:

# DROP / 

# JMP ("L169") / 

	jmp	L169
# LABEL ("L172") / 

L172:

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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# STRING ("Lread") / 

	movl	$string_19,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Call", 1) / 

	movl	$7607052,	%edi
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
# LD (Global ("eax")) / 

	movl	global_eax,	%edi
# LD (Local (4)) / 

	movl	-20(%ebp),	%eax
	movl	%eax,	-36(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L169") / 

L169:

# FAIL ((390, 17), true) / 

	pushl	$35
	pushl	$781
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L166") / 

L166:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("WRITE", 0) / 

	movl	$1667528511,	%edi
	movl	$1,	-36(%ebp)
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
# CJMP ("nz", "L186") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L186
# LABEL ("L187") / 

L187:

# DROP / 

# JMP ("L185") / 

	jmp	L185
# LABEL ("L186") / 

L186:

# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("Lpop", 1, false) / 

	pushl	%ebx
	call	Lpop
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
# CJMP ("nz", "L191") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L191
# LABEL ("L192") / 

L192:

# DROP / 

# JMP ("L188") / 

	jmp	L188
# LABEL ("L191") / 

L191:

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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (4)) / 

	movl	-20(%ebp),	%esi
# SEXP ("Push", 1) / 

	movl	$11097288,	%edi
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
# STRING ("Lwrite") / 

	movl	$string_20,	%edi
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
# SEXP ("Call", 1) / 

	movl	$7607052,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-36(%ebp)
# SEXP ("Pop", 1) / 

	movl	$173008,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-36(%ebp)
# CONST (0) / 

	movl	$1,	-40(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-44(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-36(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L188") / 

L188:

# FAIL ((394, 17), true) / 

	pushl	$35
	pushl	$789
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L185") / 

L185:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("LD", 1) / 

	movl	$4925,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L207") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L207
# LABEL ("L208") / 

L208:

# DROP / 

# JMP ("L206") / 

	jmp	L206
# LABEL ("L207") / 

L207:

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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("LaddGlobal", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LaddGlobal
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALL ("Lallocate", 1, false) / 

	pushl	%ebx
	call	Lallocate
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
# CJMP ("nz", "L214") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L214
# LABEL ("L215") / 

L215:

# DROP / 

# JMP ("L209") / 

	jmp	L209
# LABEL ("L214") / 

L214:

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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
# DROP / 

# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (4)) / 

	movl	-20(%ebp),	%esi
# LD (Local (3)) / 

	movl	-16(%ebp),	%edi
# CALL ("Lloc", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Lloc
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Local (5)) / 

	movl	-24(%ebp),	%edi
# CALL ("Lmove", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Lmove
	addl	$8,	%esp
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L209") / 

L209:

# FAIL ((398, 17), true) / 

	pushl	$35
	pushl	$797
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L206") / 

L206:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("ST", 1) / 

	movl	$5853,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L225") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L225
# LABEL ("L226") / 

L226:

# DROP / 

# JMP ("L224") / 

	jmp	L224
# LABEL ("L225") / 

L225:

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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("LaddGlobal", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LaddGlobal
	addl	$8,	%esp
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
# DROP / 

# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (4)) / 

	movl	-20(%ebp),	%esi
# CALL ("Lpeek", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lpeek
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Local (4)) / 

	movl	-20(%ebp),	%edi
# LD (Local (3)) / 

	movl	-16(%ebp),	%eax
	movl	%eax,	-36(%ebp)
# CALL ("Lloc", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Lloc
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("Lmove", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Lmove
	addl	$8,	%esp
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L224") / 

L224:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("CONST", 1) / 

	movl	$994907869,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L241") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L241
# LABEL ("L242") / 

L242:

# DROP / 

# JMP ("L240") / 

	jmp	L240
# LABEL ("L241") / 

L241:

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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("Lallocate", 1, false) / 

	pushl	%ebx
	call	Lallocate
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
# CJMP ("nz", "L246") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L246
# LABEL ("L247") / 

L247:

# DROP / 

# JMP ("L243") / 

	jmp	L243
# LABEL ("L246") / 

L246:

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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
# DROP / 

# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (3)) / 

	movl	-16(%ebp),	%esi
# SEXP ("L", 1) / 

	movl	$38,	%edi
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
# LD (Local (5)) / 

	movl	-24(%ebp),	%edi
# SEXP ("Mov", 2) / 

	movl	$160726,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Lsingleton", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lsingleton
	addl	$4,	%esp
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L243") / 

L243:

# FAIL ((406, 17), true) / 

	pushl	$35
	pushl	$813
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L240") / 

L240:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L257") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L257
# LABEL ("L258") / 

L258:

# DROP / 

# JMP ("L256") / 

	jmp	L256
# LABEL ("L257") / 

L257:

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
# STRING ("+") / 

	movl	$string_21,	%edi
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
# CJMP ("z", "L258") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L258
# DROP / 

# DROP / 

# CLOSURE ("LsimpleBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LsimpleBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# STRING ("+") / 

	movl	$string_21,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L256") / 

L256:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L261") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L261
# LABEL ("L262") / 

L262:

# DROP / 

# JMP ("L260") / 

	jmp	L260
# LABEL ("L261") / 

L261:

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
# STRING ("-") / 

	movl	$string_22,	%edi
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
# CJMP ("z", "L262") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L262
# DROP / 

# DROP / 

# CLOSURE ("LsimpleBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LsimpleBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# STRING ("-") / 

	movl	$string_22,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L260") / 

L260:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L265") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L265
# LABEL ("L266") / 

L266:

# DROP / 

# JMP ("L264") / 

	jmp	L264
# LABEL ("L265") / 

L265:

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
# STRING ("*") / 

	movl	$string_23,	%edi
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
# CJMP ("z", "L266") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L266
# DROP / 

# DROP / 

# CLOSURE ("LsimpleBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LsimpleBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# STRING ("*") / 

	movl	$string_23,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L264") / 

L264:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L269") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L269
# LABEL ("L270") / 

L270:

# DROP / 

# JMP ("L268") / 

	jmp	L268
# LABEL ("L269") / 

L269:

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
# STRING ("/") / 

	movl	$string_24,	%edi
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
# CJMP ("z", "L270") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L270
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("Lpop2", 1, false) / 

	pushl	%ebx
	call	Lpop2
	addl	$4,	%esp
	movl	%eax,	%ebx
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
# CJMP ("nz", "L274") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L274
# LABEL ("L275") / 

L275:

# DROP / 

# JMP ("L271") / 

	jmp	L271
# LABEL ("L274") / 

L274:

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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# CALL ("Lallocate", 1, false) / 

	pushl	%ebx
	call	Lallocate
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
# CJMP ("nz", "L279") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L279
# LABEL ("L280") / 

L280:

# DROP / 

# JMP ("L276") / 

	jmp	L276
# LABEL ("L279") / 

L279:

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
# ST (Local (7)) / 

	movl	%ecx,	-32(%ebp)
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
# ST (Local (6)) / 

	movl	%ecx,	-28(%ebp)
# DROP / 

# DROP / 

# LD (Local (6)) / 

	movl	-28(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (4)) / 

	movl	-20(%ebp),	%esi
# LD (Global ("eax")) / 

	movl	global_eax,	%edi
# SEXP ("Mov", 2) / 

	movl	$160726,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Cltd", 0) / 

	movl	$7652612,	%edi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# LD (Local (5)) / 

	movl	-24(%ebp),	%eax
	movl	%eax,	-36(%ebp)
# SEXP ("IDiv", 1) / 

	movl	$9298518,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-36(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-40(%ebp)
# LD (Local (7)) / 

	movl	-32(%ebp),	%eax
	movl	%eax,	-44(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-48(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-40(%ebp)
# CONST (0) / 

	movl	$1,	-44(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-48(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-40(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-44(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-36(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L276") / 

L276:

# FAIL ((414, 34), true) / 

	pushl	$69
	pushl	$829
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L271") / 

L271:

# FAIL ((413, 17), true) / 

	pushl	$35
	pushl	$827
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L268") / 

L268:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L300") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L300
# LABEL ("L301") / 

L301:

# DROP / 

# JMP ("L299") / 

	jmp	L299
# LABEL ("L300") / 

L300:

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
# STRING ("%") / 

	movl	$string_25,	%edi
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
# CJMP ("z", "L301") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L301
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("Lpop2", 1, false) / 

	pushl	%ebx
	call	Lpop2
	addl	$4,	%esp
	movl	%eax,	%ebx
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
# CJMP ("nz", "L305") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L305
# LABEL ("L306") / 

L306:

# DROP / 

# JMP ("L302") / 

	jmp	L302
# LABEL ("L305") / 

L305:

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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# CALL ("Lallocate", 1, false) / 

	pushl	%ebx
	call	Lallocate
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
# CJMP ("nz", "L310") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L310
# LABEL ("L311") / 

L311:

# DROP / 

# JMP ("L307") / 

	jmp	L307
# LABEL ("L310") / 

L310:

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
# ST (Local (7)) / 

	movl	%ecx,	-32(%ebp)
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
# ST (Local (6)) / 

	movl	%ecx,	-28(%ebp)
# DROP / 

# DROP / 

# LD (Local (6)) / 

	movl	-28(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (4)) / 

	movl	-20(%ebp),	%esi
# LD (Global ("eax")) / 

	movl	global_eax,	%edi
# SEXP ("Mov", 2) / 

	movl	$160726,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Cltd", 0) / 

	movl	$7652612,	%edi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# LD (Local (5)) / 

	movl	-24(%ebp),	%eax
	movl	%eax,	-36(%ebp)
# SEXP ("IDiv", 1) / 

	movl	$9298518,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-36(%ebp)
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-40(%ebp)
# LD (Local (7)) / 

	movl	-32(%ebp),	%eax
	movl	%eax,	-44(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-48(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-40(%ebp)
# CONST (0) / 

	movl	$1,	-44(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-48(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-40(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-44(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-36(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L307") / 

L307:

# FAIL ((420, 34), true) / 

	pushl	$69
	pushl	$841
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L302") / 

L302:

# FAIL ((419, 17), true) / 

	pushl	$35
	pushl	$839
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L299") / 

L299:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L331") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L331
# LABEL ("L332") / 

L332:

# DROP / 

# JMP ("L330") / 

	jmp	L330
# LABEL ("L331") / 

L331:

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
# STRING ("<") / 

	movl	$string_26,	%edi
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
# CJMP ("z", "L332") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L332
# DROP / 

# DROP / 

# CLOSURE ("LcompareBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LcompareBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# STRING ("<") / 

	movl	$string_26,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L330") / 

L330:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L335") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L335
# LABEL ("L336") / 

L336:

# DROP / 

# JMP ("L334") / 

	jmp	L334
# LABEL ("L335") / 

L335:

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
# STRING ("<=") / 

	movl	$string_27,	%edi
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
# CJMP ("z", "L336") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L336
# DROP / 

# DROP / 

# CLOSURE ("LcompareBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LcompareBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# STRING ("<=") / 

	movl	$string_27,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L334") / 

L334:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L339") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L339
# LABEL ("L340") / 

L340:

# DROP / 

# JMP ("L338") / 

	jmp	L338
# LABEL ("L339") / 

L339:

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
# STRING ("==") / 

	movl	$string_28,	%edi
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
# CJMP ("z", "L340") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L340
# DROP / 

# DROP / 

# CLOSURE ("LcompareBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LcompareBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# STRING ("==") / 

	movl	$string_28,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L338") / 

L338:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L343") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L343
# LABEL ("L344") / 

L344:

# DROP / 

# JMP ("L342") / 

	jmp	L342
# LABEL ("L343") / 

L343:

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
# STRING ("!=") / 

	movl	$string_29,	%edi
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
# CJMP ("z", "L344") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L344
# DROP / 

# DROP / 

# CLOSURE ("LcompareBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LcompareBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# STRING ("!=") / 

	movl	$string_29,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L342") / 

L342:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L347") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L347
# LABEL ("L348") / 

L348:

# DROP / 

# JMP ("L346") / 

	jmp	L346
# LABEL ("L347") / 

L347:

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
# STRING (">") / 

	movl	$string_30,	%edi
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
# CJMP ("z", "L348") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L348
# DROP / 

# DROP / 

# CLOSURE ("LcompareBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LcompareBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# STRING (">") / 

	movl	$string_30,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L346") / 

L346:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L351") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L351
# LABEL ("L352") / 

L352:

# DROP / 

# JMP ("L350") / 

	jmp	L350
# LABEL ("L351") / 

L351:

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
# STRING (">=") / 

	movl	$string_31,	%edi
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
# CJMP ("z", "L352") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L352
# DROP / 

# DROP / 

# CLOSURE ("LcompareBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LcompareBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# STRING (">=") / 

	movl	$string_31,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L350") / 

L350:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L355") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L355
# LABEL ("L356") / 

L356:

# DROP / 

# JMP ("L354") / 

	jmp	L354
# LABEL ("L355") / 

L355:

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
# STRING ("&&") / 

	movl	$string_32,	%edi
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
# CJMP ("z", "L356") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L356
# DROP / 

# DROP / 

# CLOSURE ("LlogicBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LlogicBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# CONST (1) / 

	movl	$3,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L354") / 

L354:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L359") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L359
# LABEL ("L360") / 

L360:

# DROP / 

# JMP ("L358") / 

	jmp	L358
# LABEL ("L359") / 

L359:

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
# STRING ("!!") / 

	movl	$string_33,	%edi
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
# CJMP ("z", "L360") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L360
# DROP / 

# DROP / 

# CLOSURE ("LlogicBinop_16", [Local (1); Local (2)]) / 

	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$LlogicBinop_16
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L358") / 

L358:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("LABEL", 1) / 

	movl	$1289457613,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L363") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L363
# LABEL ("L364") / 

L364:

# DROP / 

# JMP ("L362") / 

	jmp	L362
# LABEL ("L363") / 

L363:

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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("LisBarrier", 1, false) / 

	pushl	%ebx
	call	LisBarrier
	addl	$4,	%esp
	movl	%eax,	%ebx
# CJMP ("z", "L366") / 

	sarl	%ebx
	cmpl	$0,	%ebx
	jz	L366
# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("LretrieveStack", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LretrieveStack
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (3)) / 

	movl	-16(%ebp),	%esi
# SEXP ("Label", 1) / 

	movl	$637804876,	%edi
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
# CALL ("Lsingleton", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lsingleton
	addl	$4,	%esp
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L366") / 

L366:

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (3)) / 

	movl	-16(%ebp),	%esi
# SEXP ("Label", 1) / 

	movl	$637804876,	%edi
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
# CALL ("Lsingleton", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lsingleton
	addl	$4,	%esp
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L362") / 

L362:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("JMP", 1) / 

	movl	$299989,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L383") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L383
# LABEL ("L384") / 

L384:

# DROP / 

# JMP ("L382") / 

	jmp	L382
# LABEL ("L383") / 

L383:

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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("LsetStack", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LsetStack
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALL ("LsetBarrier", 1, false) / 

	pushl	%ebx
	call	LsetBarrier
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (3)) / 

	movl	-16(%ebp),	%esi
# SEXP ("Jmp", 1) / 

	movl	$148304,	%edi
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
# CALL ("Lsingleton", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lsingleton
	addl	$4,	%esp
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L382") / 

L382:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("CJMP", 2) / 

	movl	$15504341,	%edi
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
# CJMP ("nz", "L395") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L395
# LABEL ("L396") / 

L396:

# DROP / 

# JMP ("L394") / 

	jmp	L394
# LABEL ("L395") / 

L395:

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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("Lpop", 1, false) / 

	pushl	%ebx
	call	Lpop
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
# CJMP ("nz", "L400") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L400
# LABEL ("L401") / 

L401:

# DROP / 

# JMP ("L397") / 

	jmp	L397
# LABEL ("L400") / 

L400:

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
# ST (Local (6)) / 

	movl	%ecx,	-28(%ebp)
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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
# DROP / 

# DROP / 

# LD (Local (5)) / 

	movl	-24(%ebp),	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("LsetStack", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LsetStack
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# STRING ("cmp") / 

	movl	$string_34,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CONST (0) / 

	movl	$1,	%edi
# SEXP ("L", 1) / 

	movl	$38,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# LD (Local (6)) / 

	movl	-28(%ebp),	%eax
	movl	%eax,	-36(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Local (4)) / 

	movl	-20(%ebp),	%edi
# LD (Local (3)) / 

	movl	-16(%ebp),	%eax
	movl	%eax,	-36(%ebp)
# SEXP ("CJmp", 2) / 

	movl	$7750480,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L397") / 

L397:

# FAIL ((436, 17), true) / 

	pushl	$35
	pushl	$873
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L394") / 

L394:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("LDA", 1) / 

	movl	$315191,	%edi
	movl	$3,	-36(%ebp)
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
# CJMP ("nz", "L419") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L419
# LABEL ("L420") / 

L420:

# DROP / 

# JMP ("L418") / 

	jmp	L418
# LABEL ("L419") / 

L419:

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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALL ("LaddGlobal", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LaddGlobal
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALL ("Lallocate", 1, false) / 

	pushl	%ebx
	call	Lallocate
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
# CJMP ("nz", "L426") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L426
# LABEL ("L427") / 

L427:

# DROP / 

# JMP ("L421") / 

	jmp	L421
# LABEL ("L426") / 

L426:

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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
# DROP / 

# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (4)) / 

	movl	-20(%ebp),	%esi
# LD (Local (3)) / 

	movl	-16(%ebp),	%edi
# CALL ("Lloc", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Lloc
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Global ("eax")) / 

	movl	global_eax,	%edi
# SEXP ("Lea", 2) / 

	movl	$155969,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Global ("eax")) / 

	movl	global_eax,	%edi
# LD (Local (5)) / 

	movl	-24(%ebp),	%eax
	movl	%eax,	-36(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L421") / 

L421:

# FAIL ((440, 17), true) / 

	pushl	$35
	pushl	$881
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L418") / 

L418:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("STI", 0) / 

	movl	$374599,	%edi
	movl	$1,	-36(%ebp)
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
# CJMP ("nz", "L443") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L443
# LABEL ("L444") / 

L444:

# DROP / 

# JMP ("L442") / 

	jmp	L442
# LABEL ("L443") / 

L443:

# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("Lpop2", 1, false) / 

	pushl	%ebx
	call	Lpop2
	addl	$4,	%esp
	movl	%eax,	%ebx
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
# CJMP ("nz", "L448") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L448
# LABEL ("L449") / 

L449:

# DROP / 

# JMP ("L445") / 

	jmp	L445
# LABEL ("L448") / 

L448:

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
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LD (Local (4)) / 

	movl	-20(%ebp),	%ecx
# CALL ("Lpush", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Lpush
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# LD (Local (5)) / 

	movl	-24(%ebp),	%esi
# LD (Global ("eax")) / 

	movl	global_eax,	%edi
# SEXP ("Mov", 2) / 

	movl	$160726,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Local (4)) / 

	movl	-20(%ebp),	%edi
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-36(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-36(%ebp)
# CONST (0) / 

	movl	$1,	-40(%ebp)
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-44(%ebp)
# SEXP ("I", 2) / 

	movl	$35,	-48(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-40(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-44(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-36(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-40(%ebp)
# LD (Local (4)) / 

	movl	-20(%ebp),	%eax
	movl	%eax,	-44(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-48(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-40(%ebp)
# CONST (0) / 

	movl	$1,	-44(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-48(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-40(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-44(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-36(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
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
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L445") / 

L445:

# FAIL ((444, 17), true) / 

	pushl	$35
	pushl	$889
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L442") / 

L442:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("DROP", 0) / 

	movl	$16094421,	%edi
	movl	$1,	-36(%ebp)
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
# CJMP ("nz", "L474") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L474
# LABEL ("L475") / 

L475:

# DROP / 

# JMP ("L164") / 

	jmp	L164
# LABEL ("L474") / 

L474:

# DROP / 

# DROP / 

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("Lpop", 1, false) / 

	pushl	%ebx
	call	Lpop
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
# CJMP ("nz", "L479") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L479
# LABEL ("L480") / 

L480:

# DROP / 

# JMP ("L476") / 

	jmp	L476
# LABEL ("L479") / 

L479:

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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# CALL (".array", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L146") / 

	jmp	L146
# LABEL ("L476") / 

L476:

# FAIL ((447, 23), true) / 

	pushl	$47
	pushl	$895
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L164") / 

L164:

# FAIL ((388, 13), true) / 

	pushl	$27
	pushl	$777
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# JMP ("L146") / 

	jmp	L146
# LABEL ("L147") / 

L147:

# FAIL ((353, 12), true) / 

	pushl	$25
	pushl	$707
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L146") / 

	jmp	L146
# LABEL ("L146") / 

L146:

# END / 

	movl	%ebx,	%eax
LLlambda_0_13_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_0_13_SIZE,	48

	.set	LSLlambda_0_13_SIZE,	12

# LABEL ("LlogicBinop_16") / 

LlogicBinop_16:

# BEGIN ("LlogicBinop_16", 1, 5, [Local (1); Local (2)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlogicBinop_16_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlogicBinop_16_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CALL ("Lpop2", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Lpop2
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# ARRAY (3) / 

	movl	$7,	%edi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Barray_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L487") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L487
# LABEL ("L488") / 

L488:

# DROP / 

# JMP ("L484") / 

	jmp	L484
# LABEL ("L487") / 

L487:

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

# DUP / 

	movl	%ecx,	%esi
# CONST (2) / 

	movl	$5,	%edi
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
# ST (Local (2)) / 

	movl	%ecx,	-12(%ebp)
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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (2) / 

	movl	$5,	%esi
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

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CALL ("Lallocate", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Lallocate
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# ARRAY (2) / 

	movl	$5,	%edi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Barray_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L492") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L492
# LABEL ("L493") / 

L493:

# DROP / 

# JMP ("L489") / 

	jmp	L489
# LABEL ("L492") / 

L492:

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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Local (1)) / 

	movl	-8(%ebp),	%esi
# LD (Global ("edx")) / 

	movl	global_edx,	%edi
# SEXP ("Mov", 2) / 

	movl	$160726,	-24(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-24(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# STRING ("^") / 

	movl	$string_35,	%edi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Bstring
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-24(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-28(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-32(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	%edi
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# STRING ("cmp") / 

	movl	$string_34,	-24(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-24(%ebp)
# CONST (0) / 

	movl	$1,	-28(%ebp)
# SEXP ("L", 1) / 

	movl	$38,	-32(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-28(%ebp)
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-32(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-36(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-24(%ebp)
# STRING ("!=") / 

	movl	$string_29,	-28(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-28(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-28(%ebp)
# CALL ("Lsuffix", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-28(%ebp)
	call	Lsuffix
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-28(%ebp)
# STRING ("%al") / 

	movl	$string_36,	-32(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-32(%ebp)
# SEXP ("Set", 2) / 

	movl	$184660,	-36(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-28(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-32(%ebp)
# SEXP ("Push", 1) / 

	movl	$11097288,	-36(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-32(%ebp)
# LD (Local (2)) / 

	movl	-12(%ebp),	%eax
	movl	%eax,	-36(%ebp)
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-40(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-44(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-36(%ebp)
# STRING ("^") / 

	movl	$string_35,	-40(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-40(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-40(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-44(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-48(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-52(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-52(%ebp)
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-40(%ebp)
# STRING ("cmp") / 

	movl	$string_34,	-44(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-44(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-44(%ebp)
# CONST (0) / 

	movl	$1,	-48(%ebp)
# SEXP ("L", 1) / 

	movl	$38,	-52(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-52(%ebp)
	pushl	-48(%ebp)
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-48(%ebp)
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-52(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-56(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-56(%ebp)
	pushl	-52(%ebp)
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-44(%ebp)
# STRING ("!=") / 

	movl	$string_29,	-48(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-48(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-48(%ebp)
# CALL ("Lsuffix", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-48(%ebp)
	call	Lsuffix
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-48(%ebp)
# STRING ("%al") / 

	movl	$string_36,	-52(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-52(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-52(%ebp)
# SEXP ("Set", 2) / 

	movl	$184660,	-56(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-56(%ebp)
	pushl	-52(%ebp)
	pushl	-48(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-48(%ebp)
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-52(%ebp)
# SEXP ("Pop", 1) / 

	movl	$173008,	-56(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-56(%ebp)
	pushl	-52(%ebp)
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-52(%ebp)
# STRING ("+") / 

	movl	$string_21,	-56(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-56(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-56(%ebp)
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-60(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-64(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-68(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-68(%ebp)
	pushl	-64(%ebp)
	pushl	-60(%ebp)
	pushl	-56(%ebp)
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-56(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-60(%ebp)
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-64(%ebp)
# CALL ("Lmove", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-64(%ebp)
	pushl	-60(%ebp)
	call	Lmove
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-60(%ebp)
# STRING ("^") / 

	movl	$string_35,	-64(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-64(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-64(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-68(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-72(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-76(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-76(%ebp)
	pushl	-72(%ebp)
	pushl	-68(%ebp)
	pushl	-64(%ebp)
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-64(%ebp)
# STRING ("cmp") / 

	movl	$string_34,	-68(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-68(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-68(%ebp)
# LD (Arg (0)) / 

	movl	12(%ebp),	%eax
	movl	%eax,	-72(%ebp)
# SEXP ("L", 1) / 

	movl	$38,	-76(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-76(%ebp)
	pushl	-72(%ebp)
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-72(%ebp)
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-76(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-80(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-80(%ebp)
	pushl	-76(%ebp)
	pushl	-72(%ebp)
	pushl	-68(%ebp)
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-68(%ebp)
# STRING (">") / 

	movl	$string_30,	-72(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-72(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-72(%ebp)
# CALL ("Lsuffix", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-72(%ebp)
	call	Lsuffix
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-72(%ebp)
# STRING ("%al") / 

	movl	$string_36,	-76(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-76(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-76(%ebp)
# SEXP ("Set", 2) / 

	movl	$184660,	-80(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-80(%ebp)
	pushl	-76(%ebp)
	pushl	-72(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-72(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-76(%ebp)
# LD (Local (4)) / 

	movl	-20(%ebp),	%eax
	movl	%eax,	-80(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-84(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-84(%ebp)
	pushl	-80(%ebp)
	pushl	-76(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-76(%ebp)
# CONST (0) / 

	movl	$1,	-80(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-84(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-84(%ebp)
	pushl	-80(%ebp)
	pushl	-76(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-76(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-80(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-80(%ebp)
	pushl	-76(%ebp)
	pushl	-72(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-72(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-76(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-76(%ebp)
	pushl	-72(%ebp)
	pushl	-68(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-68(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-72(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-72(%ebp)
	pushl	-68(%ebp)
	pushl	-64(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-64(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-68(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-68(%ebp)
	pushl	-64(%ebp)
	pushl	-60(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-60(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-64(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-64(%ebp)
	pushl	-60(%ebp)
	pushl	-56(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-56(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-60(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-60(%ebp)
	pushl	-56(%ebp)
	pushl	-52(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-52(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-56(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-56(%ebp)
	pushl	-52(%ebp)
	pushl	-48(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-48(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-52(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-52(%ebp)
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-44(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-48(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-48(%ebp)
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-40(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-44(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-44(%ebp)
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-36(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-40(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-32(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-28(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-32(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-24(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-28(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-24(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-24(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
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
# CALL (".array", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L483") / 

	jmp	L483
# LABEL ("L489") / 

L489:

# FAIL ((378, 21), true) / 

	pushl	$43
	pushl	$757
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L483") / 

	jmp	L483
# JMP ("L483") / 

	jmp	L483
# LABEL ("L484") / 

L484:

# FAIL ((376, 17), true) / 

	pushl	$35
	pushl	$753
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L483") / 

	jmp	L483
# LABEL ("L483") / 

L483:

# END / 

	movl	%ebx,	%eax
LLlogicBinop_16_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlogicBinop_16_SIZE,	84

	.set	LSLlogicBinop_16_SIZE,	21

# LABEL ("LcompareBinop_16") / 

LcompareBinop_16:

# BEGIN ("LcompareBinop_16", 1, 5, [Local (1); Local (2)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLcompareBinop_16_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLcompareBinop_16_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CALL ("Lpop2", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Lpop2
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# ARRAY (3) / 

	movl	$7,	%edi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Barray_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L577") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L577
# LABEL ("L578") / 

L578:

# DROP / 

# JMP ("L574") / 

	jmp	L574
# LABEL ("L577") / 

L577:

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

# DUP / 

	movl	%ecx,	%esi
# CONST (2) / 

	movl	$5,	%edi
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
# ST (Local (2)) / 

	movl	%ecx,	-12(%ebp)
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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (2) / 

	movl	$5,	%esi
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

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CALL ("Lallocate", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Lallocate
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# ARRAY (2) / 

	movl	$5,	%edi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Barray_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L582") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L582
# LABEL ("L583") / 

L583:

# DROP / 

# JMP ("L579") / 

	jmp	L579
# LABEL ("L582") / 

L582:

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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Local (1)) / 

	movl	-8(%ebp),	%esi
# LD (Global ("edx")) / 

	movl	global_edx,	%edi
# SEXP ("Mov", 2) / 

	movl	$160726,	-24(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-24(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# STRING ("^") / 

	movl	$string_35,	%edi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Bstring
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-24(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-28(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-32(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	%edi
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# STRING ("cmp") / 

	movl	$string_34,	-24(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-24(%ebp)
# LD (Local (2)) / 

	movl	-12(%ebp),	%eax
	movl	%eax,	-28(%ebp)
# LD (Global ("edx")) / 

	movl	global_edx,	%eax
	movl	%eax,	-32(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-36(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-24(%ebp)
# LD (Arg (0)) / 

	movl	12(%ebp),	%eax
	movl	%eax,	-28(%ebp)
# CALL ("Lsuffix", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-28(%ebp)
	call	Lsuffix
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-28(%ebp)
# STRING ("%al") / 

	movl	$string_36,	-32(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	call	Bstring
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-32(%ebp)
# SEXP ("Set", 2) / 

	movl	$184660,	-36(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-28(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-32(%ebp)
# LD (Local (4)) / 

	movl	-20(%ebp),	%eax
	movl	%eax,	-36(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-40(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-32(%ebp)
# CONST (0) / 

	movl	$1,	-36(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-40(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-32(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-36(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-28(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-32(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-24(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-28(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-24(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-24(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
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
# CALL (".array", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L573") / 

	jmp	L573
# LABEL ("L579") / 

L579:

# FAIL ((368, 19), true) / 

	pushl	$39
	pushl	$737
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L573") / 

	jmp	L573
# JMP ("L573") / 

	jmp	L573
# LABEL ("L574") / 

L574:

# FAIL ((366, 15), true) / 

	pushl	$31
	pushl	$733
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L573") / 

	jmp	L573
# LABEL ("L573") / 

L573:

# END / 

	movl	%ebx,	%eax
LLcompareBinop_16_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLcompareBinop_16_SIZE,	40

	.set	LSLcompareBinop_16_SIZE,	10

# LABEL ("LsimpleBinop_16") / 

LsimpleBinop_16:

# BEGIN ("LsimpleBinop_16", 1, 5, [Local (1); Local (2)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLsimpleBinop_16_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLsimpleBinop_16_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CALL ("Lpop2", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Lpop2
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# ARRAY (3) / 

	movl	$7,	%edi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Barray_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L615") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L615
# LABEL ("L616") / 

L616:

# DROP / 

# JMP ("L612") / 

	jmp	L612
# LABEL ("L615") / 

L615:

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

# DUP / 

	movl	%ecx,	%esi
# CONST (2) / 

	movl	$5,	%edi
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
# ST (Local (2)) / 

	movl	%ecx,	-12(%ebp)
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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (2) / 

	movl	$5,	%esi
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

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CALL ("Lallocate", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Lallocate
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# ARRAY (2) / 

	movl	$5,	%edi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Barray_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L620") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L620
# LABEL ("L621") / 

L621:

# DROP / 

# JMP ("L617") / 

	jmp	L617
# LABEL ("L620") / 

L620:

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
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
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
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Local (1)) / 

	movl	-8(%ebp),	%esi
# LD (Global ("eax")) / 

	movl	global_eax,	%edi
# SEXP ("Mov", 2) / 

	movl	$160726,	-24(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-24(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# LD (Arg (0)) / 

	movl	12(%ebp),	%edi
# LD (Local (2)) / 

	movl	-12(%ebp),	%eax
	movl	%eax,	-24(%ebp)
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-28(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-32(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	%edi
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-24(%ebp)
# LD (Local (4)) / 

	movl	-20(%ebp),	%eax
	movl	%eax,	-28(%ebp)
# SEXP ("Mov", 2) / 

	movl	$160726,	-32(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-24(%ebp)
# CONST (0) / 

	movl	$1,	-28(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-32(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-24(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-28(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-24(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-24(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
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
# CALL (".array", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L611") / 

	jmp	L611
# LABEL ("L617") / 

L617:

# FAIL ((359, 34), true) / 

	pushl	$69
	pushl	$719
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L611") / 

	jmp	L611
# JMP ("L611") / 

	jmp	L611
# LABEL ("L612") / 

L612:

# FAIL ((358, 17), true) / 

	pushl	$35
	pushl	$717
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L611") / 

	jmp	L611
# LABEL ("L611") / 

L611:

# END / 

	movl	%ebx,	%eax
LLsimpleBinop_16_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLsimpleBinop_16_SIZE,	32

	.set	LSLsimpleBinop_16_SIZE,	8

# LABEL ("Lsuffix") / 

Lsuffix:

# BEGIN ("Lsuffix", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLsuffix_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLsuffix_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# STRING ("<") / 

	movl	$string_26,	%esi
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
# CJMP ("z", "L642") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L642
# DROP / 

# STRING ("l") / 

	movl	$string_37,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L639") / 

	jmp	L639
# LABEL ("L642") / 

L642:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("<=") / 

	movl	$string_27,	%esi
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
# CJMP ("z", "L643") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L643
# DROP / 

# STRING ("le") / 

	movl	$string_38,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L639") / 

	jmp	L639
# LABEL ("L643") / 

L643:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("==") / 

	movl	$string_28,	%esi
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
# CJMP ("z", "L644") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L644
# DROP / 

# STRING ("e") / 

	movl	$string_39,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L639") / 

	jmp	L639
# LABEL ("L644") / 

L644:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("!=") / 

	movl	$string_29,	%esi
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
# CJMP ("z", "L645") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L645
# DROP / 

# STRING ("ne") / 

	movl	$string_40,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L639") / 

	jmp	L639
# LABEL ("L645") / 

L645:

# DUP / 

	movl	%ebx,	%ecx
# STRING (">=") / 

	movl	$string_31,	%esi
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
# CJMP ("z", "L646") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L646
# DROP / 

# STRING ("ge") / 

	movl	$string_41,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L639") / 

	jmp	L639
# LABEL ("L646") / 

L646:

# DUP / 

	movl	%ebx,	%ecx
# STRING (">") / 

	movl	$string_30,	%esi
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
# CJMP ("z", "L640") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L640
# DROP / 

# STRING ("g") / 

	movl	$string_42,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L639") / 

	jmp	L639
# LABEL ("L640") / 

L640:

# FAIL ((339, 7), true) / 

	pushl	$15
	pushl	$679
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L639") / 

	jmp	L639
# LABEL ("L639") / 

L639:

# END / 

	movl	%ebx,	%eax
LLsuffix_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLsuffix_SIZE,	0

	.set	LSLsuffix_SIZE,	0

# LABEL ("Lmove") / 

Lmove:

# BEGIN ("Lmove", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLmove_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLmove_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CALL ("LmemOpnd", 1, false) / 

	pushl	%ebx
	call	LmemOpnd
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALL ("LmemOpnd", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LmemOpnd
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
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
# CJMP ("z", "L649") / 

	sarl	%ebx
	cmpl	$0,	%ebx
	jz	L649
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# LD (Global ("eax")) / 

	movl	global_eax,	%ecx
# SEXP ("Mov", 2) / 

	movl	$160726,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Global ("eax")) / 

	movl	global_eax,	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# SEXP ("Mov", 2) / 

	movl	$160726,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
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
# JMP ("L647") / 

	jmp	L647
# LABEL ("L649") / 

L649:

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# SEXP ("Mov", 2) / 

	movl	$160726,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# CALL ("Lsingleton", 1, true) / 

	pushl	%ebx
	call	Lsingleton
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L647") / 

	jmp	L647
# LABEL ("L647") / 

L647:

# END / 

	movl	%ebx,	%eax
LLmove_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLmove_SIZE,	0

	.set	LSLmove_SIZE,	0

# LABEL ("LmemOpnd") / 

LmemOpnd:

# BEGIN ("LmemOpnd", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLmemOpnd_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLmemOpnd_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("S", 1) / 

	movl	$91,	%edi
	movl	$3,	-4(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L669") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L669
# LABEL ("L670") / 

L670:

# DROP / 

# JMP ("L668") / 

	jmp	L668
# LABEL ("L669") / 

L669:

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

# DROP / 

# CONST (1) / 

	movl	$3,	%ebx
# JMP ("L665") / 

	jmp	L665
# LABEL ("L668") / 

L668:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("M", 1) / 

	movl	$79,	%edi
	movl	$3,	-4(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L672") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L672
# LABEL ("L673") / 

L673:

# DROP / 

# JMP ("L671") / 

	jmp	L671
# LABEL ("L672") / 

L672:

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

# DROP / 

# CONST (1) / 

	movl	$3,	%ebx
# JMP ("L665") / 

	jmp	L665
# LABEL ("L671") / 

L671:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# CONST (0) / 

	movl	$1,	%ebx
# JMP ("L665") / 

	jmp	L665
# LABEL ("L665") / 

L665:

# END / 

	movl	%ebx,	%eax
LLmemOpnd_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLmemOpnd_SIZE,	4

	.set	LSLmemOpnd_SIZE,	1

# LABEL ("LstackOpnd") / 

LstackOpnd:

# BEGIN ("LstackOpnd", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLstackOpnd_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLstackOpnd_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("S", 1) / 

	movl	$91,	%edi
	movl	$3,	-4(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L678") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L678
# LABEL ("L679") / 

L679:

# DROP / 

# JMP ("L677") / 

	jmp	L677
# LABEL ("L678") / 

L678:

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

# DROP / 

# CONST (1) / 

	movl	$3,	%ebx
# JMP ("L674") / 

	jmp	L674
# LABEL ("L677") / 

L677:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# CONST (0) / 

	movl	$1,	%ebx
# JMP ("L674") / 

	jmp	L674
# LABEL ("L674") / 

L674:

# END / 

	movl	%ebx,	%eax
LLstackOpnd_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLstackOpnd_SIZE,	4

	.set	LSLstackOpnd_SIZE,	1

# LABEL ("Lepilogue") / 

Lepilogue:

# BEGIN ("Lepilogue", 0, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLepilogue_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLepilogue_SIZE,	%ecx
	rep movsl	
# LD (Global ("ebp")) / 

	movl	global_ebp,	%ebx
# LD (Global ("esp")) / 

	movl	global_esp,	%ecx
# SEXP ("Mov", 2) / 

	movl	$160726,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Global ("ebp")) / 

	movl	global_ebp,	%ecx
# SEXP ("Pop", 1) / 

	movl	$173008,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STRING ("^") / 

	movl	$string_35,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Global ("eax")) / 

	movl	global_eax,	%edi
# LD (Global ("eax")) / 

	movl	global_eax,	%eax
	movl	%eax,	-4(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# SEXP ("Ret", 0) / 

	movl	$180564,	%edi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CONST (0) / 

	movl	$1,	-4(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	pushl	%edi
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-4(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-4(%ebp)
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
# END / 

	movl	%ebx,	%eax
LLepilogue_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLepilogue_SIZE,	8

	.set	LSLepilogue_SIZE,	2

# LABEL ("Lprologue") / 

Lprologue:

# BEGIN ("Lprologue", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLprologue_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLprologue_SIZE,	%ecx
	rep movsl	
# LD (Global ("ebp")) / 

	movl	global_ebp,	%ebx
# SEXP ("Push", 1) / 

	movl	$11097288,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# LD (Global ("esp")) / 

	movl	global_esp,	%ecx
# LD (Global ("ebp")) / 

	movl	global_ebp,	%esi
# SEXP ("Mov", 2) / 

	movl	$160726,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STRING ("-") / 

	movl	$string_22,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Global ("wordSize")) / 

	movl	global_wordSize,	%edi
# LD (Arg (0)) / 

	movl	8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP ("*") / 

	decl	%edi
	movl	-4(%ebp),	%eax
	sarl	%eax
	imull	%eax,	%edi
	orl	$0x0001,	%edi
# SEXP ("L", 1) / 

	movl	$38,	-4(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-4(%ebp)
	pushl	%edi
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# LD (Global ("esp")) / 

	movl	global_esp,	%eax
	movl	%eax,	-4(%ebp)
# SEXP ("Binop", 3) / 

	movl	$472179664,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CONST (0) / 

	movl	$1,	%edi
# SEXP ("cons", 2) / 

	movl	$848787,	-4(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-4(%ebp)
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
# END / 

	movl	%ebx,	%eax
LLprologue_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLprologue_SIZE,	8

	.set	LSLprologue_SIZE,	2

# LABEL ("LdataDef") / 

LdataDef:

# BEGIN ("LdataDef", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLdataDef_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLdataDef_SIZE,	%ecx
	rep movsl	
# STRING ("%s:\\t.int\\t0\\n") / 

	movl	$string_43,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lsprintf", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# SEXP ("Meta", 1) / 

	movl	$10245377,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# CALL ("Lsingleton", 1, true) / 

	movl	%ebx,	8(%ebp)
	movl	%ebp,	%esp
	popl	%ebp
	jmp	Lsingleton
# END / 

	movl	%ebx,	%eax
LLdataDef_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLdataDef_SIZE,	0

	.set	LSLdataDef_SIZE,	0

# LABEL ("LdataSection") / 

LdataSection:

# BEGIN ("LdataSection", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLdataSection_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLdataSection_SIZE,	%ecx
	rep movsl	
# STRING ("\\t.data\\n") / 

	movl	$string_44,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# SEXP ("Meta", 1) / 

	movl	$10245377,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLdataSection_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLdataSection_SIZE,	0

	.set	LSLdataSection_SIZE,	0

# LABEL ("LcodeSection") / 

LcodeSection:

# BEGIN ("LcodeSection", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLcodeSection_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLcodeSection_SIZE,	%ecx
	rep movsl	
# STRING ("\\t.text\\n") / 

	movl	$string_45,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# SEXP ("Meta", 1) / 

	movl	$10245377,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLcodeSection_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLcodeSection_SIZE,	0

	.set	LSLcodeSection_SIZE,	0

# LABEL ("LinitEnv") / 

LinitEnv:

# BEGIN ("LinitEnv", 0, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLinitEnv_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLinitEnv_SIZE,	%ecx
	rep movsl	
# CONST (0) / 

	movl	$1,	%ebx
# CALL ("LemptySet", 0, false) / 

	pushl	%ebx
	call	LemptySet
	addl	$0,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# CONST (0) / 

	movl	$1,	%edi
# CALL ("LemptyMap", 0, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	LemptyMap
	addl	$0,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
# CALL ("LmakeEnv", 5, true) / 

	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LmakeEnv
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLinitEnv_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLinitEnv_SIZE,	4

	.set	LSLinitEnv_SIZE,	1

# LABEL ("LretrieveStack") / 

LretrieveStack:

# BEGIN ("LretrieveStack", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLretrieveStack_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLretrieveStack_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (13) / 

	movl	$27,	%ecx
# CALL (".elem", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLretrieveStack_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLretrieveStack_SIZE,	0

	.set	LSLretrieveStack_SIZE,	0

# LABEL ("LsetStack") / 

LsetStack:

# BEGIN ("LsetStack", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLsetStack_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLsetStack_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (12) / 

	movl	$25,	%ecx
# CALL (".elem", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLsetStack_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLsetStack_SIZE,	0

	.set	LSLsetStack_SIZE,	0

# LABEL ("LsetBarrier") / 

LsetBarrier:

# BEGIN ("LsetBarrier", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLsetBarrier_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLsetBarrier_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (11) / 

	movl	$23,	%ecx
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
LLsetBarrier_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLsetBarrier_SIZE,	0

	.set	LSLsetBarrier_SIZE,	0

# LABEL ("LisBarrier") / 

LisBarrier:

# BEGIN ("LisBarrier", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLisBarrier_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLisBarrier_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (10) / 

	movl	$21,	%ecx
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
LLisBarrier_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLisBarrier_SIZE,	0

	.set	LSLisBarrier_SIZE,	0

# LABEL ("Lpeek") / 

Lpeek:

# BEGIN ("Lpeek", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLpeek_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLpeek_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (9) / 

	movl	$19,	%ecx
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
LLpeek_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLpeek_SIZE,	0

	.set	LSLpeek_SIZE,	0

# LABEL ("LgetStackSize") / 

LgetStackSize:

# BEGIN ("LgetStackSize", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLgetStackSize_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLgetStackSize_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (8) / 

	movl	$17,	%ecx
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
LLgetStackSize_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLgetStackSize_SIZE,	0

	.set	LSLgetStackSize_SIZE,	0

# LABEL ("LgetGlobals") / 

LgetGlobals:

# BEGIN ("LgetGlobals", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLgetGlobals_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLgetGlobals_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (7) / 

	movl	$15,	%ecx
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
LLgetGlobals_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLgetGlobals_SIZE,	0

	.set	LSLgetGlobals_SIZE,	0

# LABEL ("Lloc") / 

Lloc:

# BEGIN ("Lloc", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLloc_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLloc_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (6) / 

	movl	$13,	%ecx
# CALL (".elem", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLloc_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLloc_SIZE,	0

	.set	LSLloc_SIZE,	0

# LABEL ("LaddGlobal") / 

LaddGlobal:

# BEGIN ("LaddGlobal", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLaddGlobal_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLaddGlobal_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (5) / 

	movl	$11,	%ecx
# CALL (".elem", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLaddGlobal_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLaddGlobal_SIZE,	0

	.set	LSLaddGlobal_SIZE,	0

# LABEL ("Lpop2") / 

Lpop2:

# BEGIN ("Lpop2", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLpop2_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLpop2_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (4) / 

	movl	$9,	%ecx
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
LLpop2_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLpop2_SIZE,	0

	.set	LSLpop2_SIZE,	0

# LABEL ("Lpop") / 

Lpop:

# BEGIN ("Lpop", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLpop_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLpop_SIZE,	%ecx
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
# CALLC (0, true) / 

	pushl	%ebx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$0,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLpop_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLpop_SIZE,	0

	.set	LSLpop_SIZE,	0

# LABEL ("Lpush") / 

Lpush:

# BEGIN ("Lpush", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLpush_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLpush_SIZE,	%ecx
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
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALLC (1, true) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLpush_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLpush_SIZE,	0

	.set	LSLpush_SIZE,	0

# LABEL ("Lallocate") / 

Lallocate:

# BEGIN ("Lallocate", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLallocate_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLallocate_SIZE,	%ecx
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
LLallocate_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLallocate_SIZE,	0

	.set	LSLallocate_SIZE,	0

# LABEL ("LenvString") / 

LenvString:

# BEGIN ("LenvString", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLenvString_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLenvString_SIZE,	%ecx
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
LLenvString_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLenvString_SIZE,	0

	.set	LSLenvString_SIZE,	0

# LABEL ("LmakeEnv") / 

LmakeEnv:

# BEGIN ("LmakeEnv", 5, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLmakeEnv_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLmakeEnv_SIZE,	%ecx
	rep movsl	
# CLOSURE ("LenvString_184", [Arg (0); Arg (1); Arg (2)]) / 

	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$LenvString_184
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%ebx
# CLOSURE ("Lallocate_184", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4)]) / 

	pushl	%ebx
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$Lallocate_184
	pushl	$11
	call	Bclosure
	addl	$28,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CLOSURE ("Lpush_184", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$Lpush_184
	pushl	$11
	call	Bclosure
	addl	$28,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("Lpop_184", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$Lpop_184
	pushl	$11
	call	Bclosure
	addl	$28,	%esp
	movl	%eax,	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("Lpop2_184", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$Lpop2_184
	pushl	$11
	call	Bclosure
	addl	$28,	%esp
	movl	%eax,	-4(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("LaddGlobal_184", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$LaddGlobal_184
	pushl	$11
	call	Bclosure
	addl	$28,	%esp
	movl	%eax,	-8(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("Lloc_184", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Lloc_184
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-12(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("LgetGlobals_184", [Arg (2)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	16(%ebp)
	pushl	$LgetGlobals_184
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	-16(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("LgetStackSize_184", [Arg (1)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	12(%ebp)
	pushl	$LgetStackSize_184
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	-20(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("Lpeek_184", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	8(%ebp)
	pushl	$Lpeek_184
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	-24(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("LisBarrier_184", [Arg (3)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	20(%ebp)
	pushl	$LisBarrier_184
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	-28(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("LsetBarrier_184", [Arg (0); Arg (1); Arg (2); Arg (4)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	24(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$LsetBarrier_184
	pushl	$9
	call	Bclosure
	addl	$24,	%esp
	movl	%eax,	-32(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("LsetStack_184", [Arg (0); Arg (1); Arg (2); Arg (4)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	24(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$LsetStack_184
	pushl	$9
	call	Bclosure
	addl	$24,	%esp
	movl	%eax,	-36(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CLOSURE ("LretrieveStack_184", [Arg (4); Arg (0); Arg (1); Arg (2)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	24(%ebp)
	pushl	$LretrieveStack_184
	pushl	$9
	call	Bclosure
	addl	$24,	%esp
	movl	%eax,	-40(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CALL (".array", 14, true) / 

	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$29
	call	Barray
	addl	$60,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLmakeEnv_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLmakeEnv_SIZE,	40

	.set	LSLmakeEnv_SIZE,	10

# LABEL ("LretrieveStack_184") / 

LretrieveStack_184:

# BEGIN ("LretrieveStack_184", 1, 1, [Arg (4); Arg (0); Arg (1); Arg (2)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLretrieveStack_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLretrieveStack_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Arg (0)) / 

	movl	12(%ebp),	%ecx
# CALL ("LfindMap", 2, false) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	LfindMap
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("None", 0) / 

	movl	$21096203,	%edi
	movl	$1,	-8(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L815") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L815
# LABEL ("L816") / 

L816:

# DROP / 

# JMP ("L814") / 

	jmp	L814
# LABEL ("L815") / 

L815:

# DROP / 

# DROP / 

# LD (Access (1)) / 

	movl	8(%edx),	%ebx
# LD (Access (2)) / 

	movl	12(%edx),	%ecx
# LD (Access (3)) / 

	movl	16(%edx),	%esi
# CONST (0) / 

	movl	$1,	%edi
# LD (Access (0)) / 

	movl	4(%edx),	%eax
	movl	%eax,	-8(%ebp)
# CALL ("LmakeEnv", 5, true) / 

	pushl	%edx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LmakeEnv
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L809") / 

	jmp	L809
# LABEL ("L814") / 

L814:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Some", 1) / 

	movl	$23717515,	%edi
	movl	$3,	-8(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L822") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L822
# LABEL ("L823") / 

L823:

# DROP / 

# JMP ("L810") / 

	jmp	L810
# LABEL ("L822") / 

L822:

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# LD (Access (2)) / 

	movl	12(%edx),	%ecx
# LD (Access (3)) / 

	movl	16(%edx),	%esi
# CONST (0) / 

	movl	$1,	%edi
# LD (Access (0)) / 

	movl	4(%edx),	%eax
	movl	%eax,	-8(%ebp)
# CALL ("LmakeEnv", 5, true) / 

	pushl	%edx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LmakeEnv
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L809") / 

	jmp	L809
# LABEL ("L810") / 

L810:

# FAIL ((195, 9), true) / 

	pushl	$19
	pushl	$391
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L809") / 

	jmp	L809
# LABEL ("L809") / 

L809:

# END / 

	movl	%ebx,	%eax
LLretrieveStack_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLretrieveStack_184_SIZE,	8

	.set	LSLretrieveStack_184_SIZE,	2

# LABEL ("LsetStack_184") / 

LsetStack_184:

# BEGIN ("LsetStack_184", 1, 0, [Arg (0); Arg (1); Arg (2); Arg (4)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLsetStack_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLsetStack_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# CONST (0) / 

	movl	$1,	%edi
# LD (Access (3)) / 

	movl	16(%edx),	%eax
	movl	%eax,	-4(%ebp)
# LD (Arg (0)) / 

	movl	12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# LD (Access (0)) / 

	movl	4(%edx),	%eax
	movl	%eax,	-12(%ebp)
# CALL ("LaddMap", 3, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	LaddMap
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-4(%ebp)
# CALL ("LmakeEnv", 5, true) / 

	pushl	%edx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LmakeEnv
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLsetStack_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLsetStack_184_SIZE,	12

	.set	LSLsetStack_184_SIZE,	3

# LABEL ("LsetBarrier_184") / 

LsetBarrier_184:

# BEGIN ("LsetBarrier_184", 0, 0, [Arg (0); Arg (1); Arg (2); Arg (4)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLsetBarrier_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLsetBarrier_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# CONST (1) / 

	movl	$3,	%edi
# LD (Access (3)) / 

	movl	16(%edx),	%eax
	movl	%eax,	-4(%ebp)
# CALL ("LmakeEnv", 5, true) / 

	pushl	%edx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LmakeEnv
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLsetBarrier_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLsetBarrier_184_SIZE,	4

	.set	LSLsetBarrier_184_SIZE,	1

# LABEL ("LisBarrier_184") / 

LisBarrier_184:

# BEGIN ("LisBarrier_184", 0, 0, [Arg (3)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLisBarrier_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLisBarrier_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# END / 

	movl	%ebx,	%eax
LLisBarrier_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLisBarrier_184_SIZE,	0

	.set	LSLisBarrier_184_SIZE,	0

# LABEL ("LgetStackSize_184") / 

LgetStackSize_184:

# BEGIN ("LgetStackSize_184", 0, 0, [Arg (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLgetStackSize_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLgetStackSize_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# END / 

	movl	%ebx,	%eax
LLgetStackSize_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLgetStackSize_184_SIZE,	0

	.set	LSLgetStackSize_184_SIZE,	0

# LABEL ("LgetGlobals_184") / 

LgetGlobals_184:

# BEGIN ("LgetGlobals_184", 0, 0, [Arg (2)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLgetGlobals_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLgetGlobals_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CALL ("Lelements", 1, true) / 

	pushl	%edx
	pushl	%ebx
	call	Lelements
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLgetGlobals_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLgetGlobals_184_SIZE,	0

	.set	LSLgetGlobals_184_SIZE,	0

# LABEL ("Lloc_184") / 

Lloc_184:

# BEGIN ("Lloc_184", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLloc_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLloc_184_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CALL ("LglobalName_184", 1, false) / 

	pushl	%ebx
	call	LglobalName_184
	addl	$4,	%esp
	movl	%eax,	%ebx
# SEXP ("M", 1) / 

	movl	$39,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLloc_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLloc_184_SIZE,	0

	.set	LSLloc_184_SIZE,	0

# LABEL ("LaddGlobal_184") / 

LaddGlobal_184:

# BEGIN ("LaddGlobal_184", 1, 0, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLaddGlobal_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLaddGlobal_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# LD (Arg (0)) / 

	movl	12(%ebp),	%edi
# CALL ("LglobalName_184", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	LglobalName_184
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# CALL ("LaddSet", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	LaddSet
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# LD (Access (3)) / 

	movl	16(%edx),	%edi
# LD (Access (4)) / 

	movl	20(%edx),	%eax
	movl	%eax,	-4(%ebp)
# CALL ("LmakeEnv", 5, true) / 

	pushl	%edx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LmakeEnv
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLaddGlobal_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLaddGlobal_184_SIZE,	4

	.set	LSLaddGlobal_184_SIZE,	1

# LABEL ("Lpeek_184") / 

Lpeek_184:

# BEGIN ("Lpeek_184", 0, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLpeek_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLpeek_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CALL ("Lfst", 1, true) / 

	pushl	%edx
	pushl	%ebx
	call	Lfst
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLpeek_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLpeek_184_SIZE,	0

	.set	LSLpeek_184_SIZE,	0

# LABEL ("Lpop2_184") / 

Lpop2_184:

# BEGIN ("Lpop2_184", 0, 3, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLpop2_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLpop2_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
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
# CJMP ("nz", "L865") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L865
# LABEL ("L866") / 

L866:

# DROP / 

# JMP ("L863") / 

	jmp	L863
# LABEL ("L865") / 

L865:

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
# DUP / 

	movl	%esi,	%edi
# TAG ("cons", 2) / 

	movl	$1697575,	-16(%ebp)
	movl	$5,	-20(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# CJMP ("nz", "L867") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L867
# LABEL ("L868") / 

L868:

# DROP / 

# JMP ("L866") / 

	jmp	L866
# LABEL ("L867") / 

L867:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-16(%ebp)
# CALL (".elem", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-16(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# DROP / 

# DUP / 

	movl	%esi,	%edi
# CONST (1) / 

	movl	$3,	-16(%ebp)
# CALL (".elem", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-16(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# DROP / 

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
# ST (Local (2)) / 

	movl	%ecx,	-12(%ebp)
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

# LD (Local (2)) / 

	movl	-12(%ebp),	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# LD (Access (1)) / 

	movl	8(%edx),	%edi
# LD (Access (2)) / 

	movl	12(%edx),	%eax
	movl	%eax,	-16(%ebp)
# LD (Access (3)) / 

	movl	16(%edx),	%eax
	movl	%eax,	-20(%ebp)
# LD (Access (4)) / 

	movl	20(%edx),	%eax
	movl	%eax,	-24(%ebp)
# CALL ("LmakeEnv", 5, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	%edi
	pushl	%esi
	call	LmakeEnv
	addl	$20,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALL (".array", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L862") / 

	jmp	L862
# LABEL ("L863") / 

L863:

# FAIL ((148, 9), true) / 

	pushl	$19
	pushl	$297
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L862") / 

	jmp	L862
# LABEL ("L862") / 

L862:

# END / 

	movl	%ebx,	%eax
LLpop2_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLpop2_184_SIZE,	24

	.set	LSLpop2_184_SIZE,	6

# LABEL ("Lpop_184") / 

Lpop_184:

# BEGIN ("Lpop_184", 0, 2, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLpop_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLpop_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-12(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L880") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L880
# LABEL ("L881") / 

L881:

# DROP / 

# JMP ("L878") / 

	jmp	L878
# LABEL ("L880") / 

L880:

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
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# LD (Access (2)) / 

	movl	12(%edx),	%edi
# LD (Access (3)) / 

	movl	16(%edx),	%eax
	movl	%eax,	-12(%ebp)
# LD (Access (4)) / 

	movl	20(%edx),	%eax
	movl	%eax,	-16(%ebp)
# CALL ("LmakeEnv", 5, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	call	LmakeEnv
	addl	$20,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL (".array", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L877") / 

	jmp	L877
# LABEL ("L878") / 

L878:

# FAIL ((140, 9), true) / 

	pushl	$19
	pushl	$281
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L877") / 

	jmp	L877
# LABEL ("L877") / 

L877:

# END / 

	movl	%ebx,	%eax
LLpop_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLpop_184_SIZE,	16

	.set	LSLpop_184_SIZE,	4

# LABEL ("Lpush_184") / 

Lpush_184:

# BEGIN ("Lpush_184", 1, 0, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLpush_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLpush_184_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# SEXP ("cons", 2) / 

	movl	$848787,	%esi
	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edx
	movl	%eax,	%ebx
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# LD (Access (3)) / 

	movl	16(%edx),	%edi
# LD (Access (4)) / 

	movl	20(%edx),	%eax
	movl	%eax,	-4(%ebp)
# CALL ("LmakeEnv", 5, true) / 

	pushl	%edx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LmakeEnv
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLpush_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLpush_184_SIZE,	4

	.set	LSLpush_184_SIZE,	1

# LABEL ("Lallocate_184") / 

Lallocate_184:

# BEGIN ("Lallocate_184", 0, 2, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLallocate_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLallocate_184_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
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
# CJMP ("z", "L902") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L902
# DROP / 

# LD (Global ("ebx")) / 

	movl	global_ebx,	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# CALL (".array", 2, false) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L899") / 

	jmp	L899
# LABEL ("L902") / 

L902:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-12(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L906") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L906
# LABEL ("L907") / 

L907:

# DROP / 

# JMP ("L905") / 

	jmp	L905
# LABEL ("L906") / 

L906:

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
# DUP / 

	movl	%esi,	%edi
# TAG ("S", 1) / 

	movl	$91,	-12(%ebp)
	movl	$3,	-16(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# CJMP ("nz", "L908") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L908
# LABEL ("L909") / 

L909:

# DROP / 

# JMP ("L907") / 

	jmp	L907
# LABEL ("L908") / 

L908:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-12(%ebp)
# CALL (".elem", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-12(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# DROP / 

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CONST (1) / 

	movl	$3,	%ecx
# BINOP ("+") / 

	addl	%ecx,	%ebx
	decl	%ebx
# SEXP ("S", 1) / 

	movl	$45,	%ecx
	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CONST (2) / 

	movl	$5,	%esi
# BINOP ("+") / 

	addl	%esi,	%ecx
	decl	%ecx
# CALL (".array", 2, false) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L899") / 

	jmp	L899
# LABEL ("L905") / 

L905:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-12(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L918") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L918
# LABEL ("L919") / 

L919:

# DROP / 

# JMP ("L917") / 

	jmp	L917
# LABEL ("L918") / 

L918:

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
# DUP / 

	movl	%esi,	%edi
# TAG ("R", 1) / 

	movl	$89,	-12(%ebp)
	movl	$3,	-16(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# CJMP ("nz", "L920") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L920
# LABEL ("L921") / 

L921:

# DROP / 

# JMP ("L919") / 

	jmp	L919
# LABEL ("L920") / 

L920:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-12(%ebp)
# CALL (".elem", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-12(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# DROP / 

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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# LD (Global ("nRegs")) / 

	movl	global_nRegs,	%ecx
# BINOP ("<") / 

	xorl	%eax,	%eax
	cmpl	%ecx,	%ebx
	setl	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ebx
# CJMP ("z", "L923") / 

	sarl	%ebx
	cmpl	$0,	%ebx
	jz	L923
# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CONST (1) / 

	movl	$3,	%ecx
# BINOP ("+") / 

	addl	%ecx,	%ebx
	decl	%ebx
# SEXP ("R", 1) / 

	movl	$44,	%ecx
	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# CALL (".array", 2, false) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L899") / 

	jmp	L899
# LABEL ("L923") / 

L923:

# CONST (0) / 

	movl	$1,	%ebx
# SEXP ("S", 1) / 

	movl	$45,	%ecx
	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# CONST (1) / 

	movl	$3,	%ecx
# CALL (".array", 2, false) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L899") / 

	jmp	L899
# JMP ("L899") / 

	jmp	L899
# LABEL ("L917") / 

L917:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# CONST (0) / 

	movl	$1,	%ebx
# SEXP ("S", 1) / 

	movl	$45,	%ecx
	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# CONST (1) / 

	movl	$3,	%ecx
# CALL (".array", 2, false) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L899") / 

	jmp	L899
# LABEL ("L899") / 

L899:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# ARRAY (2) / 

	movl	$5,	%edi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Barray_patt
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CJMP ("nz", "L937") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L937
# LABEL ("L938") / 

L938:

# DROP / 

# JMP ("L898") / 

	jmp	L898
# LABEL ("L937") / 

L937:

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
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Access (0)) / 

	movl	4(%edx),	%esi
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
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# LD (Access (1)) / 

	movl	8(%edx),	%edi
# BINOP (">") / 

	xorl	%eax,	%eax
	cmpl	%edi,	%esi
	setg	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%esi
# CJMP ("z", "L947") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L947
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# JMP ("L945") / 

	jmp	L945
# LABEL ("L947") / 

L947:

# LD (Access (1)) / 

	movl	8(%edx),	%esi
# JMP ("L945") / 

	jmp	L945
# LABEL ("L945") / 

L945:

# LD (Access (2)) / 

	movl	12(%edx),	%edi
# LD (Access (3)) / 

	movl	16(%edx),	%eax
	movl	%eax,	-12(%ebp)
# LD (Access (4)) / 

	movl	20(%edx),	%eax
	movl	%eax,	-16(%ebp)
# CALL ("LmakeEnv", 5, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	call	LmakeEnv
	addl	$20,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL (".array", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L897") / 

	jmp	L897
# LABEL ("L898") / 

L898:

# FAIL ((122, 9), true) / 

	pushl	$19
	pushl	$245
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L897") / 

	jmp	L897
# LABEL ("L897") / 

L897:

# END / 

	movl	%ebx,	%eax
LLallocate_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLallocate_184_SIZE,	16

	.set	LSLallocate_184_SIZE,	4

# LABEL ("LenvString_184") / 

LenvString_184:

# BEGIN ("LenvString_184", 0, 0, [Arg (0); Arg (1); Arg (2)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLenvString_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLenvString_184_SIZE,	%ecx
	rep movsl	
# STRING ("Stack     : %s\\nStackSlots: %d\\nGlobals   : %s\\n") / 

	movl	$string_46,	%ebx
	pushl	%edx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# CALL (".stringval", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Bstringval
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# LD (Access (2)) / 

	movl	12(%edx),	%edi
# CALL ("Lelements", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Lelements
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# CALL (".stringval", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Bstringval
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# CALL ("Lsprintf", 4, true) / 

	pushl	%edx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$16,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLenvString_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLenvString_184_SIZE,	0

	.set	LSLenvString_184_SIZE,	0

# LABEL ("LglobalName_184") / 

LglobalName_184:

# BEGIN ("LglobalName_184", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLglobalName_184_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLglobalName_184_SIZE,	%ecx
	rep movsl	
# STRING ("global_") / 

	movl	$string_47,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Li__Infix_4343", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_4343
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLglobalName_184_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLglobalName_184_SIZE,	0

	.set	LSLglobalName_184_SIZE,	0

# LABEL ("LinsnString") / 

LinsnString:

# BEGIN ("LinsnString", 1, 3, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLinsnString_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLinsnString_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Cltd", 0) / 

	movl	$15305225,	%edi
	movl	$1,	-16(%ebp)
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
# CJMP ("nz", "L967") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L967
# LABEL ("L968") / 

L968:

# DROP / 

# JMP ("L966") / 

	jmp	L966
# LABEL ("L967") / 

L967:

# DROP / 

# DROP / 

# STRING ("\\tcltd\\n") / 

	movl	$string_48,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L966") / 

L966:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Set", 2) / 

	movl	$369321,	%edi
	movl	$5,	-16(%ebp)
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
# CJMP ("nz", "L970") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L970
# LABEL ("L971") / 

L971:

# DROP / 

# JMP ("L969") / 

	jmp	L969
# LABEL ("L970") / 

L970:

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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# STRING ("\\tset%s\\t%s\\n") / 

	movl	$string_49,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL ("Lsprintf", 3, true) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L969") / 

L969:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("IDiv", 1) / 

	movl	$18597037,	%edi
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
# CJMP ("nz", "L976") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L976
# LABEL ("L977") / 

L977:

# DROP / 

# JMP ("L975") / 

	jmp	L975
# LABEL ("L976") / 

L976:

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

# STRING ("\\tidivl\\t%s\\n") / 

	movl	$string_50,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LopndString_238
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L975") / 

L975:

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
# CJMP ("nz", "L982") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L982
# LABEL ("L983") / 

L983:

# DROP / 

# JMP ("L981") / 

	jmp	L981
# LABEL ("L982") / 

L982:

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

# STRING ("\\t%s\\t%s,\\t%s\\n") / 

	movl	$string_51,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# CALL ("LbinopString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LbinopString_238
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Local (1)) / 

	movl	-8(%ebp),	%esi
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	LopndString_238
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Local (0)) / 

	movl	-4(%ebp),	%edi
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	LopndString_238
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("Lsprintf", 4, true) / 

	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$16,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L981") / 

L981:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Lea", 2) / 

	movl	$311939,	%edi
	movl	$5,	-16(%ebp)
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
# CJMP ("nz", "L992") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L992
# LABEL ("L993") / 

L993:

# DROP / 

# JMP ("L991") / 

	jmp	L991
# LABEL ("L992") / 

L992:

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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# STRING ("\\tleal\\t%s,\\t%s\\n") / 

	movl	$string_52,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LopndString_238
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	LopndString_238
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Lsprintf", 3, true) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L991") / 

L991:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Mov", 2) / 

	movl	$321453,	%edi
	movl	$5,	-16(%ebp)
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
# CJMP ("nz", "L1000") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1000
# LABEL ("L1001") / 

L1001:

# DROP / 

# JMP ("L999") / 

	jmp	L999
# LABEL ("L1000") / 

L1000:

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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# STRING ("\\tmovl\\t%s,\\t%s\\n") / 

	movl	$string_53,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LopndString_238
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	LopndString_238
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Lsprintf", 3, true) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L999") / 

L999:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Push", 1) / 

	movl	$22194577,	%edi
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
# CJMP ("nz", "L1008") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1008
# LABEL ("L1009") / 

L1009:

# DROP / 

# JMP ("L1007") / 

	jmp	L1007
# LABEL ("L1008") / 

L1008:

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

# STRING ("\\tpushl\\t%s\\n") / 

	movl	$string_54,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LopndString_238
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L1007") / 

L1007:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Pop", 1) / 

	movl	$346017,	%edi
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
# CJMP ("nz", "L1014") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1014
# LABEL ("L1015") / 

L1015:

# DROP / 

# JMP ("L1013") / 

	jmp	L1013
# LABEL ("L1014") / 

L1014:

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

# STRING ("\\tpopl\\t%s\\n") / 

	movl	$string_55,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LopndString_238
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L1013") / 

L1013:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Ret", 0) / 

	movl	$361129,	%edi
	movl	$1,	-16(%ebp)
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
# CJMP ("nz", "L1020") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1020
# LABEL ("L1021") / 

L1021:

# DROP / 

# JMP ("L1019") / 

	jmp	L1019
# LABEL ("L1020") / 

L1020:

# DROP / 

# DROP / 

# STRING ("\\tret\\n") / 

	movl	$string_56,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L1019") / 

L1019:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Call", 1) / 

	movl	$15214105,	%edi
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
# CJMP ("nz", "L1023") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1023
# LABEL ("L1024") / 

L1024:

# DROP / 

# JMP ("L1022") / 

	jmp	L1022
# LABEL ("L1023") / 

L1023:

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

# STRING ("\\tcall\\t%s\\n") / 

	movl	$string_57,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L1022") / 

L1022:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Label", 1) / 

	movl	$1275609753,	%edi
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
# CJMP ("nz", "L1028") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1028
# LABEL ("L1029") / 

L1029:

# DROP / 

# JMP ("L1027") / 

	jmp	L1027
# LABEL ("L1028") / 

L1028:

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

# STRING ("%s:\\n") / 

	movl	$string_58,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L1027") / 

L1027:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Jmp", 1) / 

	movl	$296609,	%edi
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
# CJMP ("nz", "L1033") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1033
# LABEL ("L1034") / 

L1034:

# DROP / 

# JMP ("L1032") / 

	jmp	L1032
# LABEL ("L1033") / 

L1033:

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

# STRING ("\\tjmp\\t%s\\n") / 

	movl	$string_59,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L1032") / 

L1032:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("CJmp", 2) / 

	movl	$15500961,	%edi
	movl	$5,	-16(%ebp)
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
# CJMP ("nz", "L1038") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1038
# LABEL ("L1039") / 

L1039:

# DROP / 

# JMP ("L1037") / 

	jmp	L1037
# LABEL ("L1038") / 

L1038:

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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# STRING ("\\tj%s\\t%s\\n") / 

	movl	$string_60,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL ("Lsprintf", 3, true) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L1037") / 

L1037:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Meta", 1) / 

	movl	$20490755,	%edi
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
# CJMP ("nz", "L1043") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1043
# LABEL ("L1044") / 

L1044:

# DROP / 

# JMP ("L964") / 

	jmp	L964
# LABEL ("L1043") / 

L1043:

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

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# JMP ("L963") / 

	jmp	L963
# LABEL ("L964") / 

L964:

# FAIL ((81, 7), true) / 

	pushl	$15
	pushl	$163
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L963") / 

	jmp	L963
# LABEL ("L963") / 

L963:

# END / 

	movl	%ebx,	%eax
LLinsnString_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLinsnString_SIZE,	16

	.set	LSLinsnString_SIZE,	4

# LABEL ("LopndString_238") / 

LopndString_238:

# BEGIN ("LopndString_238", 1, 2, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLopndString_238_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLopndString_238_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("R", 1) / 

	movl	$89,	%edi
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
# CJMP ("nz", "L1049") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1049
# LABEL ("L1050") / 

L1050:

# DROP / 

# JMP ("L1048") / 

	jmp	L1048
# LABEL ("L1049") / 

L1049:

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

# LD (Global ("regs")) / 

	movl	global_regs,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL (".elem", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L1045") / 

	jmp	L1045
# LABEL ("L1048") / 

L1048:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("S", 1) / 

	movl	$91,	%edi
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
# CJMP ("nz", "L1054") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1054
# LABEL ("L1055") / 

L1055:

# DROP / 

# JMP ("L1053") / 

	jmp	L1053
# LABEL ("L1054") / 

L1054:

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

# STRING ("-%d(%%ebp)") / 

	movl	$string_61,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CONST (1) / 

	movl	$3,	%esi
# BINOP ("+") / 

	addl	%esi,	%ecx
	decl	%ecx
# LD (Global ("wordSize")) / 

	movl	global_wordSize,	%esi
# BINOP ("*") / 

	decl	%ecx
	movl	%esi,	%eax
	sarl	%eax
	imull	%eax,	%ecx
	orl	$0x0001,	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L1045") / 

	jmp	L1045
# LABEL ("L1053") / 

L1053:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("M", 1) / 

	movl	$79,	%edi
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
# CJMP ("nz", "L1063") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1063
# LABEL ("L1064") / 

L1064:

# DROP / 

# JMP ("L1062") / 

	jmp	L1062
# LABEL ("L1063") / 

L1063:

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

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# JMP ("L1045") / 

	jmp	L1045
# LABEL ("L1062") / 

L1062:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("L", 1) / 

	movl	$77,	%edi
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
# CJMP ("nz", "L1066") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1066
# LABEL ("L1067") / 

L1067:

# DROP / 

# JMP ("L1065") / 

	jmp	L1065
# LABEL ("L1066") / 

L1066:

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

# STRING ("$%d") / 

	movl	$string_62,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L1045") / 

	jmp	L1045
# LABEL ("L1065") / 

L1065:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("I", 2) / 

	movl	$71,	%edi
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
# CJMP ("nz", "L1071") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1071
# LABEL ("L1072") / 

L1072:

# DROP / 

# JMP ("L1070") / 

	jmp	L1070
# LABEL ("L1071") / 

L1071:

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
# CONST (0) / 

	movl	$1,	%edi
# BINOP ("==") / 

	xorl	%eax,	%eax
	cmpl	%edi,	%esi
	sete	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%esi
# CJMP ("z", "L1072") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L1072
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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# STRING ("(%s)") / 

	movl	$string_63,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LopndString_238
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L1045") / 

	jmp	L1045
# LABEL ("L1070") / 

L1070:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("I", 2) / 

	movl	$71,	%edi
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
# CJMP ("nz", "L1076") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L1076
# LABEL ("L1077") / 

L1077:

# DROP / 

# JMP ("L1046") / 

	jmp	L1046
# LABEL ("L1076") / 

L1076:

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
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
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
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# STRING ("%d(%s)") / 

	movl	$string_64,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL ("LopndString_238", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	LopndString_238
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Lsprintf", 3, true) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L1045") / 

	jmp	L1045
# LABEL ("L1046") / 

L1046:

# FAIL ((71, 9), true) / 

	pushl	$19
	pushl	$143
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L1045") / 

	jmp	L1045
# LABEL ("L1045") / 

L1045:

# END / 

	movl	%ebx,	%eax
LLopndString_238_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLopndString_238_SIZE,	12

	.set	LSLopndString_238_SIZE,	3

# LABEL ("LbinopString_238") / 

LbinopString_238:

# BEGIN ("LbinopString_238", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLbinopString_238_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLbinopString_238_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# STRING ("+") / 

	movl	$string_21,	%esi
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
# CJMP ("z", "L1085") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L1085
# DROP / 

# STRING ("addl") / 

	movl	$string_65,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L1082") / 

	jmp	L1082
# LABEL ("L1085") / 

L1085:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("-") / 

	movl	$string_22,	%esi
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
# CJMP ("z", "L1086") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L1086
# DROP / 

# STRING ("subl") / 

	movl	$string_66,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L1082") / 

	jmp	L1082
# LABEL ("L1086") / 

L1086:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("*") / 

	movl	$string_23,	%esi
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
# CJMP ("z", "L1087") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L1087
# DROP / 

# STRING ("imull") / 

	movl	$string_67,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L1082") / 

	jmp	L1082
# LABEL ("L1087") / 

L1087:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("&&") / 

	movl	$string_32,	%esi
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
# CJMP ("z", "L1088") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L1088
# DROP / 

# STRING ("andl") / 

	movl	$string_68,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L1082") / 

	jmp	L1082
# LABEL ("L1088") / 

L1088:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("!!") / 

	movl	$string_33,	%esi
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
# CJMP ("z", "L1089") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L1089
# DROP / 

# STRING ("orl") / 

	movl	$string_69,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L1082") / 

	jmp	L1082
# LABEL ("L1089") / 

L1089:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("^") / 

	movl	$string_35,	%esi
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
# CJMP ("z", "L1090") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L1090
# DROP / 

# STRING ("xorl") / 

	movl	$string_70,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L1082") / 

	jmp	L1082
# LABEL ("L1090") / 

L1090:

# DUP / 

	movl	%ebx,	%ecx
# STRING ("cmp") / 

	movl	$string_34,	%esi
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
# CJMP ("z", "L1083") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L1083
# DROP / 

# STRING ("cmpl") / 

	movl	$string_71,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# JMP ("L1082") / 

	jmp	L1082
# LABEL ("L1083") / 

L1083:

# FAIL ((59, 9), true) / 

	pushl	$19
	pushl	$119
	pushl	$string_16
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L1082") / 

	jmp	L1082
# LABEL ("L1082") / 

L1082:

# END / 

	movl	%ebx,	%eax
LLbinopString_238_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLbinopString_238_SIZE,	0

	.set	LSLbinopString_238_SIZE,	0

