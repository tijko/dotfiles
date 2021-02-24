" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim73/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

:syntax on

:set expandtab
:set tabstop=4
:set shiftwidth=4
:set hlsearch
:set fileformat=unix
:set relativenumber
<<<<<<< HEAD
:colorscheme desert 
=======
:set ruler
:colorscheme ron
>>>>>>> 5bb219022043083386a83e25979f507f7675938e

execute pathogen#infect()

:let mapleader = ","

:inoremap <leader><c-u> <esc>viw<s-U><esc>i
:inoremap <leader>jk <esc>

:nnoremap <leader><c-u> viw<s-U>
:nnoremap <leader>ev :vsplit /etc/vimrc<cr>
:nnoremap <leader>t :FileModTime()<cr>
:nnoremap <leader><M-n> <C-w>w
:nnoremap <leader>sv :source /etc/vimrc<cr>
:nnoremap <leader>n :set tabstop=8 noexpandtab<cr>

:onoremap p i(

:autocmd BufNewFile *.c :call CBoilerPlate()
:autocmd BufNewFile *.py :call PyBoilerPlate()
:autocmd BufNewFile *.sh :call ShBoilerPlate()

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
