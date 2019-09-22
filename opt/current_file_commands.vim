
function! Abspath()
    return expand("%:p")
endfunction

function! FileName()
    return expand("%:tp")
endfunction

function! FileExt()
    return expand("%:e")
endfunction

" Write the current file and then execute `command`
function! WriteExecuteCommand(command)
    execute ':w'
    execute '!echo "WriteExecuteCommand - "' a:command ' && ' a:command
endfunction

" Call Python's Black formatting on the current file
function! CallBlackFormatting()
    let execCommand = "black %:p"
endfunction
command! BF call CallBlackFormatting()

" Execute the current file based on its file extension
function! WriteExecuteFile()
    let a:arg1 = get(a:, 1, 0)
    if a:arg1
        let execWith = a:arg1
    else
        if getline(1) =~ '^#!.*bin.*'
            let execWith = split(getline(1))[-1]
        else
            let execWith = &filetype
        endif

        " Special case to replace python with python3
        if execWith ==? "python"
            let execWith = execWith . "3"
        endif
    endif

    let cmd = execWith . " " . Abspath()
    call WriteExecuteCommand(cmd)
endfunction
command! WE call WriteExecuteFile()
"nnoremap EE :call WriteExecuteFile()<CR>

