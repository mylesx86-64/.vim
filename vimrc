" Populate a file without an extension:
" `:read ~/.vim/templates/skeleton.sh`
" ^ add the bash skeleton to the current file

" Could also use this loop, but decided against it so I can
"   have more control over files that need to be sourced in
"   a specific order
" for f in split(glob('~/.vim/opt/*.vim') '\n')
"   exe 'source' f
" endfor
source $HOME/.vim/opt/vundle.vim
source $HOME/.vim/opt/templates.vim
source $HOME/.vim/opt/buffer_handling.vim
source $HOME/.vim/opt/indent.vim
source $HOME/.vim/opt/meta.vim
source $HOME/.vim/opt/misc.vim
source $HOME/.vim/opt/performance.vim
source $HOME/.vim/opt/persistent_undo.vim
source $HOME/.vim/opt/search.vim
source $HOME/.vim/opt/text_rendering.vim
source $HOME/.vim/opt/user_interface.vim
source $HOME/.vim/opt/current_file_commands.vim

