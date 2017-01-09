autocmd VimEnter * call YabInit ()

function! YabInit ()
    if !exists ("g:yab_key_override")
        for cx in range (1, 9)
            exec "nnoremap <M-".cx."> :call YabSwitch (".cx.")<CR>"
        endfor
        exec "nnoremap <M-0> :call YabSwitch (10)<CR>"
    endif
endfunction

function! YabSwitch (tab_num)
    echo a:tab_num
endfunction
