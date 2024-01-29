let loaded_matchparen=1
"COMMENT CFG
syn match lCmt "//.*$"
syn region bCmt start="/\*" end="\*/" contains=synCmt
syn keyword synCmt WORD contained

hi lCmt ctermfg=8
hi bCmt ctermfg=3
hi synCmt ctermfg=10

syn match cBrackets "[{}]"
highlight cBrackets ctermfg=5
syn match cBraces "\w\+\s*(\s*)" 
highlight cBraces ctermfg=3
syn match cEnd ";"
hi cEnd ctermfg=8
syn match cHash "#\w\+" 
syn match cAddr "&\w\+\s"
syn match cPtr "\*\w\+\s"
syn match cMem "-\+>" 
highlight cHash ctermfg=52
highlight cAddr ctermfg=38
highlight cPtr ctermfg=11
highlight cMem ctermfg=78
sy match ab "/\v\<ab\>(\_.*\/)/s+1/()"
hi ab ctermfg=88

syn match cDecimal "\v<\d+>"
syn match cSciE "\v[eE][\-+]?\d+" contained
syn match cFloat "\v<\d+\.\d*|\.\d+>" contains=cSciE
hi cDecimal ctermfg=62
hi cSciE ctermfg=61
hi cFloat ctermfg=74

"CONTROL CFG
"sy region pPa [()] contained
hi pPa ctermfg=23
sy keyword wIf if contained
sy match wEi "/else/\+\s\/if/" contained
syn keyword wEl else contained
sy keyword wSw switch
sy keyword wCa case contained
sy keyword wFr for
sy keyword wWh while 
sy keyword wDo do contained

syn region pIf start=/if(/ms=e+1 end=/)/me=s-1
syn match pFr "\v%(\s*for)\zs\s*\(" 
syn region pWh matchgroup=pWh start=/while(/ms=e+1 end=/)/me=s+1 contains=cWn
syn match pDo "\v%(\s*do)\zs\s*\(" containedin=wDo
syn match pSw  "\%(\/switch\s*\)\zs(\s*\%([^)]\+\)\s*)\ze" containedin=wSw
syn match pEi "\v%(\s*else\s*if)\zs\s*\(" containedin=wEi
syn region cWn start=/(/ end=/)/ contained transparent
hi cWn ctermfg=22

hi wIf ctermfg=209 
hi wEi ctermfg=210
hi wEl ctermfg=211
hi wSw ctermfg=36
hi wCa ctermfg=37
hi wFr ctermfg=62
hi wWh ctermfg=55
hi wDo ctermfg=54

hi pIf ctermfg=114
hi pEi ctermfg=215
hi pSw ctermfg=43
hi pFr ctermfg=68
hi pWh ctermfg=61
