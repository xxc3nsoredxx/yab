" Written by: xxc3nsoredxx
" Some of the code is based on code from the plugin 'bufpos' found here:
" http://www.vim.org/scripts/script.php?script_id=1836
"
" To use your own keymapping, add the following line to .vimrc before the
" custom keymap:
" let g:yab_key_override = 1

autocmd VimEnter * call YabInit ()

" Function to initialize yab - called on vim startup
function! YabInit ()
    " Maps the keys if yab_key_override isn't set
    if !exists ("g:yab_key_override")
        " Map M-# to switch to buffer
        for cx in range (1, 9)
            exec "nnoremap <M-".cx."> :call YabSwitch (".cx.")<CR>"
        endfor
        exec "nnoremap <M-0> :call YabSwitch (10)<CR>"

        " Map F1 to add buffer
        exec "nnoremap <F1> :call YabAdd ()<CR>"
    endif
endfunction

" Function to switch to buffer buf_num
" Called by M-# or overrided key
function! YabSwitch (buf_num)
    " Don't switch if current buffer
    if a:buf_num == bufnr ("%")
        echo "Current Buffer"
    else
        " Switch if buffer exists at position buf_num
        if buflisted (a:buf_num)
            exec ":b".a:buf_num
        else
            echo "No buffer at position ".a:buf_num
        endif
    endif
endfunction

" Function to add a buffer if there are < 10
" Called by F1
function! YabAdd ()
    let pos = -1

    " Find the first open buffer
    for cx in range (1, 10)
        if !buflisted (cx)
            let pos = cx
            echo "Open buffer at position ".pos
            if cx >= bufnr ("$")
                echo "Buffer at last position"
            endif
            break
        endif
    endfor

    " Error if no open buffer found
    if pos == -1
        echohl ErrorMsg
        echo "No open buffers found."
        echohl None

        return
    endif
endfunction
