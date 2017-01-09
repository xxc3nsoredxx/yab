autocmd VimEnter * call YabInit ()

function! YabInit ()
    echohl WarningMsg
    echo "Hello"
    echohl None
endfunction

function! YabSwitch (tab_num)
endfunction
