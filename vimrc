let vimDir = '$HOME/.vim'
let $runtimepath.=','.vimDir

if has('persistent_undo')
    let undoDir = expand(vimDir . '/undo')
    let &undodir = undoDir
    set undofile
endif
