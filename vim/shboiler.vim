" Insert 
" #!/usr/bin/env bash
" for all *.sh extension files.

function! ShBoilerPlate()
    let dir = "/etc/shboiler.txt"
    for line in readfile(dir, '', 10)
        put=line
    endfor
endfunction

:nnoremap <leader>c :call ShBoilerPlate()<cr>
