autocmd VimEnter * call YabInit ()

function! YabInit ()
    if !exists ("g:yab_key_override")
        for cx in range (1, 9)
            exec "nnoremap <M-".cx."> :call YabSwitch (".cx.")<CR>"
        endfor
        exec "nnoremap <M-0> :call YabSwitch (10)<CR>"
    endif
endfunction

function! YabSwitch (buf_num)
    if a:buf_num == bufnr ("%")
        echo "Current Buffer"
    else
        if buflisted (a:buf_num)
            exec ":b".a:buf_num."<CR>"
        else
            echo "No buffer at position ".a:buf_num
        endif
    endif
endfunction
