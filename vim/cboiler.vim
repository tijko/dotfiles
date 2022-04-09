" Insert 
" #include <stdio.h> 
" int main(int argc, char *argv[]) 
" { 
"     return 0; 
" } 
" for all *.c extension files.

function! CBoilerPlate()
    let dir = "/etc/cboiler.txt"
    for line in readfile(dir, '', 10)
        put=line
    endfor
endfunction

:nnoremap <leader>c :call CBoilerPlate()<cr>
