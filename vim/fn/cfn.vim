"Function sets for c

"MENU fnhdlr
function! GenMenu(usrdict)
  for key in keys(a:usrdict)
    echo key . "; " . a:usrdict[key]
  endfor
  let choice=input('set:')
  return choice
endfunction

function! InsNmd()
  let set_cursor=getpos('.')
  let usr_input=input('var:i=')
  let for_dict={
    \ 'a': 'for(int a=0;a<a1;a++)',
    \ 'b': 'for(int a=a0;a<a1;a++)',
    \ 'c': 'for(int a=a
