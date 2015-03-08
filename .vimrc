" My vim configure
" Author Elirex
" Date 2013/11/29


" auto load all plugins in vim bundle
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" The vim base set
set t_Co=256 "let vim support 256 colors
syntax on " in mac os system 'syntax' must set on
set fileencodings=utf-8,gbk,big5
set fileencoding=utf-8
set encoding=utf-8
set number " open line number
set guifont=Monaco:h14 " set gui vim font
set nobackup
set tabstop=4
set shiftwidth=4
set nocompatible " disable vi-compatibility
set vb t_vb= " No sound when enter error command
set hlsearch " open hightlight search
set incsearch
set laststatus=2 " always show the statusline
set showtabline=2 " always show the tab
set foldenable " enable code fold
set foldmethod=syntax "auto fold according to filetype
setlocal foldlevel=1 " set fold level
set foldlevelstart=99 " open file default not fold
" set path+=/usr/shar/glib-2.0/
" set path+=/usr/include/c++/4.6.3/

" No auto comment
autocmd FileType * setlocal formatoptions-=r

" set color scheme
" colorscheme desertEx
colorscheme monokai
" colorscheme molokai

" set indent
if has("automd")
	filetype plugin indent on
	augroup vimrcEx
		au!
		autocmd FileType text setlocal textwidth=78
		autocmd BufReadPost *
			\ if line("'\'") > 1 && line("'\'") <= line("$") |
			\ exe "normal! g`\"" |
			\ endif
	augroup END
else 
	set autoindent " always set autoindenting
endif

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS


" select ALL
" map <C-A> ggVG
" map ctrl+c and crtl+v
" noremap <C-c> y
" noremap <C-v> P


" Powerline
let g:Powerline_symbols='fancy'
"let g:Powerline_theme='solarized256' 
let g:Powerline_colorscheme='solarized256'
let g:Powerline_dividers_override=['>>', '>', '<<', '<']
let g:Powerline_mode_n = '  N  '
let g:Powerline_mode_i = '  I  '

" resize focused windoiw
nmap <F2> :let &winheight = &lines * 7 / 10<CR>

"NERDTree set
nmap<F6> :NERDTree<CR>
"let NERDTreeIgnore=['/.vim$','/~$'] " No show file type
let NERDTreeShowHidden=1 " show hide file
let NERDTreeSortOrder=['//$','/.cpp$','/.c$','/.h$', '*'] " Sort
let NERDTreeCaseSensitiveSort=0
let NERDTreeWinSize=30
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1

" Complete the parentheses
inoremap ( ()<LEFT>
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

