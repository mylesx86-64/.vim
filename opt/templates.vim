
function! _BufNewFile()
    au!
    " read in template files
    autocmd BufNewFile *.* silent! execute '0r $HOME/.vim/templates/skeleton.'.expand("<afile>:e")

    " parse special text in the templates after the read
    autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge
endfunction



if has("autocmd")
    augroup templates
        call _BufNewFile()
    augroup END
endif

