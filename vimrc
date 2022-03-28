" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim73/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

:syntax on

:set tabstop=4
:set shiftwidth=4
:set hlsearch
:set expandtab
:set fileformat=unix
:set number
:colorscheme desert 
:set clipboard=unnamed
:set ruler

:let mapleader = ","
:inoremap <leader><c-u> <esc>viw<s-U><esc>i
:inoremap <leader>jk <esc>

:nnoremap <leader><c-u> viw<s-U>
:nnoremap <leader>ev :vsplit /etc/vimrc<cr>
:nnoremap <leader><M-n> <C-w>w
:nnoremap <leader>sv :source /etc/vimrc<cr>
:nnoremap <leader>n :set tabstop=4 expandtab<cr>
