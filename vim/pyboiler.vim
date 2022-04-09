" Insert 
" #!/usr/bin/env python 
" # -*- coding: utf-8 -*-
"
" if __name__ == '__main__':
"
" for all *.py extension files

function! PyBoilerPlate()
    let dir = "/etc/pyboiler.txt"
    for line in readfile(dir, '', 10)
        put=line
    endfor
endfunction

:nnoremap <leader>c :call PyBoilerPlate()
