autocmd VimEnter * call YabInit ()

function! YabInit ()
    let g:a = 1
    if exists ("g:yab_key_override")
        let g:a = g:a + 1
    endif
    let g:a = g:a + 1
endfunction

function! YabSwitch (tab_num)
endfunction
