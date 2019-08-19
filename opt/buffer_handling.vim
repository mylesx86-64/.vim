
" Quit all buffers with bq
function! CloseAll()
    NERDTreeClose()
    bufdo q
endfunction

nnoremap <expr> <C-Q> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"


nnoremap <C-q>q bufdo q
nnoremap <C-h> <C-W><Left>
nnoremap <C-l> <C-W><Right>
nnoremap <C-j> <C-W><Down>
nnoremap <C-k> <C-W><Up>
