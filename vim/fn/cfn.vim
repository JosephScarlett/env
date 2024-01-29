"Function sets for c

"MENU fnhdlr
function! GenMenu(usrdict)
  for key in keys(a:usrdict)
    echo key . "; " . a:usrdict[key]
  endfor
  let choice=input('set:')
  return choice
endfunction

