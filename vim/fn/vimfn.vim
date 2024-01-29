"VIM Functions

"Formats
function! FmtDict(lines)
  let fmtlns=[]
  for i in range(len(a:lines))
    let line=a:lines[i]
    let char=nr2char(97+i%26)
    let form="\\ '".char."':'".escape(line,"'")."',"
    call add(fmtlns,form)
  endfor
  return join(fmtlns,"\n")
endfunction

function! FmtList(lines)
    let fmtlns = map(copy(a:lines), {idx, val -> "'" . escape(val, "'") . "'"})
    let form = '[' . join(fmtlns, ', ') . ']'
    return form
endfunction

"VIM fn configuration ops
function! Format()
  let file=input('Enter file name: ')
  if !filereadable(file)
    echo "Not in dir" . file
    return 
  endif

  let lines=readfile(file)
  let format_out=FmtDict(lines)

  let set_cursor=getpos('.')
  call append(line('.'), split(format_out, '\n'))
  call setpos('.', set_cursor)
endfunction

function! Iformat()
  let form=input('SEL OPT: dic|lst: ')
  let user_input=input("User input space seperate words: ")
  let words=split(user_input)

  if form=='dic'
    let format=FmtDict(words)
  elseif form=='lst'
    let format=FmtList(words)
  else
    echo "INVALID SELECT"
    return
  endif

  let set_cursor=getpos('.')
  call append(line('.'), split(format, '\n'))
  call setpos('.', set_cursor)
endfunction

