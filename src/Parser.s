	.globl	global_parse

	.globl	initParser

	.data

string_0:	.string	"!!"

string_3:	.string	"!="

string_12:	.string	"%"

string_1:	.string	"&&"

string_16:	.string	"("

string_17:	.string	")"

string_10:	.string	"*"

string_8:	.string	"+"

string_14:	.string	","

string_9:	.string	"-"

string_11:	.string	"/"

string_15:	.string	":="

string_13:	.string	";"

string_5:	.string	"<"

string_4:	.string	"<="

string_2:	.string	"=="

string_7:	.string	">"

string_6:	.string	">="

_init:	.int 0

	.section custom_data,"aw",@progbits

filler:	.fill	8, 4, 1

global_elif_st:	.int	1

global_exp:	.int	1

global_operations:	.int	1

global_parse:	.int	1

global_primary:	.int	1

global_statement:	.int	1

global_stmt:	.int	1

	.text

# PUBLIC ("initParser") / 

# PUBLIC ("global_parse") / 

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
	call	initLexer
	call	initList
	call	initFun
# LDA (Global ("operations")) / 

	leal	global_operations,	%ebx
# SEXP ("Left", 0) / 

	movl	$9982356,	%ecx
	pushl	%ebx
	pushl	%ecx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# STRING ("!!") / 

	movl	$string_0,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lbinop
	addl	$4,	%esp
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
# STRING ("&&") / 

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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Lbinop
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
# STRING ("==") / 

	movl	$string_2,	-4(%ebp)
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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-4(%ebp)
	call	Lbinop
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
# STRING ("!=") / 

	movl	$string_3,	-8(%ebp)
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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	call	Lbinop
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
# STRING ("<=") / 

	movl	$string_4,	-12(%ebp)
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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	call	Lbinop
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-12(%ebp)
# STRING ("<") / 

	movl	$string_5,	-16(%ebp)
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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-16(%ebp)
	call	Lbinop
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-16(%ebp)
# STRING (">=") / 

	movl	$string_6,	-20(%ebp)
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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-20(%ebp)
	call	Lbinop
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-20(%ebp)
# STRING (">") / 

	movl	$string_7,	-24(%ebp)
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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-24(%ebp)
	call	Lbinop
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
# STRING ("+") / 

	movl	$string_8,	-8(%ebp)
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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	call	Lbinop
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
# STRING ("-") / 

	movl	$string_9,	-12(%ebp)
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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	call	Lbinop
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-12(%ebp)
# CONST (0) / 

	movl	$1,	-16(%ebp)
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
# STRING ("*") / 

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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	call	Lbinop
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-12(%ebp)
# STRING ("/") / 

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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-16(%ebp)
	call	Lbinop
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-16(%ebp)
# STRING ("%") / 

	movl	$string_12,	-20(%ebp)
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
# CALL ("Lbinop", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-20(%ebp)
	call	Lbinop
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-20(%ebp)
# CONST (0) / 

	movl	$1,	-24(%ebp)
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
# STI / 

	movl	%ecx,	%eax
	movl	%eax,	(%ebx)
	movl	%eax,	%ebx
# DROP / 

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

# LDA (Global ("elif_st")) / 

	leal	global_elif_st,	%ebx
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

# LDA (Global ("stmt")) / 

	leal	global_stmt,	%ebx
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

# LDA (Global ("statement")) / 

	leal	global_statement,	%ebx
# CLOSURE ("Lmemo", []) / 

	pushl	%ebx
	pushl	$Lmemo
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
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
# LD (Global ("statement")) / 

	movl	global_statement,	%ecx
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
	.set	LinitParser_SIZE,	32

	.set	LSinitParser_SIZE,	8

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
# LD (Global ("stmt")) / 

	movl	global_stmt,	%ebx
# LD (Global ("stmt")) / 

	movl	global_stmt,	%ecx
# CLOSURE ("Llambda_5_2", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_5_2
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
LLlambda_4_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_4_SIZE,	0

	.set	LSLlambda_4_SIZE,	0

# LABEL ("Llambda_5_2") / 

Llambda_5_2:

# BEGIN ("Llambda_5_2", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_5_2_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_5_2_SIZE,	%ecx
	rep movsl	
# STRING (";") / 

	movl	$string_13,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	call	Ls
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Global ("statement")) / 

	movl	global_statement,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# CLOSURE ("Llambda_6_4", [Arg (0)]) / 

	pushl	%ebx
	pushl	8(%ebp)
	pushl	$Llambda_6_4
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
LLlambda_5_2_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_5_2_SIZE,	0

	.set	LSLlambda_5_2_SIZE,	0

# LABEL ("Llambda_6_4") / 

Llambda_6_4:

# BEGIN ("Llambda_6_4", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_6_4_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_6_4_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Arg (0)) / 

	movl	12(%ebp),	%ecx
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
LLlambda_6_4_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_6_4_SIZE,	0

	.set	LSLlambda_6_4_SIZE,	0

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
# LD (Global ("kSkip")) / 

	movl	global_kSkip,	%ebx
# SEXP ("Skip", 0) / 

	movl	$11842128,	%ecx
	pushl	%ebx
	pushl	%ecx
	pushl	$3
	call	Bsexp
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
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_64
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Global ("lident")) / 

	movl	global_lident,	%ecx
# CLOSURE ("Llambda_7_7", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_7_7
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
# LD (Global ("kRead")) / 

	movl	global_kRead,	%esi
# LD (Global ("lident")) / 

	movl	global_lident,	%edi
# CALL ("Linbr", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Linbr
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Llift
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
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
# CLOSURE ("Llambda_8_7", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$Llambda_8_7
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# LD (Global ("kWrite")) / 

	movl	global_kWrite,	%edi
# LD (Global ("exp")) / 

	movl	global_exp,	%eax
	movl	%eax,	-4(%ebp)
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-4(%ebp)
	call	Llift
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-4(%ebp)
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
# CLOSURE ("Llambda_9_7", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_9_7
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	-4(%ebp)
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-4(%ebp)
	pushl	%edi
	call	Li__Infix_64
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# LD (Global ("kIf")) / 

	movl	global_kIf,	%eax
	movl	%eax,	-4(%ebp)
# LD (Global ("exp")) / 

	movl	global_exp,	%eax
	movl	%eax,	-8(%ebp)
# CLOSURE ("Llambda_10_7", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_10_7
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
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-8(%ebp)
	call	Llift
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-8(%ebp)
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
# LD (Global ("kWhile")) / 

	movl	global_kWhile,	%eax
	movl	%eax,	-8(%ebp)
# LD (Global ("exp")) / 

	movl	global_exp,	%eax
	movl	%eax,	-12(%ebp)
# CLOSURE ("Llambda_11_7", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_11_7
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
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-12(%ebp)
	call	Llift
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-12(%ebp)
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
# LD (Global ("kRepeat")) / 

	movl	global_kRepeat,	%eax
	movl	%eax,	-12(%ebp)
# LD (Global ("statement")) / 

	movl	global_statement,	%eax
	movl	%eax,	-16(%ebp)
# CLOSURE ("Llambda_12_7", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_12_7
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
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-16(%ebp)
	call	Llift
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-16(%ebp)
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
# LD (Global ("kFor")) / 

	movl	global_kFor,	%eax
	movl	%eax,	-16(%ebp)
# LD (Global ("statement")) / 

	movl	global_statement,	%eax
	movl	%eax,	-20(%ebp)
# CLOSURE ("Llambda_13_7", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	$Llambda_13_7
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
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	pushl	-20(%ebp)
	call	Llift
	addl	$4,	%esp
	popl	%edi
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	-20(%ebp)
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
LLlambda_3_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_3_SIZE,	24

	.set	LSLlambda_3_SIZE,	6

# LABEL ("Llambda_13_7") / 

Llambda_13_7:

# BEGIN ("Llambda_13_7", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_13_7_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_13_7_SIZE,	%ecx
	rep movsl	
# STRING (",") / 

	movl	$string_14,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	call	Ls
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_14_9", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$Llambda_14_9
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
LLlambda_13_7_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_13_7_SIZE,	0

	.set	LSLlambda_13_7_SIZE,	0

# LABEL ("Llambda_14_9") / 

Llambda_14_9:

# BEGIN ("Llambda_14_9", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_14_9_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_14_9_SIZE,	%ecx
	rep movsl	
# STRING (",") / 

	movl	$string_14,	%ebx
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
# LD (Global ("statement")) / 

	movl	global_statement,	%ecx
# CLOSURE ("Llambda_15_11", [Access (0); Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	12(%ebp)
	pushl	4(%edx)
	pushl	$Llambda_15_11
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
LLlambda_14_9_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_14_9_SIZE,	0

	.set	LSLlambda_14_9_SIZE,	0

# LABEL ("Llambda_15_11") / 

Llambda_15_11:

# BEGIN ("Llambda_15_11", 1, 0, [Access (0); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_15_11_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_15_11_SIZE,	%ecx
	rep movsl	
# LD (Global ("kDo")) / 

	movl	global_kDo,	%ebx
# LD (Global ("statement")) / 

	movl	global_statement,	%ecx
# CLOSURE ("Llambda_16_13", [Access (0); Access (1); Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	12(%ebp)
	pushl	8(%edx)
	pushl	4(%edx)
	pushl	$Llambda_16_13
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
LLlambda_15_11_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_15_11_SIZE,	0

	.set	LSLlambda_15_11_SIZE,	0

# LABEL ("Llambda_16_13") / 

Llambda_16_13:

# BEGIN ("Llambda_16_13", 1, 0, [Access (0); Access (1); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_16_13_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_16_13_SIZE,	%ecx
	rep movsl	
# LD (Global ("kOd")) / 

	movl	global_kOd,	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# LD (Access (1)) / 

	movl	8(%edx),	%esi
# LD (Arg (0)) / 

	movl	12(%ebp),	%edi
# LD (Access (2)) / 

	movl	12(%edx),	%eax
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
LLlambda_16_13_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_16_13_SIZE,	8

	.set	LSLlambda_16_13_SIZE,	2

# LABEL ("Llambda_12_7") / 

Llambda_12_7:

# BEGIN ("Llambda_12_7", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_12_7_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_12_7_SIZE,	%ecx
	rep movsl	
# LD (Global ("kUntil")) / 

	movl	global_kUntil,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_17_17", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$Llambda_17_17
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
LLlambda_12_7_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_12_7_SIZE,	0

	.set	LSLlambda_12_7_SIZE,	0

# LABEL ("Llambda_17_17") / 

Llambda_17_17:

# BEGIN ("Llambda_17_17", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_17_17_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_17_17_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Arg (0)) / 

	movl	12(%ebp),	%ecx
# SEXP ("Repeat", 2) / 

	movl	$739574081,	%esi
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
LLlambda_17_17_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_17_17_SIZE,	0

	.set	LSLlambda_17_17_SIZE,	0

# LABEL ("Llambda_11_7") / 

Llambda_11_7:

# BEGIN ("Llambda_11_7", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_11_7_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_11_7_SIZE,	%ecx
	rep movsl	
# LD (Global ("kDo")) / 

	movl	global_kDo,	%ebx
# LD (Global ("statement")) / 

	movl	global_statement,	%ecx
# CLOSURE ("Llambda_18_21", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$Llambda_18_21
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
LLlambda_11_7_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_11_7_SIZE,	0

	.set	LSLlambda_11_7_SIZE,	0

# LABEL ("Llambda_18_21") / 

Llambda_18_21:

# BEGIN ("Llambda_18_21", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_18_21_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_18_21_SIZE,	%ecx
	rep movsl	
# LD (Global ("kOd")) / 

	movl	global_kOd,	%ebx
# LD (Access (0)) / 

	movl	4(%edx),	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
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
LLlambda_18_21_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_18_21_SIZE,	0

	.set	LSLlambda_18_21_SIZE,	0

# LABEL ("Llambda_10_7") / 

Llambda_10_7:

# BEGIN ("Llambda_10_7", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_10_7_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_10_7_SIZE,	%ecx
	rep movsl	
# LD (Global ("kThen")) / 

	movl	global_kThen,	%ebx
# LD (Global ("statement")) / 

	movl	global_statement,	%ecx
# CLOSURE ("Llambda_19_25", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$Llambda_19_25
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
LLlambda_10_7_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_10_7_SIZE,	0

	.set	LSLlambda_10_7_SIZE,	0

# LABEL ("Llambda_19_25") / 

Llambda_19_25:

# BEGIN ("Llambda_19_25", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_19_25_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_19_25_SIZE,	%ecx
	rep movsl	
# LD (Global ("elif_st")) / 

	movl	global_elif_st,	%ebx
# CLOSURE ("Llambda_20_27", [Access (0); Arg (0)]) / 

	pushl	%ebx
	pushl	12(%ebp)
	pushl	4(%edx)
	pushl	$Llambda_20_27
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
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
LLlambda_19_25_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_19_25_SIZE,	0

	.set	LSLlambda_19_25_SIZE,	0

# LABEL ("Llambda_20_27") / 

Llambda_20_27:

# BEGIN ("Llambda_20_27", 1, 0, [Access (0); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_20_27_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_20_27_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
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
LLlambda_20_27_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_20_27_SIZE,	0

	.set	LSLlambda_20_27_SIZE,	0

# LABEL ("Llambda_9_7") / 

Llambda_9_7:

# BEGIN ("Llambda_9_7", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_9_7_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_9_7_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
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
LLlambda_9_7_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_9_7_SIZE,	0

	.set	LSLlambda_9_7_SIZE,	0

# LABEL ("Llambda_8_7") / 

Llambda_8_7:

# BEGIN ("Llambda_8_7", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_8_7_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_8_7_SIZE,	%ecx
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
LLlambda_8_7_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_8_7_SIZE,	0

	.set	LSLlambda_8_7_SIZE,	0

# LABEL ("Llambda_7_7") / 

Llambda_7_7:

# BEGIN ("Llambda_7_7", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_7_7_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_7_7_SIZE,	%ecx
	rep movsl	
# STRING (":=") / 

	movl	$string_15,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	call	Ls
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	Llift
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# CLOSURE ("Llambda_21_35", [Arg (0)]) / 

	pushl	%ebx
	pushl	8(%ebp)
	pushl	$Llambda_21_35
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
LLlambda_7_7_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_7_7_SIZE,	0

	.set	LSLlambda_7_7_SIZE,	0

# LABEL ("Llambda_21_35") / 

Llambda_21_35:

# BEGIN ("Llambda_21_35", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_21_35_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_21_35_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Arg (0)) / 

	movl	12(%ebp),	%ecx
# SEXP ("Assn", 2) / 

	movl	$7156942,	%esi
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
LLlambda_21_35_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_21_35_SIZE,	0

	.set	LSLlambda_21_35_SIZE,	0

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
# LD (Global ("kElif")) / 

	movl	global_kElif,	%ebx
# LD (Global ("exp")) / 

	movl	global_exp,	%ecx
# CLOSURE ("Llambda_22_38", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_22_38
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
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_12462
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Global ("kElse")) / 

	movl	global_kElse,	%ecx
# LD (Global ("statement")) / 

	movl	global_statement,	%esi
# CLOSURE ("Llambda_23_38", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	$Llambda_23_38
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
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Llift
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Li__Infix_12462", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Li__Infix_12462
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# LD (Global ("kFi")) / 

	movl	global_kFi,	%esi
# SEXP ("Skip", 0) / 

	movl	$11842128,	%edi
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
# CALL ("Llift", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	Llift
	addl	$4,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CALL ("Li__Infix_64", 2, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Li__Infix_64
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
LLlambda_2_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_2_SIZE,	0

	.set	LSLlambda_2_SIZE,	0

# LABEL ("Llambda_23_38") / 

Llambda_23_38:

# BEGIN ("Llambda_23_38", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_23_38_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_23_38_SIZE,	%ecx
	rep movsl	
# LD (Global ("kFi")) / 

	movl	global_kFi,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
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
LLlambda_23_38_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_23_38_SIZE,	0

	.set	LSLlambda_23_38_SIZE,	0

# LABEL ("Llambda_22_38") / 

Llambda_22_38:

# BEGIN ("Llambda_22_38", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_22_38_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_22_38_SIZE,	%ecx
	rep movsl	
# LD (Global ("kThen")) / 

	movl	global_kThen,	%ebx
# LD (Global ("statement")) / 

	movl	global_statement,	%ecx
# CLOSURE ("Llambda_24_42", [Arg (0)]) / 

	pushl	%ebx
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$Llambda_24_42
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
LLlambda_22_38_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_22_38_SIZE,	0

	.set	LSLlambda_22_38_SIZE,	0

# LABEL ("Llambda_24_42") / 

Llambda_24_42:

# BEGIN ("Llambda_24_42", 1, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_24_42_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_24_42_SIZE,	%ecx
	rep movsl	
# LD (Global ("elif_st")) / 

	movl	global_elif_st,	%ebx
# CLOSURE ("Llambda_25_44", [Access (0); Arg (0)]) / 

	pushl	%ebx
	pushl	12(%ebp)
	pushl	4(%edx)
	pushl	$Llambda_25_44
	pushl	$5
	call	Bclosure
	addl	$16,	%esp
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
LLlambda_24_42_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_24_42_SIZE,	0

	.set	LSLlambda_24_42_SIZE,	0

# LABEL ("Llambda_25_44") / 

Llambda_25_44:

# BEGIN ("Llambda_25_44", 1, 0, [Access (0); Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_25_44_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_25_44_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Access (1)) / 

	movl	8(%edx),	%ecx
# LD (Arg (0)) / 

	movl	12(%ebp),	%esi
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
LLlambda_25_44_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_25_44_SIZE,	0

	.set	LSLlambda_25_44_SIZE,	0

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
# LD (Global ("operations")) / 

	movl	global_operations,	%ebx
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
LLlambda_1_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_1_SIZE,	0

	.set	LSLlambda_1_SIZE,	0

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
# LD (Global ("decimal")) / 

	movl	global_decimal,	%ebx
# CLOSURE ("Llambda_26_48", []) / 

	pushl	%ebx
	pushl	$Llambda_26_48
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
# LD (Global ("lident")) / 

	movl	global_lident,	%ecx
# CLOSURE ("Llambda_27_48", []) / 

	pushl	%ebx
	pushl	%ecx
	pushl	$Llambda_27_48
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
# LD (Global ("exp")) / 

	movl	global_exp,	%esi
# CALL ("Linbr", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Linbr
	addl	$4,	%esp
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
	.set	LLlambda_0_SIZE,	0

	.set	LSLlambda_0_SIZE,	0

# LABEL ("Llambda_27_48") / 

Llambda_27_48:

# BEGIN ("Llambda_27_48", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_27_48_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_27_48_SIZE,	%ecx
	rep movsl	
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
# END / 

	movl	%ebx,	%eax
LLlambda_27_48_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_27_48_SIZE,	0

	.set	LSLlambda_27_48_SIZE,	0

# LABEL ("Llambda_26_48") / 

Llambda_26_48:

# BEGIN ("Llambda_26_48", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_26_48_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_26_48_SIZE,	%ecx
	rep movsl	
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CALL ("LstringInt", 1, false) / 

	pushl	%ebx
	call	LstringInt
	addl	$4,	%esp
	movl	%eax,	%ebx
# SEXP ("Const", 1) / 

	movl	$490530004,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# END / 

	movl	%ebx,	%eax
LLlambda_26_48_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLlambda_26_48_SIZE,	0

	.set	LSLlambda_26_48_SIZE,	0

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
# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	call	Ls
	addl	$4,	%esp
	movl	%eax,	%ebx
# CLOSURE ("Llambda_28_54", [Arg (0)]) / 

	pushl	%ebx
	pushl	8(%ebp)
	pushl	$Llambda_28_54
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

# LABEL ("Llambda_28_54") / 

Llambda_28_54:

# BEGIN ("Llambda_28_54", 2, 0, [Arg (0)]) / 

	pushl	%edx
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLlambda_28_54_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_28_54_SIZE,	%ecx
	rep movsl	
# LD (Access (0)) / 

	movl	4(%edx),	%ebx
# LD (Arg (0)) / 

	movl	12(%ebp),	%ecx
# LD (Arg (1)) / 

	movl	16(%ebp),	%esi
# SEXP ("Binop", 3) / 

	movl	$472179664,	%edi
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
LLlambda_28_54_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	popl	%edx
	ret
	.set	LLlambda_28_54_SIZE,	0

	.set	LSLlambda_28_54_SIZE,	0

# LABEL ("Linbr") / 

Linbr:

# BEGIN ("Linbr", 1, 0, []) / 

	pushl	%ebp
	movl	%esp,	%ebp
	subl	$LLinbr_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLinbr_SIZE,	%ecx
	rep movsl	
# STRING ("(") / 

	movl	$string_16,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	call	Ls
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# STRING (")") / 

	movl	$string_17,	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Bstring
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Ls", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Ls
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL ("Lbypass", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	Lbypass
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
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
LLinbr_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	ret
	.set	LLinbr_SIZE,	0

	.set	LSLinbr_SIZE,	0

