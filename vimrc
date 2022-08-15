" Import plugins 
call plug#begin('~/.vim/plugged')

" NERDTREE
Plug 'preservim/nerdtree'

" indentLine
Plug 'Yggdroot/indentLine'

" YouCompleteMe
Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 ./install.py --all'}

" Powerline
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

call plug#end()

" Set disable vi-cimpatibility
set nocompatible 

" Enable syntax 
syntax on

" Enable color scheme
if !has('gui_running')
    set t_Co=256
endif
colorscheme monokai

" Enable mouse support
set mouse=a

" Enable line number
set number

" Highlight current line 
set cursorline

" Show the current cursor status on status bar
set ruler

" Set hightlight search
set hlsearch 

" Enable smartcase search sensitivity
set ignorecase
set smartcase

" Indentation using spaces
" tabstop:      width of tab character
" softtabstop:  fine tunes the amount of whitespace to be added
" shiftwidth:   determines the amount of whitespace to add in normal mode
" expandtab:    when on use space instead of tab
" textwidth:    text wrap width
" autoindent:   autoindent in new line
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set textwidth   =79
set expandtab
set autoindent

" Show the matching part of pairs [], {} and ()
set showmatch

" Set the max length of column
set colorcolumn=80 

" Set always show the statusline
set laststatus=2 

" Set always show the tab
set showtabline=2

" Set display space as · and EOS as $ 
set listchars=space:·,tab:▸\ ,eol:↲
nmap <F3> :set invlist <CR>
imap <F3> <ESC> :set invlist <CR> a

" Set fold
set foldmethod=syntax
set foldlevelstart=20
nmap <F4> za <CR>
imap <F4> <ESC> za <CR> a

" NERDTree
nmap <F2> :NERDTreeToggle<CR>

" YouCompleteMe 
set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion='<c-z>'
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1


" Remove trailing whitespace from Python files
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.f90 :%s/\s\+$//e
autocmd BufWritePre *.f95 :%s/\s\+$//e
autocmd BufWritePre *.for :%s/\s\+$//e

