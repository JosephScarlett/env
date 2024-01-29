sy match inm "\v<\d+>"
sy match dnm "\v<\d+\.\d*|\.\d+>" 
sy match enm "\v<\d+\.?\d+([Ee][\-+]?)?\d+>" contains=dnm
sy match xnm "\v<0x\x+([Pp]-?)?\x+>"
sy match bnm "\v<0b[01]+>"
sy match onm "\v<0o\o+>"

hi inm ctermfg=1
hi dnm ctermfg=2
hi enm ctermfg=3
hi xnm ctermfg=4
hi bnm ctermfg=5
hi onm ctermfg=6
