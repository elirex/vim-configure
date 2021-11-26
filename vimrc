" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" NERDTREE
Plug 'preservim/nerdtree'

" indentLine
Plug 'Yggdroot/indentLine'

" YouCompleteMe
Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 ./install.py --all'}

call plug#end()

" Enable code synctax
syntax enable " enable code highlight
syntax on

" Set disable vi-cimpatibility
set nocompatible 

" Enable line number
set number

set ruler


" Convert  tapb to space
set tabstop=4
set shiftwidth=4

" When 'softtabstop' is negative, the value of 'shiftwidth' is used.
set softtabstop=-1
set expandtab

" Set the max length of column
set colorcolumn=80 

" Set always show the statusline
set laststatus=2 

" Set always show the tab
set showtabline=2

" Set display space as · and EOS as $ 
set listchars+=space:·
nmap <F3> :set invlist <CR>
imap <F3> <ESC> :set invlist <CR> a

" Set fold
set foldmethod=syntax
set foldlevelstart=20
nmap <F4> za <CR>
imap <F4> <ESC> za <CR> a

" Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Set color scheme
colorscheme monokai

" Set hightlight search
set hlsearch 

" NERDTree
nmap <F2> :NERDTreeToggle<CR>

" YouCompleteMe 
set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion='<c-z>'
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1

