
function! Compiler()
    write
    !gcc % -o %:r
endfunction

function! Run()
    !./%:r
endfunction

command! ccr call Compiler()

