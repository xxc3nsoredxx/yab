autocmd VimEnter * call YabInit ()

function! YabInit ()
    if !exists ("g:yab_key_override")
        nnoremap <M-1> :b 1 <CR>
    endif
    finish
endfunction

function! YabSwitch (tab_num)
endfunction
