"enable vim-pathogen
runtime /User/tkonick/.vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on

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
:let g:tagbar_width = 30
:let g:NERDTreeWinSize = 30
:inoremap <leader><c-u> <esc>viw<s-U><esc>i
:inoremap <leader>jk <esc>

:nnoremap <leader><c-u> viw<s-U>
:nnoremap <leader>ev :vsplit /etc/vimrc<cr>
:nnoremap <leader><M-n> <C-w>w
:nnoremap <leader>sv :source /etc/vimrc<cr>
:nnoremap <leader>n :set tabstop=4 expandtab<cr>

:onoremap p i(

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
