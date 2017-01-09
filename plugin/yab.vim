autocmd VimEnter * call yab_init

function! YabInit ()
    if exists (g:yab_key_override)
        echo "Key override active"
        finish
    endif
endfunction

function! YabSwitch (tab_num)
endfunction
