let g:state=''

function! StateA()
    call Unset()
    source ~/.vim
    let g:state='A'
endfunction 

function! StateB()
    call Unset()
    source ~/.vim
    let g:state='B'
endfunction 

function! Unset()
    call ResetState()
    let g:state=''
endfunction 

