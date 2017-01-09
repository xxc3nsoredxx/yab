autocmd VimEnter * call YabInit ()

function! YabInit ()
    let a = 1
    if exists ("g:yab_key_override")
        let a = a + 1
    endif
    let a = a + 1
endfunction

function! YabSwitch (tab_num)
endfunction
