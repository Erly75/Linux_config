let mapleader = " "

set nocompatible
syntax on
set mouse=a
set encoding=utf-8
set number
set relativenumber
set clipboard=unnamed
set showmatch
set laststatus=2

" tabuladores
set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
filetype indent on

" autocompletar
inoremap ( ()
inoremap [ []
inoremap { {}
inoremap " ""
inoremap ' ''


call plug#begin('~/.vim/plugged')

" plug para el arbol a la derecha
" combinacion de teclas - espacio n t -
Plug 'scrooloose/nerdtree'

" Para moverse entre las pantallas
" Ctrl + j o k
Plug 'christoomey/vim-tmux-navigator'

" Plug easymotion para buscar una palabra y saltar hasta ahi
" Espacio + s
Plug 'easymotion/vim-easymotion'

" Plug para coc, antes de eso instale nodejs
" permite agregar extensiones para completar en algunos lenguajes
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" configuracion para NerdTree
" espacio n t - para abrir -
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" Para vim-tmux-navigator solo se usa crtk y las teclas -hjkl-

" para easy-motion
nmap <Leader>s <Plug>(easymotion-s2)
