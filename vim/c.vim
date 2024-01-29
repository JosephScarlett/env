sy region cQuotes start="\"" end="\""
sy region cQuote start="\'" end="\'"
sy match cEscseq /\\[nt]/ containedin=cQuotes
sy match cPerstr /%/ containedin=cQuotes
hi cEscseq ctermfg=23
hi cPerstr ctermfg=63

sy match cInclude "#include\*s<\zs.\{-}\ze>" contains=cAngle,cHeader
sy region cAngle start="\<" end="\>"
sy match cHeader "\(\.\|/\)\?\w\+\(\.\w\+\)\?" contained
sy match cHeader "\.\w\+" contained
sy match cHeader "\w\+\.h\>" containedin=ALLBUT,cQuotes,cComment
hi cComment ctermfg=8
hi cQuotes ctermfg=35
hi cQuote ctermfg=39
hi cHeader ctermfg=126
hi cAngle ctermfg=125

sy match cFunction "\w\+\ze\s*("
hi cFunction ctermfg=150
sy match cEnd ";"
hi cEnd ctermfg=8
sy match cBrackets "[{}]"
hi cBrackets ctermfg=5
sy match cBraces "(\|)" 
hi cBraces ctermfg=226

sy match cHash "#\w\+" 
hi cHash ctermfg=52
sy match cMod "%"
hi cMod ctermfg=63
sy match cComma ","
hi cComma ctermfg=214

sy match cAssign "[-+\^\\*/%|]="
sy match cAssign "<<=\|>>="
hi cAssign ctermfg=14
sy match cBitwise "&"
sy match cBitwise "\~"
sy match cBitwise "|"
sy match cBitwise ">>"
sy match cBitwise "<<"
hi cBitwise ctermfg=6
sy match cLogic "&&\|||\|!"
hi cLogic ctermfg=214
sy match cCondition "?\|:"
hi cCondition ctermfg=5
sy match cGreater "\(>=\|>\)"
hi cGreater ctermfg=208
sy match cLesser "\(<=\|<\)"
hi cLesser ctermfg=213

sy match cArith "++\|--" 
hi cArith ctermfg=12
sy match cEqual "==\|!=\|="
hi cEqual ctermfg=104
sy match cSlash "\\"

sy match cHex "\<0[xX]\zs[a-fA-f]\+\ze"
hi cHex ctermfg=8
sy match cBin "\<0[bB]\zs[01]\+\ze"
hi cBin ctermfg=8
sy match cOct "\<0[oO]\zs[0-7]\+\ze"
hi cOct ctermfg=8
sy region cArray start="\[" end="\]"
hi cArray ctermfg=24
sy match matrix2D "\[\]\[\]"
sy match matrix3D "\[\]\[\]\[\]"
hi matrix2D ctermfg=green guifg=green
hi matrix3D ctermfg=blue guifg=blue

sy keyword cMain main
hi cMain ctermfg=88
sy keyword cExtern extern
sy keyword cMemory static register auto
sy keyword cVolati volatile
sy keyword cInt int long float double
sy keyword cChar char
hi cExtern ctermfg=40
hi cMemory ctermfg=90
hi cVolati ctermfg=184
hi cInt ctermfg=12
hi cChar ctermfg=72

sy match cDecimal "\v<\d+>"
sy match cSciE "\v[eE][\-+]?\d+" contained
sy match cFloat "\v<\d+\.\d*|\.\d+>" contains=cSciE
hi cDecimal ctermfg=62
hi cSciE ctermfg=61
hi cFloat ctermfg=74
sy keyword cFor for
sy keyword cWhile while do
sy keyword cIf if else
sy keyword cSwitch switch case

hi cFor ctermfg=10
hi cWhile ctermfg=99
hi cIf ctermfg=3
hi cSwitch ctermfg=5

sy keyword cStruct struct
sy keyword cEnum enum
sy keyword cUnion union
sy keyword cTypedef typedef
sy keyword cSizeof sizeof 
sy keyword cState continue goto break
hi cStruct ctermfg=13
hi cEnum ctermfg=202
hi cUnion ctermfg=141
hi cTypedef ctermfg=45
hi cSizeof ctermfg=51
hi cState ctermfg=42

sy match cAddr "&\w\+\s"
sy match cPtr "\*\w\+\(\s\|\ze\\(\|\ze\[\|\ze,\|\ze;\|\ze)\)"
sy match cMem "->" contained
hi cAddr ctermfg=3

sy match cZro "\<0\>"
hi cPtr ctermfg=11
hi cMem ctermfg=14

sy match cPreArr "\<a_\w+"
sy match cSufArr "\w\+-a"
sy match cPreMat "\<m_\w+"
sy match cSufMat "\w\+-m"

sy match cPreFn "\<fn_\w+"
hi cPreFn ctermfg=150
sy match cPreStr "str_\w+"
sy match cSufStr "\w\+-str"
sy match cPreQue "\<q_\w+"
sy match cSufQue "\w\+-q"

hi cSlash ctermfg=5
hi cPreArr ctermfg=8
hi cSufArr ctermfg=8

sy keyword cUio printf fprintf sprintf snprintf wprintf fwprintf 
sy keyword cUio swprintf vprintf vfprintf vsprintf vsnprintf 
sy keyword cUio fgetc fgetwc fgets fgetws fputc fputwc getc putc 
sy keyword cUio fputs fputws getchar getwchar putchar putwchar 
sy keyword cUio puts ungetc ungetw
sy keyword cUio scanf fscanf sscanf wscanf fwscanf swscanf vscanf 
sy keyword cUio vfscanf vsscanf vwscanf vfwscanf vswscanf
hi cUio ctermfg=98

sy keyword cFil ftell ftello fseek fseeko fgetpos fsetpos rewind 
sy keyword cFil clearerr feof ferror remove rename tmpfile tmpnam
sy keyword cFil EOF BUFSIZ FILENAME_MAX FOPEN_MAX _IOFBF _IOLBF 
sy keyword cFil _IONBF L_tmpnam SEEK_CUR SEEK_END SEEK_SET TMP_MAXDD
sy keyword cFil fopen freopen fflush fclose setbuf setvbuf 
sy keyword cFil fwide fread fwrite
hi cFil ctermfg=93

sy keyword cStr strcpy strncpy strcat strncat strfrm strlen strcmp 
sy keyword cStr strncmp strcoll strchr strrchr strspn strcspn 
sy keyword cStr strpbrk strstr strtok strerror wcscpy wcsncpy 
sy keyword cStr wcscat wcsncat wcsxfrm wcslen wcscmp wcsncmp wcscol
sy keyword cStr wcschr wcsrchr wcsspn wcscspn wcspbrk wcsstr wcstok
sy keyword cStr memset memcpy memove memcmp memchr wmemset wmemcpy 
sy keyword cStr wmemmove wmemcmp wmemchr
sy keyword cStr mblen mbtowc wctomb mbstowcs wcstombs btowc wctob 
sy keyword cStr mbsinit mbrlen mbrtowc wcrtomb mbsrtowcs wcsrtombs 
sy keyword cStr mbrtoc8 c8rtomb 
sy keyword cStr atof atoi atol atoll strtof strtod strtold strtol 
sy keyword cStr strtoll strtoul strtoull wcstof wcstod wstold 
sy keyword cStr wcstol wcstoll wcstoul wcstoull
hi cStr ctermfg=91

sy keyword cCss wchar_t wint_t char8_t char16_t char32_t mbstate_t
sy keyword cCss uint8_t uint16_t uint32_t int8_t int16_t int32_t
hi cCss ctermfg=97

sy keyword cCha isalnum isalpha islower isupper isdigit isxdigit 
sy keyword cCha iscntrl isgraph isspace isblank isprint ispunct 
sy keyword cCha iswalnum iswalpha iswlower iswupper iswdigit 
sy keyword cCha iswxdigit iswcntrl iswgraph iswspace iswblank 
sy keyword cCha iswprint iswpunct iswctype tolower towlower toupper
sy keyword cCha towupper towctrans wctype wctrans
hi cCha ctermfg=95

sy keyword cMem malloc aligned_alloc realloc calloc free
hi cMem ctermfg=97

sy keyword cMath abs labs llabs fabs div ldiv lldiv fmod remainder 
sy keyword cMath remquo fma fmax fmin fdim nan nanf nanl exp exp2 
sy keyword cMath expm1 log log2 log10 log1p ilogb logb sqrt cbrt 
sy keyword cMath hypt pow
sy keyword cMath sin cos tan asin acos atan atan2 sinh cosh tanh 
sy keyword cMath asinh atanh acosh 
sy keyword cMath erf erfc lgamma tgamma cerf cerfc
sy keyword cMath ceil floor trunc round lround llround nearbyint 
sy keyword cMath rint lrint llrint 
sy keyword cMath frexp ldexp modf scalbn scalbln nextafter 
sy keyword cMath nexttoward copysign feclearexcept fegetenv 
sy keyword cMath fegetexceptflags feholdexcept feraiseexcept 
sy keyword cMath fesetenv fesetexceptionflag fesetround 
sy keyword cMath fetestexcept feupdateenv
sy keyword cMath fpclassify isfinite isinf isnan isnormal signbit 
sy keyword cMath cabs carg cimag creal conj cproj cexp clog csqrt 
sy keyword cMath cpow csin ccos ctan casin cacos catan csinh ccosh 
sy keyword cMath ctanh casinh cacosh catanh 
sy keyword cMath rand srand arc4random arc4random_uniform 
sy keyword cMath arc4random_buf arc4rand_stir
hi cMath ctermfg=79

sy keyword cTime difftime clock timespec_get asctime ctime
sy keyword cTime strftim strptime wcstime gmtime localtime mktime 
sy keyword cTime CLOCKS_PER_SEC TIME_UTC tm time_t clock_t timespec
hi cTime ctermfg=93

sy keyword cVara va_list va_start va_arg va_end va_copy
