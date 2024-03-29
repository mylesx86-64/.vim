" Vundle


set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" --- Load Plugins --- "
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'nerdtree'
    Plugin 'mylesx86-64/vim-smali'
    Plugin 'powerline'
    "Plugin 'vim-dispatch', {'git': 'https://github.com/tpope/vim-dispatch.git'}

call vundle#end()
filetype plugin indent on


" --- Plugin Specific Options --- "


" --- NERDTree --- "

    " Shortcut for stdin
    autocmd StdinReadPre * let s:std_in=1

    " auto open on `vim`
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    " auto open on `vim ./dir_name`
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | exe 'cd '.argv()[0] | endif
    
    " Toggle nerdtree with control-t
    map <C-t> :NERDTreeToggle<CR>

