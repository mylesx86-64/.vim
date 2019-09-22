
" Quit all buffers with bq
function! CloseAll()
    NERDTreeClose()
    bufdo q
endfunction

command! WQ call CloseAll()
nnoremap <expr> <C-Q> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"


" Quit all buffers with control-q
nnoremap <C-q>q bufdo q

" Navigation with control-blah
nnoremap <C-h> <C-W><Left>
nnoremap <C-l> <C-W><Right>
nnoremap <C-j> <C-W><Down>
nnoremap <C-k> <C-W><Up>
