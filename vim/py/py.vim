
function! s:EnabledByDef(name)
    if !exists(a:name)
        let {a:name} = 1
    endif
endfunction

function! s:Enabled(name)
    return exists(a:name) && {a:name}
endfunction

syn keyword pyStatement break continue del return pass yield global assert lambda with
syn keyword pyStatement def class nextgroup=pyfn skipwhite
syn keyword pyIterators for while
syn keyword pyCondition if elif else
syn keyword pyInclude import
syn keyword pyException try except finally
syn keyword pyOperators and in is not or



