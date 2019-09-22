
" Go Edit Vim
nnoremap gev :e $HOME/.vim/vimrc<CR>

" Go Source Vim
nnoremap gsv :so $HOME/.vim/vimrc<CR>

" Stop going into Ex mode
map q: <Nop>
nnoremap Q <nop>

" Store swap files in fixed location, not current dir
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
