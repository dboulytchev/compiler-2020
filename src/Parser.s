	.globl	global_parse

	.globl	initParser

	.data

string_2:	.string	"!!"

string_5:	.string	"!="

string_14:	.string	"%"

string_21:	.string	"%s at %d:%d\n"

string_3:	.string	"&&"

string_15:	.string	"("

string_16:	.string	")"

string_12:	.string	"*"

string_10:	.string	"+"

string_17:	.string	","

string_11:	.string	"-"

string_13:	.string	"/"

string_1:	.string	":="

string_0:	.string	";"

string_6:	.string	"<"

string_8:	.string	"<="

string_4:	.string	"=="

string_7:	.string	">"

string_9:	.string	">="

string_18:	.string	"Parser.lama"

string_20:	.string	"reference expected"

string_19:	.string	"value expected"

_init:	.int 0

	.section custom_data,"aw",@progbits

filler:	.fill	9, 4, 1

global_basic:	.int	1

global_exp:	.int	1

global_parse:	.int	1

global_primary:	.int	1

global_stElif:	.int	1

	.text

# PUBLIC ("initParser") / 

# PUBLIC ("global_parse") / 

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

# EXTERN ("Li__Infix_585861") / 

# EXTERN ("Lderef") / 

# EXTERN ("Lref") / 

# EXTERN ("LinitMatcher") / 

# EXTERN ("LgetCol") / 

# EXTERN ("LgetLine") / 

# EXTERN ("LmatchRegexp") / 

# EXTERN ("LmatchString") / 

# EXTERN ("LendOfMatcher") / 

# EXTERN ("LshowMatcher") / 

# EXTERN ("LcreateRegexp") / 

# EXTERN ("Lfix") / 

# EXTERN ("Li__Infix_35") / 

# EXTERN ("Li__Infix_36") / 

# EXTERN ("Lid") / 

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

# EXTERN ("global_lident") / 

# EXTERN ("global_end") / 

# EXTERN ("global_pos") / 

# EXTERN ("global_decimal") / 

# EXTERN ("global_kFor") / 

# EXTERN ("global_kUntil") / 

# EXTERN ("global_kRepeat") / 

# EXTERN ("global_kOd") / 

# EXTERN ("global_kDo") / 

# EXTERN ("global_kWhile") / 

# EXTERN ("global_kFi") / 

# EXTERN ("global_kElif") / 

# EXTERN ("global_kElse") / 

# EXTERN ("global_kThen") / 

# EXTERN ("global_kIf") / 

# EXTERN ("global_kSkip") / 

# EXTERN ("global_kWrite") / 

# EXTERN ("global_kRead") / 

# EXTERN ("Ls") / 

# EXTERN ("global_rFor") / 

# EXTERN ("global_rUntil") / 

# EXTERN ("global_rRepeat") / 

# EXTERN ("global_rOd") / 

# EXTERN ("global_rDo") / 

# EXTERN ("global_rWhile") / 

# EXTERN ("global_rFi") / 

# EXTERN ("global_rElif") / 

# EXTERN ("global_rElse") / 

# EXTERN ("global_rThen") / 

# EXTERN ("global_rIf") / 

# EXTERN ("global_rSkip") / 

# EXTERN ("global_rWrite") / 

# EXTERN ("global_rRead") / 

# EXTERN ("global_rLident") / 

# EXTERN ("global_rDecimal") / 

# EXTERN ("global_rWhiteSpace") / 

# EXTERN ("LgetLoc") / 

# EXTERN ("Llocated") / 

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

# EXTERN ("Lloc") / 

# EXTERN ("Ltoken") / 

# EXTERN ("Lmemo") / 

# EXTERN ("LinitOstap") / 

# EXTERN ("LlogOn") / 

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

# EXTERN ("Lloc") / 

# EXTERN ("Ltoken") / 

# EXTERN ("Lmemo") / 

# EXTERN ("LinitOstap") / 

# EXTERN ("LlogOn") / 

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

# EXTERN ("Lloc") / 

# EXTERN ("Ltoken") / 

# EXTERN ("Lmemo") / 

# EXTERN ("LinitOstap") / 

# EXTERN ("LlogOn") / 

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

# EXTERN ("Lloc") / 

# EXTERN ("Ltoken") / 

# EXTERN ("Lmemo") / 

# EXTERN ("LinitOstap") / 

# EXTERN ("LlogOn") / 

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

# EXTERN ("Lloc") / 

# EXTERN ("Ltoken") / 

# EXTERN ("Lmemo") / 

# EXTERN ("LinitOstap") / 

# EXTERN ("LlogOn") / 

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

# EXTERN ("Lloc") / 

# EXTERN ("Ltoken") / 

# EXTERN ("Lmemo") / 

# EXTERN ("LinitOstap") / 

# EXTERN ("LlogOn") / 

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

# EXTERN ("Lloc") / 

# EXTERN ("Ltoken") / 

# EXTERN ("Lmemo") / 

# EXTERN ("LinitOstap") / 

# EXTERN ("LlogOn") / 

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

# EXTERN ("Lloc") / 

# EXTERN ("Ltoken") / 

# EXTERN ("Lmemo") / 

# EXTERN ("LinitOstap") / 

# EXTERN ("LlogOn") / 

# LABEL ("initParser") / 

initParser:

# BEGIN ("initParser", 0, 0, []) / 

	movl	_init,	%eax
	test	%eax,	%eax
	jz	_continue
	ret
_continue:

	movl	$1,	_init
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LinitParser_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSinitParser_SIZE,	%ecx
	rep movsl	
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initLexer
	call	initList
	call	initFun
	call	initMatcher
	call	initRef
	call	initCollection
# LDA (Global ("primary")) / 

	leal	global_primary,	%ebx
# CLOSURE ("Lmemo", []) / 

	pushl	%ebx
	pushl	$Lmemo
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CLOSURE ("Llambda_0", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_0
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_36", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_36
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("stElif")) / 

	leal	global_stElif,	%ebx
# CLOSURE ("Lmemo", []) / 

	pushl	%ebx
	pushl	$Lmemo
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CLOSURE ("Llambda_1", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_1
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_36", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_36
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("basic")) / 

	leal	global_basic,	%ebx
# CLOSURE ("Lmemo", []) / 

	pushl	%ebx
	pushl	$Lmemo
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CLOSURE ("Llambda_2", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_2
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_36", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_36
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("exp")) / 

	leal	global_exp,	%ebx
# CLOSURE ("Lmemo", []) / 

	pushl	%ebx
	pushl	$Lmemo
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CLOSURE ("Llambda_3", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_3
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_36", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_36
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# LDA (Global ("parse")) / 

	leal	global_parse,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_4", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_4
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

# CONST (0) / 

	movl	$1,	%ebx
# END / 

	movl	%ebx,	%eax
LinitParser_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LinitParser_SIZE,	0

	.set	LSinitParser_SIZE,	0

# LABEL ("Llambda_4") / 

Llambda_4:

# BEGIN ("Llambda_4", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_4_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_4_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# SEXP ("Void", 0) / 

	movl	$12644932,	%ecx
	pushl	%ebx
	pushl	%ecx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALLC (1, true) / 

	movl	%ecx,	8(%ebp)
	movl	%ebx,	%edx
	movl	(%edx),	%eax
	movl	%ebp,	%esp
	popl	%ebp
	jmp	*%eax
# END / 

	movl	%ebx,	%eax
LLlambda_4_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_4_SIZE,	0

	.set	LSLlambda_4_SIZE,	0

# LABEL ("Llambda_3") / 

Llambda_3:

# BEGIN ("Llambda_3", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_3_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_3_SIZE,	%ecx
	rep movsl	
# LD (Global ("basic")) / 

	movl	global_basic,	%ebx
# CLOSURE ("Llambda_5_3", []) / 

	pushl	%ebx
	pushl	$Llambda_5_3
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Global ("basic")) / 

	movl	global_basic,	%ecx
# CLOSURE ("Llambda_6_3", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_6_3
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Lseq", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Lseq
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lalt", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Lalt
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALLC (1, true) / 

	movl	%ecx,	8(%ebp)
	movl	%ebx,	%edx
	movl	(%edx),	%eax
	movl	%ebp,	%esp
	popl	%ebp
	jmp	*%eax
# END / 

	movl	%ebx,	%eax
LLlambda_3_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_3_SIZE,	0

	.set	LSLlambda_3_SIZE,	0

# LABEL ("Llambda_6_3") / 

Llambda_6_3:

# BEGIN ("Llambda_6_3", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_6_3_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_6_3_SIZE,	%ecx
	rep movsl	
# STRING (";") / 

	movl	$string_0,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	call	Ls
	addl	$4,	%esp
	movl	%eax,	%ebx
# CLOSURE ("Llambda_7_4", [Arg (0)]) / 

	pushl	%ebx
	pushl	8(%ebp)
	pushl	$Llambda_7_4
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL ("Lseq", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lseq
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_6_3_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_6_3_SIZE,	0

	.set	LSLlambda_6_3_SIZE,	0

# LABEL ("Llambda_7_4") / 

Llambda_7_4:

# BEGIN ("Llambda_7_4", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_7_4_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_7_4_SIZE,	%ecx
	rep movsl	
# LD (Global ("exp")) / 

	movl	global_exp,	%ebx
# CLOSURE ("Llambda_8_5", [Access (0)]) / 

	pushl	%ebx
	pushl	4(%edx)
	pushl	$Llambda_8_5
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_64", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_7_4_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_7_4_SIZE,	0

	.set	LSLlambda_7_4_SIZE,	0

# LABEL ("Llambda_8_5") / 

Llambda_8_5:

# BEGIN ("Llambda_8_5", 1, 0, [Access (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_8_5_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_8_5_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_9_6", [Access (0); Arg (0)]) / 

	pushl	12(%ebp)
	pushl	4(%edx)
	pushl	$Llambda_9_6
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# END / 

	movl	%ebx,	%eax
LLlambda_8_5_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_8_5_SIZE,	0

	.set	LSLlambda_8_5_SIZE,	0

# LABEL ("Llambda_9_6") / 

Llambda_9_6:

# BEGIN ("Llambda_9_6", 1, 0, [Access (0); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_9_6_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_9_6_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# SEXP ("Void", 0) / 

	movl	$12644932,	%ecx
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
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# SEXP ("Seq", 2) / 

	movl	$184657,	%esi
	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_9_6_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_9_6_SIZE,	0

	.set	LSLlambda_9_6_SIZE,	0

# LABEL ("Llambda_5_3") / 

Llambda_5_3:

# BEGIN ("Llambda_5_3", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_5_3_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_5_3_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_5_3_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_5_3_SIZE,	0

	.set	LSLlambda_5_3_SIZE,	0

# LABEL ("Llambda_2") / 

Llambda_2:

# BEGIN ("Llambda_2", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_2_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_2_SIZE,	%ecx
	rep movsl	
# SEXP ("Right", 0) / 

	movl	$740586004,	%ebx
	pushl	%ebx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	movl	%eax,	%ebx
# STRING (":=") / 

	movl	$string_1,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Ls
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CLOSURE ("Llambda_10_10", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_10_10
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL (".array", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Lsingleton", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Lsingleton
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL (".array", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	movl	%eax,	%ebx
# SEXP ("Left", 0) / 

	movl	$9982356,	%ecx
	pushl	%ebx
	pushl	%ecx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CLOSURE ("Lbinop", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Lbinop
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# STRING ("!!") / 

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
# CALL ("Lsingleton", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Lsingleton
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("Lmap", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Lmap
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL (".array", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# SEXP ("Left", 0) / 

	movl	$9982356,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CLOSURE ("Lbinop", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$Lbinop
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# STRING ("&&") / 

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
# CALL ("Lsingleton", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-4(%ebp)
	call	Lsingleton
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
# CALL ("Lmap", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-4(%ebp)
	pushl	%edi
	call	Lmap
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL (".array", 2, false) / 

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
# SEXP ("Nona", 0) / 

	movl	$10548097,	%edi
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
# CLOSURE ("Lbinop", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Lbinop
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-4(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# STRING ("==") / 

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
# STRING ("!=") / 

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
# STRING ("<") / 

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
# STRING (">") / 

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
# STRING ("<=") / 

	movl	$string_8,	-24(%ebp)
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
# STRING (">=") / 

	movl	$string_9,	-28(%ebp)
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
	pushl	%edi
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-20(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-24(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-16(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-20(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-12(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-16(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
# CALL ("Lmap", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	Lmap
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
# CALL (".array", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-4(%ebp)
	pushl	%edi
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# SEXP ("Left", 0) / 

	movl	$9982356,	-4(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-4(%ebp)
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
# CLOSURE ("Lbinop", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Lbinop
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-8(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# STRING ("+") / 

	movl	$string_10,	-12(%ebp)
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
# STRING ("-") / 

	movl	$string_11,	-16(%ebp)
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
# CONST (0) / 

	movl	$1,	-20(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-24(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-16(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-20(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-12(%ebp)
# CALL ("Lmap", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	Lmap
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
# CALL (".array", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
# SEXP ("Left", 0) / 

	movl	$9982356,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
# CLOSURE ("Lbinop", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Lbinop
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-12(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# STRING ("*") / 

	movl	$string_12,	-16(%ebp)
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
# STRING ("/") / 

	movl	$string_13,	-20(%ebp)
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
# STRING ("%") / 

	movl	$string_14,	-24(%ebp)
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
	pushl	%edi
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-20(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-24(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-16(%ebp)
# CALL ("Lmap", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	call	Lmap
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-12(%ebp)
# CALL (".array", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
# CONST (0) / 

	movl	$1,	-12(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-16(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
# SEXP ("cons", 2) / 

	movl	$848787,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
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
# LD (Global ("primary")) / 

	movl	global_primary,	%ecx
# CALL ("Lexpr", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Lexpr
	addl	$8,	%esp
	movl	%eax,	%ebx
# CLOSURE ("Lid", []) / 

	pushl	%ebx
	pushl	$Lid
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALLC (1, false) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALLC (1, true) / 

	movl	%ecx,	8(%ebp)
	movl	%ebx,	%edx
	movl	(%edx),	%eax
	movl	%ebp,	%esp
	popl	%ebp
	jmp	*%eax
# END / 

	movl	%ebx,	%eax
LLlambda_2_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_2_SIZE,	36

	.set	LSLlambda_2_SIZE,	9

# LABEL ("Llambda_10_10") / 

Llambda_10_10:

# BEGIN ("Llambda_10_10", 3, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_10_10_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_10_10_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_11_12", [Arg (0); Arg (2); Arg (1)]) / 

	pushl	12(%ebp)
	pushl	16(%ebp)
	pushl	8(%ebp)
	pushl	$Llambda_11_12
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_10_10_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_10_10_SIZE,	0

	.set	LSLlambda_10_10_SIZE,	0

# LABEL ("Llambda_11_12") / 

Llambda_11_12:

# BEGIN ("Llambda_11_12", 1, 0, [Arg (0); Arg (2); Arg (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_11_12_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_11_12_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# SEXP ("Ref", 0) / 

	movl	$180550,	%esi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# SEXP ("Val", 0) / 

	movl	$196684,	%edi
	pushl	%edx
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
	popl	%edx
	movl	%eax,	%edi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	movl	%esi,	%edx
	call	*(%esi)
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# SEXP ("Assn", 2) / 

	movl	$7156942,	%edi
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
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# CALL ("LassertValue", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LassertValue
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_11_12_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_11_12_SIZE,	0

	.set	LSLlambda_11_12_SIZE,	0

# LABEL ("Llambda_1") / 

Llambda_1:

# BEGIN ("Llambda_1", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_1_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_1_SIZE,	%ecx
	rep movsl	
# LD (Global ("pos")) / 

	movl	global_pos,	%ebx
# CLOSURE ("Llambda_12_15", []) / 

	pushl	%ebx
	pushl	$Llambda_12_15
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALLC (1, true) / 

	movl	%ecx,	8(%ebp)
	movl	%ebx,	%edx
	movl	(%edx),	%eax
	movl	%ebp,	%esp
	popl	%ebp
	jmp	*%eax
# END / 

	movl	%ebx,	%eax
LLlambda_1_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_1_SIZE,	0

	.set	LSLlambda_1_SIZE,	0

# LABEL ("Llambda_12_15") / 

Llambda_12_15:

# BEGIN ("Llambda_12_15", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_12_15_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_12_15_SIZE,	%ecx
	rep movsl	
# LD (Global ("kElif")) / 

	movl	global_kElif,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_13_17", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_13_17
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_12_15_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_12_15_SIZE,	0

	.set	LSLlambda_12_15_SIZE,	0

# LABEL ("Llambda_13_17") / 

Llambda_13_17:

# BEGIN ("Llambda_13_17", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_13_17_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_13_17_SIZE,	%ecx
	rep movsl	
# LD (Global ("kThen")) / 

	movl	global_kThen,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_14_19", [Arg (0); Arg (0); Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	8(%ebp)
	pushl	8(%ebp)
	pushl	$Llambda_14_19
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_13_17_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_13_17_SIZE,	0

	.set	LSLlambda_13_17_SIZE,	0

# LABEL ("Llambda_14_19") / 

Llambda_14_19:

# BEGIN ("Llambda_14_19", 1, 0, [Arg (0); Arg (0); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_14_19_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_14_19_SIZE,	%ecx
	rep movsl	
# LD (Global ("kElse")) / 

	movl	global_kElse,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_15_21", [Access (2); Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	12(%ebp)
	pushl	12(%edx)
	pushl	$Llambda_15_21
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# LD (Global ("kFi")) / 

	movl	global_kFi,	%ecx
# CLOSURE ("Llambda_16_21", [Access (1); Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	12(%ebp)
	pushl	8(%edx)
	pushl	$Llambda_16_21
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Llift
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Global ("stElif")) / 

	movl	global_stElif,	%esi
# CLOSURE ("Llambda_17_21", [Access (0); Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	12(%ebp)
	pushl	4(%edx)
	pushl	$Llambda_17_21
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_124", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_14_19_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_14_19_SIZE,	0

	.set	LSLlambda_14_19_SIZE,	0

# LABEL ("Llambda_17_21") / 

Llambda_17_21:

# BEGIN ("Llambda_17_21", 1, 0, [Access (0); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_17_21_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_17_21_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_18_23", [Access (0); Access (1); Arg (0)]) / 

	pushl	12(%ebp)
	pushl	8(%edx)
	pushl	4(%edx)
	pushl	$Llambda_18_23
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# END / 

	movl	%ebx,	%eax
LLlambda_17_21_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_17_21_SIZE,	0

	.set	LSLlambda_17_21_SIZE,	0

# LABEL ("Llambda_18_23") / 

Llambda_18_23:

# BEGIN ("Llambda_18_23", 1, 0, [Access (0); Access (1); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_18_23_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_18_23_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# SEXP ("Val", 0) / 

	movl	$196684,	%ecx
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
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# LD (Arg (0)) / 

	movl	12(%ebp),	%edi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	movl	%esi,	%edx
	call	*(%esi)
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# SEXP ("If", 3) / 

	movl	$2246,	%edi
	pushl	%edx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_18_23_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_18_23_SIZE,	0

	.set	LSLlambda_18_23_SIZE,	0

# LABEL ("Llambda_16_21") / 

Llambda_16_21:

# BEGIN ("Llambda_16_21", 1, 0, [Access (1); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_16_21_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_16_21_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# SEXP ("Val", 0) / 

	movl	$196684,	%ecx
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
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
# SEXP ("Skip", 0) / 

	movl	$11842128,	%edi
	pushl	%edx
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
	popl	%edx
	movl	%eax,	%edi
# LD (Global ("pos")) / 

	movl	global_pos,	%eax
	movl	%eax,	-4(%ebp)
# CALL ("LassertVoid", 3, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	call	LassertVoid
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# SEXP ("If", 3) / 

	movl	$2246,	%edi
	pushl	%edx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_16_21_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_16_21_SIZE,	4

	.set	LSLlambda_16_21_SIZE,	1

# LABEL ("Llambda_15_21") / 

Llambda_15_21:

# BEGIN ("Llambda_15_21", 1, 0, [Access (2); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_15_21_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_15_21_SIZE,	%ecx
	rep movsl	
# LD (Global ("kFi")) / 

	movl	global_kFi,	%ebx
# CLOSURE ("Llambda_19_29", [Access (0); Access (1); Arg (0)]) / 

	pushl	%ebx
	pushl	12(%ebp)
	pushl	8(%edx)
	pushl	4(%edx)
	pushl	$Llambda_19_29
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_64", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_15_21_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_15_21_SIZE,	0

	.set	LSLlambda_15_21_SIZE,	0

# LABEL ("Llambda_19_29") / 

Llambda_19_29:

# BEGIN ("Llambda_19_29", 1, 0, [Access (0); Access (1); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_19_29_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_19_29_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# SEXP ("Val", 0) / 

	movl	$196684,	%ecx
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
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# LD (Arg (0)) / 

	movl	12(%ebp),	%edi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	movl	%esi,	%edx
	call	*(%esi)
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# SEXP ("If", 3) / 

	movl	$2246,	%edi
	pushl	%edx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_19_29_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_19_29_SIZE,	0

	.set	LSLlambda_19_29_SIZE,	0

# LABEL ("Llambda_0") / 

Llambda_0:

# BEGIN ("Llambda_0", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_0_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_0_SIZE,	%ecx
	rep movsl	
# LD (Global ("pos")) / 

	movl	global_pos,	%ebx
# CLOSURE ("Llambda_20_32", []) / 

	pushl	%ebx
	pushl	$Llambda_20_32
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Global ("lident")) / 

	movl	global_lident,	%ecx
# CLOSURE ("Llambda_21_32", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_21_32
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Global ("pos")) / 

	movl	global_pos,	%esi
# CLOSURE ("Llambda_22_32", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$Llambda_22_32
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Global ("pos")) / 

	movl	global_pos,	%edi
# CLOSURE ("Llambda_23_32", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_23_32
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-4(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-4(%ebp)
	pushl	%edi
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# LD (Global ("pos")) / 

	movl	global_pos,	%eax
	movl	%eax,	-4(%ebp)
# CLOSURE ("Llambda_24_32", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_24_32
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-8(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
# LD (Global ("pos")) / 

	movl	global_pos,	%eax
	movl	%eax,	-8(%ebp)
# CLOSURE ("Llambda_25_32", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_25_32
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-12(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
# LD (Global ("pos")) / 

	movl	global_pos,	%eax
	movl	%eax,	-12(%ebp)
# CLOSURE ("Llambda_26_32", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_26_32
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-16(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-12(%ebp)
# LD (Global ("pos")) / 

	movl	global_pos,	%eax
	movl	%eax,	-16(%ebp)
# CLOSURE ("Llambda_27_32", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_27_32
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-20(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-16(%ebp)
# LD (Global ("pos")) / 

	movl	global_pos,	%eax
	movl	%eax,	-20(%ebp)
# CLOSURE ("Llambda_28_32", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_28_32
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-24(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-20(%ebp)
# STRING ("(") / 

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
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	call	Ls
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-24(%ebp)
# LD (Global ("exp")) / 

	movl	global_exp,	%eax
	movl	%eax,	-28(%ebp)
# STRING (")") / 

	movl	$string_16,	-32(%ebp)
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
	movl	%eax,	-32(%ebp)
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	call	Ls
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-32(%ebp)
# CALL ("Linbr", 3, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-32(%ebp)
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	call	Linbr
	addl	$12,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-24(%ebp)
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-20(%ebp)
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-16(%ebp)
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-12(%ebp)
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-4(%ebp)
	pushl	%edi
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_124
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALLC (1, true) / 

	movl	%ecx,	8(%ebp)
	movl	%ebx,	%edx
	movl	(%edx),	%eax
	movl	%ebp,	%esp
	popl	%ebp
	jmp	*%eax
# END / 

	movl	%ebx,	%eax
LLlambda_0_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_0_SIZE,	32

	.set	LSLlambda_0_SIZE,	8

# LABEL ("Llambda_28_32") / 

Llambda_28_32:

# BEGIN ("Llambda_28_32", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_28_32_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_28_32_SIZE,	%ecx
	rep movsl	
# LD (Global ("kIf")) / 

	movl	global_kIf,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_29_34", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_29_34
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_28_32_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_28_32_SIZE,	0

	.set	LSLlambda_28_32_SIZE,	0

# LABEL ("Llambda_29_34") / 

Llambda_29_34:

# BEGIN ("Llambda_29_34", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_29_34_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_29_34_SIZE,	%ecx
	rep movsl	
# LD (Global ("kThen")) / 

	movl	global_kThen,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_30_36", [Arg (0); Arg (0); Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	8(%ebp)
	pushl	8(%ebp)
	pushl	$Llambda_30_36
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_29_34_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_29_34_SIZE,	0

	.set	LSLlambda_29_34_SIZE,	0

# LABEL ("Llambda_30_36") / 

Llambda_30_36:

# BEGIN ("Llambda_30_36", 1, 0, [Arg (0); Arg (0); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_30_36_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_30_36_SIZE,	%ecx
	rep movsl	
# LD (Global ("kElse")) / 

	movl	global_kElse,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_31_38", [Access (2); Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	12(%ebp)
	pushl	12(%edx)
	pushl	$Llambda_31_38
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# LD (Global ("kFi")) / 

	movl	global_kFi,	%ecx
# CLOSURE ("Llambda_32_38", [Access (1); Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	12(%ebp)
	pushl	8(%edx)
	pushl	$Llambda_32_38
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Llift
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Global ("stElif")) / 

	movl	global_stElif,	%esi
# CLOSURE ("Llambda_33_38", [Access (0); Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	12(%ebp)
	pushl	4(%edx)
	pushl	$Llambda_33_38
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALL ("Li__Infix_124", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_124", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_124
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_30_36_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_30_36_SIZE,	0

	.set	LSLlambda_30_36_SIZE,	0

# LABEL ("Llambda_33_38") / 

Llambda_33_38:

# BEGIN ("Llambda_33_38", 1, 0, [Access (0); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_33_38_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_33_38_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_34_40", [Access (0); Access (1); Arg (0)]) / 

	pushl	12(%ebp)
	pushl	8(%edx)
	pushl	4(%edx)
	pushl	$Llambda_34_40
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# END / 

	movl	%ebx,	%eax
LLlambda_33_38_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_33_38_SIZE,	0

	.set	LSLlambda_33_38_SIZE,	0

# LABEL ("Llambda_34_40") / 

Llambda_34_40:

# BEGIN ("Llambda_34_40", 1, 0, [Access (0); Access (1); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_34_40_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_34_40_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# SEXP ("Val", 0) / 

	movl	$196684,	%ecx
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
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# LD (Arg (0)) / 

	movl	12(%ebp),	%edi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	movl	%esi,	%edx
	call	*(%esi)
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# SEXP ("If", 3) / 

	movl	$2246,	%edi
	pushl	%edx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_34_40_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_34_40_SIZE,	0

	.set	LSLlambda_34_40_SIZE,	0

# LABEL ("Llambda_32_38") / 

Llambda_32_38:

# BEGIN ("Llambda_32_38", 1, 0, [Access (1); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_32_38_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_32_38_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# SEXP ("Val", 0) / 

	movl	$196684,	%ecx
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
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
# SEXP ("Skip", 0) / 

	movl	$11842128,	%edi
	pushl	%edx
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
	popl	%edx
	movl	%eax,	%edi
# LD (Global ("pos")) / 

	movl	global_pos,	%eax
	movl	%eax,	-4(%ebp)
# CALL ("LassertVoid", 3, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	call	LassertVoid
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# SEXP ("If", 3) / 

	movl	$2246,	%edi
	pushl	%edx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_32_38_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_32_38_SIZE,	4

	.set	LSLlambda_32_38_SIZE,	1

# LABEL ("Llambda_31_38") / 

Llambda_31_38:

# BEGIN ("Llambda_31_38", 1, 0, [Access (2); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_31_38_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_31_38_SIZE,	%ecx
	rep movsl	
# LD (Global ("kFi")) / 

	movl	global_kFi,	%ebx
# CLOSURE ("Llambda_35_46", [Access (0); Access (1); Arg (0)]) / 

	pushl	%ebx
	pushl	12(%ebp)
	pushl	8(%edx)
	pushl	4(%edx)
	pushl	$Llambda_35_46
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_64", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_31_38_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_31_38_SIZE,	0

	.set	LSLlambda_31_38_SIZE,	0

# LABEL ("Llambda_35_46") / 

Llambda_35_46:

# BEGIN ("Llambda_35_46", 1, 0, [Access (0); Access (1); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_35_46_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_35_46_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# SEXP ("Val", 0) / 

	movl	$196684,	%ecx
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
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# LD (Arg (0)) / 

	movl	12(%ebp),	%edi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	movl	%esi,	%edx
	call	*(%esi)
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# SEXP ("If", 3) / 

	movl	$2246,	%edi
	pushl	%edx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_35_46_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_35_46_SIZE,	0

	.set	LSLlambda_35_46_SIZE,	0

# LABEL ("Llambda_27_32") / 

Llambda_27_32:

# BEGIN ("Llambda_27_32", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_27_32_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_27_32_SIZE,	%ecx
	rep movsl	
# LD (Global ("kFor")) / 

	movl	global_kFor,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_36_50", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$Llambda_36_50
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_27_32_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_27_32_SIZE,	0

	.set	LSLlambda_27_32_SIZE,	0

# LABEL ("Llambda_36_50") / 

Llambda_36_50:

# BEGIN ("Llambda_36_50", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_36_50_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_36_50_SIZE,	%ecx
	rep movsl	
# STRING (",") / 

	movl	$string_17,	%ebx
	pushl	%edx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# CALL ("Ls", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Ls
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_37_52", [Arg (0); Access (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	4(%edx)
	pushl	12(%ebp)
	pushl	$Llambda_37_52
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_36_50_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_36_50_SIZE,	0

	.set	LSLlambda_36_50_SIZE,	0

# LABEL ("Llambda_37_52") / 

Llambda_37_52:

# BEGIN ("Llambda_37_52", 1, 0, [Arg (0); Access (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_37_52_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_37_52_SIZE,	%ecx
	rep movsl	
# STRING (",") / 

	movl	$string_17,	%ebx
	pushl	%edx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# CALL ("Ls", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Ls
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_38_54", [Access (0); Arg (0); Access (1)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%edx)
	pushl	12(%ebp)
	pushl	4(%edx)
	pushl	$Llambda_38_54
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_37_52_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_37_52_SIZE,	0

	.set	LSLlambda_37_52_SIZE,	0

# LABEL ("Llambda_38_54") / 

Llambda_38_54:

# BEGIN ("Llambda_38_54", 1, 0, [Access (0); Arg (0); Access (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_38_54_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_38_54_SIZE,	%ecx
	rep movsl	
# LD (Global ("kDo")) / 

	movl	global_kDo,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_39_56", [Access (0); Access (1); Arg (0); Access (2)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	12(%edx)
	pushl	12(%ebp)
	pushl	8(%edx)
	pushl	4(%edx)
	pushl	$Llambda_39_56
	pushl	$9
	call	Bclosure
	addl	$24,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_38_54_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_38_54_SIZE,	0

	.set	LSLlambda_38_54_SIZE,	0

# LABEL ("Llambda_39_56") / 

Llambda_39_56:

# BEGIN ("Llambda_39_56", 1, 0, [Access (0); Access (1); Arg (0); Access (2)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_39_56_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_39_56_SIZE,	%ecx
	rep movsl	
# LD (Global ("kOd")) / 

	movl	global_kOd,	%ebx
# CLOSURE ("Llambda_40_58", [Access (0); Access (1); Arg (0); Access (2); Access (3)]) / 

	pushl	%ebx
	pushl	16(%edx)
	pushl	12(%edx)
	pushl	12(%ebp)
	pushl	8(%edx)
	pushl	4(%edx)
	pushl	$Llambda_40_58
	pushl	$11
	call	Bclosure
	addl	$28,	%esp
	movl	%eax,	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_64", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_39_56_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_39_56_SIZE,	0

	.set	LSLlambda_39_56_SIZE,	0

# LABEL ("Llambda_40_58") / 

Llambda_40_58:

# BEGIN ("Llambda_40_58", 1, 0, [Access (0); Access (1); Arg (0); Access (2); Access (3)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_40_58_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_40_58_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# SEXP ("Void", 0) / 

	movl	$12644932,	%esi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# SEXP ("Val", 0) / 

	movl	$196684,	%edi
	pushl	%edx
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
	popl	%edx
	movl	%eax,	%edi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	movl	%esi,	%edx
	call	*(%esi)
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# LD (Access (2)) / 

	movl	12(%edx),	%edi
# SEXP ("Void", 0) / 

	movl	$12644932,	-4(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-4(%ebp)
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-4(%ebp)
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-4(%ebp)
	movl	%edi,	%edx
	call	*(%edi)
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# LD (Access (3)) / 

	movl	16(%edx),	%eax
	movl	%eax,	-4(%ebp)
# SEXP ("Void", 0) / 

	movl	$12644932,	-8(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-8(%ebp)
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	movl	-4(%ebp),	%edx
	movl	%edx,	%eax
	call	*(%eax)
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-4(%ebp)
# SEXP ("Seq", 2) / 

	movl	$184657,	-8(%ebp)
	pushl	%edx
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
	popl	%edx
	movl	%eax,	%edi
# SEXP ("While", 2) / 

	movl	$824218373,	-4(%ebp)
	pushl	%edx
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
	popl	%edx
	movl	%eax,	%esi
# SEXP ("Seq", 2) / 

	movl	$184657,	%edi
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
# LD (Access (4)) / 

	movl	20(%edx),	%esi
# CALL ("LassertVoid", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LassertVoid
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_40_58_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_40_58_SIZE,	8

	.set	LSLlambda_40_58_SIZE,	2

# LABEL ("Llambda_26_32") / 

Llambda_26_32:

# BEGIN ("Llambda_26_32", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_26_32_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_26_32_SIZE,	%ecx
	rep movsl	
# LD (Global ("kRepeat")) / 

	movl	global_kRepeat,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_41_62", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$Llambda_41_62
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_26_32_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_26_32_SIZE,	0

	.set	LSLlambda_26_32_SIZE,	0

# LABEL ("Llambda_41_62") / 

Llambda_41_62:

# BEGIN ("Llambda_41_62", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_41_62_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_41_62_SIZE,	%ecx
	rep movsl	
# LD (Global ("kUntil")) / 

	movl	global_kUntil,	%ebx
# LD (Global ("basic")) / 

	movl	global_basic,	%ecx
# CLOSURE ("Llambda_42_64", [Arg (0); Access (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	4(%edx)
	pushl	12(%ebp)
	pushl	$Llambda_42_64
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_41_62_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_41_62_SIZE,	0

	.set	LSLlambda_41_62_SIZE,	0

# LABEL ("Llambda_42_64") / 

Llambda_42_64:

# BEGIN ("Llambda_42_64", 1, 0, [Arg (0); Access (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_42_64_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_42_64_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_43_66", [Access (0); Arg (0); Access (1)]) / 

	pushl	8(%edx)
	pushl	12(%ebp)
	pushl	4(%edx)
	pushl	$Llambda_43_66
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# END / 

	movl	%ebx,	%eax
LLlambda_42_64_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_42_64_SIZE,	0

	.set	LSLlambda_42_64_SIZE,	0

# LABEL ("Llambda_43_66") / 

Llambda_43_66:

# BEGIN ("Llambda_43_66", 1, 0, [Access (0); Arg (0); Access (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_43_66_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_43_66_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# SEXP ("Void", 0) / 

	movl	$12644932,	%esi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# SEXP ("Val", 0) / 

	movl	$196684,	%edi
	pushl	%edx
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
	popl	%edx
	movl	%eax,	%edi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	movl	%esi,	%edx
	call	*(%esi)
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# SEXP ("Repeat", 2) / 

	movl	$739574081,	%edi
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
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# CALL ("LassertVoid", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LassertVoid
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_43_66_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_43_66_SIZE,	0

	.set	LSLlambda_43_66_SIZE,	0

# LABEL ("Llambda_25_32") / 

Llambda_25_32:

# BEGIN ("Llambda_25_32", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_25_32_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_25_32_SIZE,	%ecx
	rep movsl	
# LD (Global ("kWhile")) / 

	movl	global_kWhile,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_44_70", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$Llambda_44_70
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_25_32_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_25_32_SIZE,	0

	.set	LSLlambda_25_32_SIZE,	0

# LABEL ("Llambda_44_70") / 

Llambda_44_70:

# BEGIN ("Llambda_44_70", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_44_70_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_44_70_SIZE,	%ecx
	rep movsl	
# LD (Global ("kDo")) / 

	movl	global_kDo,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_45_72", [Arg (0); Access (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	4(%edx)
	pushl	12(%ebp)
	pushl	$Llambda_45_72
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_44_70_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_44_70_SIZE,	0

	.set	LSLlambda_44_70_SIZE,	0

# LABEL ("Llambda_45_72") / 

Llambda_45_72:

# BEGIN ("Llambda_45_72", 1, 0, [Arg (0); Access (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_45_72_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_45_72_SIZE,	%ecx
	rep movsl	
# LD (Global ("kOd")) / 

	movl	global_kOd,	%ebx
# CLOSURE ("Llambda_46_74", [Access (0); Arg (0); Access (1)]) / 

	pushl	%ebx
	pushl	8(%edx)
	pushl	12(%ebp)
	pushl	4(%edx)
	pushl	$Llambda_46_74
	pushl	$7
	call	Bclosure
	addl	$20,	%esp
	movl	%eax,	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Llift", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# CALL ("Li__Infix_64", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_45_72_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_45_72_SIZE,	0

	.set	LSLlambda_45_72_SIZE,	0

# LABEL ("Llambda_46_74") / 

Llambda_46_74:

# BEGIN ("Llambda_46_74", 1, 0, [Access (0); Arg (0); Access (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_46_74_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_46_74_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# SEXP ("Val", 0) / 

	movl	$196684,	%esi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# SEXP ("Void", 0) / 

	movl	$12644932,	%edi
	pushl	%edx
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
	popl	%edx
	movl	%eax,	%edi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	movl	%esi,	%edx
	call	*(%esi)
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# SEXP ("While", 2) / 

	movl	$824218373,	%edi
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
# LD (Access (2)) / 

	movl	12(%edx),	%esi
# CALL ("LassertVoid", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LassertVoid
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_46_74_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_46_74_SIZE,	0

	.set	LSLlambda_46_74_SIZE,	0

# LABEL ("Llambda_24_32") / 

Llambda_24_32:

# BEGIN ("Llambda_24_32", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_24_32_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_24_32_SIZE,	%ecx
	rep movsl	
# LD (Global ("kWrite")) / 

	movl	global_kWrite,	%ebx
# STRING ("(") / 

	movl	$string_15,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Ls
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Global ("exp")) / 

	movl	global_exp,	%esi
# STRING (")") / 

	movl	$string_16,	%edi
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
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Ls
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("Linbr", 3, false) / 

	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	call	Linbr
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CLOSURE ("Llambda_47_78", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$Llambda_47_78
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_24_32_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_24_32_SIZE,	0

	.set	LSLlambda_24_32_SIZE,	0

# LABEL ("Llambda_47_78") / 

Llambda_47_78:

# BEGIN ("Llambda_47_78", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_47_78_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_47_78_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_48_80", [Arg (0); Access (0)]) / 

	pushl	4(%edx)
	pushl	12(%ebp)
	pushl	$Llambda_48_80
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# END / 

	movl	%ebx,	%eax
LLlambda_47_78_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_47_78_SIZE,	0

	.set	LSLlambda_47_78_SIZE,	0

# LABEL ("Llambda_48_80") / 

Llambda_48_80:

# BEGIN ("Llambda_48_80", 1, 0, [Arg (0); Access (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_48_80_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_48_80_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# SEXP ("Val", 0) / 

	movl	$196684,	%esi
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	movl	%ecx,	%edx
	call	*(%ecx)
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# SEXP ("Write", 1) / 

	movl	$826840325,	%esi
	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# CALL ("LassertVoid", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LassertVoid
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_48_80_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_48_80_SIZE,	0

	.set	LSLlambda_48_80_SIZE,	0

# LABEL ("Llambda_23_32") / 

Llambda_23_32:

# BEGIN ("Llambda_23_32", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_23_32_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_23_32_SIZE,	%ecx
	rep movsl	
# LD (Global ("kRead")) / 

	movl	global_kRead,	%ebx
# STRING ("(") / 

	movl	$string_15,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Ls
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Global ("lident")) / 

	movl	global_lident,	%esi
# STRING (")") / 

	movl	$string_16,	%edi
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
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Ls
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("Linbr", 3, false) / 

	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	call	Linbr
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CLOSURE ("Llambda_49_84", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$Llambda_49_84
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_23_32_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_23_32_SIZE,	0

	.set	LSLlambda_23_32_SIZE,	0

# LABEL ("Llambda_49_84") / 

Llambda_49_84:

# BEGIN ("Llambda_49_84", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_49_84_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_49_84_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_50_86", [Arg (0); Access (0)]) / 

	pushl	4(%edx)
	pushl	12(%ebp)
	pushl	$Llambda_50_86
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# END / 

	movl	%ebx,	%eax
LLlambda_49_84_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_49_84_SIZE,	0

	.set	LSLlambda_49_84_SIZE,	0

# LABEL ("Llambda_50_86") / 

Llambda_50_86:

# BEGIN ("Llambda_50_86", 1, 0, [Arg (0); Access (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_50_86_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_50_86_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# SEXP ("Read", 1) / 

	movl	$11554884,	%esi
	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# CALL ("LassertVoid", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LassertVoid
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_50_86_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_50_86_SIZE,	0

	.set	LSLlambda_50_86_SIZE,	0

# LABEL ("Llambda_22_32") / 

Llambda_22_32:

# BEGIN ("Llambda_22_32", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_22_32_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_22_32_SIZE,	%ecx
	rep movsl	
# LD (Global ("kSkip")) / 

	movl	global_kSkip,	%ebx
# CLOSURE ("Llambda_51_90", [Arg (0)]) / 

	pushl	%ebx
	pushl	8(%ebp)
	pushl	$Llambda_51_90
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_64", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_22_32_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_22_32_SIZE,	0

	.set	LSLlambda_22_32_SIZE,	0

# LABEL ("Llambda_51_90") / 

Llambda_51_90:

# BEGIN ("Llambda_51_90", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_51_90_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_51_90_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# SEXP ("Skip", 0) / 

	movl	$11842128,	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (0)) / 

	movl	4(%edx),	%esi
# CALL ("LassertVoid", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LassertVoid
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_51_90_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_51_90_SIZE,	0

	.set	LSLlambda_51_90_SIZE,	0

# LABEL ("Llambda_21_32") / 

Llambda_21_32:

# BEGIN ("Llambda_21_32", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_21_32_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_21_32_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_52_94", [Arg (0)]) / 

	pushl	8(%ebp)
	pushl	$Llambda_52_94
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_21_32_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_21_32_SIZE,	0

	.set	LSLlambda_21_32_SIZE,	0

# LABEL ("Llambda_52_94") / 

Llambda_52_94:

# BEGIN ("Llambda_52_94", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_52_94_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_52_94_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Ref", 0) / 

	movl	$361101,	%edi
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
# CJMP ("nz", "L489") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L489
# LABEL ("L490") / 

L490:

# DROP / 

# JMP ("L488") / 

	jmp	L488
# LABEL ("L489") / 

L489:

# DROP / 

# DROP / 

# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# SEXP ("Ref", 1) / 

	movl	$180550,	%ecx
	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L485") / 

	jmp	L485
# LABEL ("L488") / 

L488:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Val", 0) / 

	movl	$393369,	%edi
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
# CJMP ("nz", "L493") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L493
# LABEL ("L494") / 

L494:

# DROP / 

# JMP ("L492") / 

	jmp	L492
# LABEL ("L493") / 

L493:

# DROP / 

# DROP / 

# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# SEXP ("Var", 1) / 

	movl	$196690,	%ecx
	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L485") / 

	jmp	L485
# LABEL ("L492") / 

L492:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Void", 0) / 

	movl	$25289865,	%edi
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
# CJMP ("nz", "L496") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L496
# LABEL ("L497") / 

L497:

# DROP / 

# JMP ("L486") / 

	jmp	L486
# LABEL ("L496") / 

L496:

# DROP / 

# DROP / 

# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# SEXP ("Var", 1) / 

	movl	$196690,	%ecx
	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# SEXP ("Ignore", 1) / 

	movl	$589095890,	%ecx
	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# JMP ("L485") / 

	jmp	L485
# LABEL ("L486") / 

L486:

# FAIL ((56, 63), true) / 

	pushl	$127
	pushl	$113
	pushl	$string_18
	pushl	%ebx
	call	Bmatch_failure
	addl	$12,	%esp
# JMP ("L485") / 

	jmp	L485
# LABEL ("L485") / 

L485:

# END / 

	movl	%ebx,	%eax
LLlambda_52_94_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_52_94_SIZE,	4

	.set	LSLlambda_52_94_SIZE,	1

# LABEL ("Llambda_20_32") / 

Llambda_20_32:

# BEGIN ("Llambda_20_32", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_20_32_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_20_32_SIZE,	%ecx
	rep movsl	
# LD (Global ("decimal")) / 

	movl	global_decimal,	%ebx
# CLOSURE ("Llambda_53_104", [Arg (0)]) / 

	pushl	%ebx
	pushl	8(%ebp)
	pushl	$Llambda_53_104
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL ("Li__Infix_64", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_20_32_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_20_32_SIZE,	0

	.set	LSLlambda_20_32_SIZE,	0

# LABEL ("Llambda_53_104") / 

Llambda_53_104:

# BEGIN ("Llambda_53_104", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_53_104_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_53_104_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_54_106", [Arg (0); Access (0)]) / 

	pushl	4(%edx)
	pushl	12(%ebp)
	pushl	$Llambda_54_106
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# END / 

	movl	%ebx,	%eax
LLlambda_53_104_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_53_104_SIZE,	0

	.set	LSLlambda_53_104_SIZE,	0

# LABEL ("Llambda_54_106") / 

Llambda_54_106:

# BEGIN ("Llambda_54_106", 1, 0, [Arg (0); Access (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_54_106_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_54_106_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# CALL ("LstringInt", 1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	call	LstringInt
	addl	$4,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# SEXP ("Const", 1) / 

	movl	$490530004,	%esi
	pushl	%edx
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# CALL ("LassertValue", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LassertValue
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_54_106_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_54_106_SIZE,	0

	.set	LSLlambda_54_106_SIZE,	0

# LABEL ("Lbinop") / 

Lbinop:

# BEGIN ("Lbinop", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLbinop_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLbinop_SIZE,	%ecx
	rep movsl	
# LD (Global ("pos")) / 

	movl	global_pos,	%ebx
# CLOSURE ("Llambda_55_110", [Arg (0)]) / 

	pushl	%ebx
	pushl	8(%ebp)
	pushl	$Llambda_55_110
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL ("Lseq", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Lseq
	addl	$8,	%esp
	movl	%eax,	%ebx
# CLOSURE ("Llambda_56_110", [Arg (0)]) / 

	pushl	%ebx
	pushl	8(%ebp)
	pushl	$Llambda_56_110
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
LLbinop_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLbinop_SIZE,	0

	.set	LSLbinop_SIZE,	0

# LABEL ("Llambda_56_110") / 

Llambda_56_110:

# BEGIN ("Llambda_56_110", 3, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_56_110_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_56_110_SIZE,	%ecx
	rep movsl	
# CLOSURE ("Llambda_57_112", [Access (0); Arg (0); Arg (2); Arg (1)]) / 

	pushl	16(%ebp)
	pushl	20(%ebp)
	pushl	12(%ebp)
	pushl	4(%edx)
	pushl	$Llambda_57_112
	pushl	$9
	call	Bclosure
	addl	$24,	%esp
	movl	%eax,	%ebx
	movl	4(%ebp),	%edx
# END / 

	movl	%ebx,	%eax
LLlambda_56_110_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_56_110_SIZE,	0

	.set	LSLlambda_56_110_SIZE,	0

# LABEL ("Llambda_57_112") / 

Llambda_57_112:

# BEGIN ("Llambda_57_112", 1, 0, [Access (0); Arg (0); Arg (2); Arg (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_57_112_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_57_112_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	12(%ebp),	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# SEXP ("Val", 0) / 

	movl	$196684,	%edi
	pushl	%edx
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
	popl	%edx
	movl	%eax,	%edi
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	movl	%esi,	%edx
	call	*(%esi)
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%esi
# LD (Access (2)) / 

	movl	12(%edx),	%edi
# SEXP ("Val", 0) / 

	movl	$196684,	-4(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-4(%ebp)
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	-4(%ebp)
# CALLC (1, false) / 

	pushl	%edx
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-4(%ebp)
	movl	%edi,	%edx
	call	*(%edi)
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	popl	%edx
	movl	%eax,	%edi
# SEXP ("Binop", 3) / 

	movl	$472179664,	-4(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$9
	call	Bsexp
	addl	$20,	%esp
	popl	%ebx
	popl	%edx
	movl	%eax,	%ecx
# LD (Access (3)) / 

	movl	16(%edx),	%esi
# CALL ("LassertValue", 3, true) / 

	pushl	%edx
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LassertValue
	addl	$12,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_57_112_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_57_112_SIZE,	4

	.set	LSLlambda_57_112_SIZE,	1

# LABEL ("Llambda_55_110") / 

Llambda_55_110:

# BEGIN ("Llambda_55_110", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_55_110_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_55_110_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CALL ("Ls", 1, false) / 

	pushl	%edx
	pushl	%ebx
	call	Ls
	addl	$4,	%esp
	popl	%edx
	movl	%eax,	%ebx
# CLOSURE ("Llambda_58_115", [Arg (0)]) / 

	pushl	%ebx
	pushl	12(%ebp)
	pushl	$Llambda_58_115
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_64", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_55_110_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_55_110_SIZE,	0

	.set	LSLlambda_55_110_SIZE,	0

# LABEL ("Llambda_58_115") / 

Llambda_58_115:

# BEGIN ("Llambda_58_115", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_58_115_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_58_115_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_58_115_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_58_115_SIZE,	0

	.set	LSLlambda_58_115_SIZE,	0

# LABEL ("Linbr") / 

Linbr:

# BEGIN ("Linbr", 3, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLinbr_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLinbr_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CLOSURE ("Llambda_59_118", [Arg (1); Arg (2)]) / 

	pushl	%ebx
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$Llambda_59_118
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# CALL ("Lseq", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lseq
	addl	$8,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLinbr_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLinbr_SIZE,	0

	.set	LSLinbr_SIZE,	0

# LABEL ("Llambda_59_118") / 

Llambda_59_118:

# BEGIN ("Llambda_59_118", 1, 0, [Arg (1); Arg (2)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_59_118_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_59_118_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CLOSURE ("Llambda_60_119", [Access (1)]) / 

	pushl	%ebx
	pushl	8(%edx)
	pushl	$Llambda_60_119
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Lseq", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Lseq
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_59_118_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_59_118_SIZE,	0

	.set	LSLlambda_59_118_SIZE,	0

# LABEL ("Llambda_60_119") / 

Llambda_60_119:

# BEGIN ("Llambda_60_119", 1, 0, [Access (1)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_60_119_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_60_119_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# CLOSURE ("Llambda_61_120", [Arg (0)]) / 

	pushl	%ebx
	pushl	12(%ebp)
	pushl	$Llambda_61_120
	pushl	$3
	call	Bclosure
	addl	$12,	%esp
	movl	%eax,	%ecx
	popl	%ebx
	movl	4(%ebp),	%edx
# CALL ("Li__Infix_64", 2, true) / 

	pushl	%edx
	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%edx
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_60_119_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_60_119_SIZE,	0

	.set	LSLlambda_60_119_SIZE,	0

# LABEL ("Llambda_61_120") / 

Llambda_61_120:

# BEGIN ("Llambda_61_120", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_61_120_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_61_120_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_61_120_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_61_120_SIZE,	0

	.set	LSLlambda_61_120_SIZE,	0

# LABEL ("LassertVoid") / 

LassertVoid:

# BEGIN ("LassertVoid", 3, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLassertVoid_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLassertVoid_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Void", 0) / 

	movl	$25289865,	%edi
	movl	$1,	-4(%ebp)
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
# CJMP ("nz", "L548") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L548
# LABEL ("L549") / 

L549:

# DROP / 

# JMP ("L547") / 

	jmp	L547
# LABEL ("L548") / 

L548:

# DROP / 

# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# JMP ("L544") / 

	jmp	L544
# LABEL ("L547") / 

L547:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Val", 0) / 

	movl	$393369,	%edi
	movl	$1,	-4(%ebp)
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
# CJMP ("nz", "L551") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L551
# LABEL ("L552") / 

L552:

# DROP / 

# JMP ("L550") / 

	jmp	L550
# LABEL ("L551") / 

L551:

# DROP / 

# DROP / 

# STRING ("value expected") / 

	movl	$string_19,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# CALL ("Lerror", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lerror
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L544") / 

	jmp	L544
# LABEL ("L550") / 

L550:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# STRING ("reference expected") / 

	movl	$string_20,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# CALL ("Lerror", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lerror
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L544") / 

	jmp	L544
# LABEL ("L544") / 

L544:

# END / 

	movl	%ebx,	%eax
LLassertVoid_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLassertVoid_SIZE,	4

	.set	LSLassertVoid_SIZE,	1

# LABEL ("LassertValue") / 

LassertValue:

# BEGIN ("LassertValue", 3, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLassertValue_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLassertValue_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Ref", 0) / 

	movl	$361101,	%edi
	movl	$1,	-4(%ebp)
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
# CJMP ("nz", "L561") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L561
# LABEL ("L562") / 

L562:

# DROP / 

# JMP ("L560") / 

	jmp	L560
# LABEL ("L561") / 

L561:

# DROP / 

# DROP / 

# STRING ("reference expected") / 

	movl	$string_20,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (2)) / 

	movl	16(%ebp),	%ecx
# CALL ("Lerror", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lerror
	addl	$8,	%esp
	movl	%eax,	%ebx
# JMP ("L557") / 

	jmp	L557
# LABEL ("L560") / 

L560:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Void", 0) / 

	movl	$25289865,	%edi
	movl	$1,	-4(%ebp)
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
# CJMP ("nz", "L566") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L566
# LABEL ("L567") / 

L567:

# DROP / 

# JMP ("L565") / 

	jmp	L565
# LABEL ("L566") / 

L566:

# DROP / 

# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# SEXP ("Ignore", 1) / 

	movl	$589095890,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# JMP ("L557") / 

	jmp	L557
# LABEL ("L565") / 

L565:

# DUP / 

	movl	%ebx,	%ecx
# DROP / 

# DROP / 

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# JMP ("L557") / 

	jmp	L557
# LABEL ("L557") / 

L557:

# END / 

	movl	%ebx,	%eax
LLassertValue_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLassertValue_SIZE,	4

	.set	LSLassertValue_SIZE,	1

# LABEL ("Lerror") / 

Lerror:

# BEGIN ("Lerror", 2, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLerror_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLerror_SIZE,	%ecx
	rep movsl	
# STRING ("%s at %d:%d\\n") / 

	movl	$string_21,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lfst", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lfst
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Arg (1)) / 

	movl	12(%ebp),	%edi
# CALL ("Lsnd", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Lsnd
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("Lfailure", 4, true) / 

	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lfailure
	addl	$16,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLerror_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLerror_SIZE,	0

	.set	LSLerror_SIZE,	0

