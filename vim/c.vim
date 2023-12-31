iab cm <ESC>A /*<CR>*/ <ESC>O
iab inc #include<.h><LEFT><LEFT><LEFT>
iab incu #include.h"<LEFT><LEFT><LEFT>
iab def #define
iab vmain void main()<ESC>A {<CR>}<ESC>O<TAB>
iab imain int main()<ESC>A {<CR>}<ESC>O<TAB>
iab ucc unsigned char
iab uii unsigned int
iab uss unsigned short
iab ull unsigned long
iab ulll unsigned long long
iab cucc (unsigned char)
iab cuii (unsigned int)
iab cuss (unsigned short)
iab cull (unsigned long)
iab culll (unsigned long long)

iab ss short
iab css (short)
iab p *
iab ret return
iab ii int
iab ll long
iab lll long long
iab ff float
iab dd double
iab cc char
iab vv void
iab cvv (void)

iab pf print("\n");<ESC>5hi
iab pfi print("%\n",);<ESC>8hi
iab sf scanf("%s",);<ESC>2hi
iab sfi scanf("%d",&);<ESC>2hi
iab rng (<a)&&(<a)<ESC>8hi
iab orng (<a)&&(>b)<ESC>8hi

iab bb <ESC>A {<CR>}<ESC>O
iab br {}<LEFT>
iab bc ()<LEFT>
iab if if()<LEFT>
iab ifb if(){<CR>}<ESC>O<TAB>
iab elif else if <ESC>A {<CR>}<ESC>O
iab else else{}<LEFT><LEFT>
iab swi switch(){<CR>case '': <CR>  break; <CR>default: <CR>}

iab ex extern
iab ve volatile
iab rr register
iab sc static
iab vuc volatile unsigned char
iab vui volatile unsigned int
iab sci static int

iab sof sizeof()<LEFT>
iab tdf typedef
iab inl inline
iab struc struct
iab struct struct{<CR>}<ESC>O<TAB>

iab iif #if
iab ifdef #ifdef
iab ifndef #ifndef
iab ielif #elif
iab elifdef #elifdef
iab elifndef #elifndef
iab ielse #else
iab endif #endif
iab prag #pragma

iab mat m[][] = {0};
iab arr a[] = {};

iab ib int8_t
iab ih int16_t
iab iw int32_t
iab idw int64_t
iab ub uint8_t
iab uh uint16_t
iab uw uint32_t
iab udw uint64_t

iab tera 1e12
iab giga 1e9
iab mega 1e6
iab kilo 1000
iab hect 100
iab mill 0.001
iab micr 0.0000001
iab nano 1e-9
iab pico 1e-12

iab w1 while(1);
iab wh while(){<CR>}<ESC>O<TAB>
iab dowh do{<CR>}while();<ESC>O<TAB>
iab fi for(;;);
iab ff for(a=0;a<b;a++){<CR>}<ESC>O<TAB>
iab fb for(a=0;a>b;a--){<CR>}<ESC>O<TAB>
iab fv for(; a!=0;a--){<CR>}<ESC>O<TAB>
iab fd for(a=;a!=0;a--){<CR>}<ESC>O<TAB>

iab .. -> 

syn region cQuotes start="\"" end="\""
syn region cQuote start="\'" end="\'"
syn match cInclude "#include\*s<\zs.\{-}\ze>" contains=cAngle,cHeader
syn match cAngle "[<>]" contained
syn match cHeader contained "\(\.\|/\)\w\+\.\w\+" contained
syn match cHeader "\v\w+\.h\b"
hi cComment ctermfg=8
hi cQuotes ctermfg=1
hi cQuote ctermfg=29
hi cHeader ctermfg=126
hi cAngle ctermfg=125
syn match cEnd ";"
hi cEnd ctermfg=8
syn match cBrackets "[{}]"
highlight cBrackets ctermfg=5
syn match cBraces "(\|)" 
highlight cBraces ctermfg=3

syn match cHash "#\w\+" 
highlight cHash ctermfg=52

syn match cAssign "[-+\^\\*/%|]="
syn match cAssign "<<=\|>>="
highlight cAssign ctermfg=14
syn match cBitwise "&"
syn match cBitwise "\~"
syn match cBitwise "|"
syn match cBitwise ">>"
syn match cBitwise "<<"
highlight cBitwise ctermfg=6
syn match cLogic "&&\|||\|!"
highlight cLogic ctermfg=214
syn match cCondition "?\|:"
highlight cCondition ctermfg=5
syn match cGreater "\(>=\|>\)"
highlight cGreater ctermfg=208
syn match cLesser "\(<=\|<\)"
highlight cLesser ctermfg=213

syn match cArith "\(++\|--\)"
highlight cArith ctermfg=12
syn match cEqual "==\|!="
highlight cEqual ctermfg=5
syn match cSlash "\\"

syn match cZro "\<0\>"
highlight cZro ctermfg=15
syn match cOne "\<1\>"
highlight cOne ctermfg=7
syn match cHex "\<0[xX]\zs[a-fA-f]\+\ze"
highlight cHex ctermfg=8
syn match cBin "\<0[bB]\zs[01]\+\ze"
highlight cBin ctermfg=8
syn match cOct "\<0[oO]\zs[0-7]\+\ze"
highlight cOct ctermfg=8
syn region cArray start="\[" end="\]"
highlight cArray ctermfg=7
syn match matrix2D "\[\]\[\]"
syn match matrix3D "\[\]\[\]\[\]"
highlight matrix2D ctermfg=green guifg=green
highlight matrix3D ctermfg=blue guifg=blue

syn keyword cMain main
highlight cMain ctermfg=88
syn keyword cExtern extern
syn keyword cMemory static register auto
syn keyword cVolati volatile
syn keyword cInt int long float double
syn keyword cChar char
hi cExtern ctermfg=40
hi cMemory ctermfg=90
hi cVolati ctermfg=184
hi cInt ctermfg=12
hi cChar ctermfg=72

syn match cDecimal "\v<\d+>"
syn match cSciE "\v[eE][\-+]?\d+" contained
syn match cFloat "\v<\d+\.\d*|\.\d+>" contains=cSciE
hi cDecimal ctermfg=62
hi cSciE ctermfg=61
hi cFloat ctermfg=74
syn keyword cFor for
syn keyword cWhile while do
syn keyword cIf if else
syn keyword cSwitch switch case

highlight cFor ctermfg=10
highlight cWhile ctermfg=99
highlight cIf ctermfg=3
highlight cSwitch ctermfg=5

syn keyword cStruct struct
syn keyword cEnum enum
syn keyword cUnion union
syn keyword cTypedef typedef
syn keyword cSizeof sizeof 
syn keyword cState continue goto break
highlight cStruct ctermfg=13
highlight cEnum ctermfg=202
highlight cUnion ctermfg=141
highlight cTypedef ctermfg=45
highlight cSizeof ctermfg=51
highlight cState ctermfg=42

syn match cAddr "&\w\+\s"
syn match cPtr "\*\w\+\s"
syn match cMem "->" contained
highlight cAddr ctermfg=3
highlight cPtr ctermfg=11
highlight cMem ctermfg=14

syn match cPreArr "a_\w+"
syn match cSufArr "\w\+-a"
syn match cPreMat "m_\w+"
syn match cSufMat "\w\+-m"

syn match cPreStr "str_\w+"
syn match cSufStr "\w\+-str"
syn match cPreQue "q_\w+"
syn match cSufQue "\w\+-q"

highlight cSlash ctermfg=5
highlight cPreArr ctermfg=8
highlight cSufArr ctermfg=8
