autocmd VimEnter * call yab_init

function! yab_init ()
    if exists (g:yab_key_override)
        echo "Key override active"
        finish
    endif
endfunction

function! yab_switch (tab_num)
endfunction
