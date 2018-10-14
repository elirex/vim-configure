" My vim configure
" Author Elirex
" Date 2013/11/29

" auto load all plugins in vim bundle
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

" The vim base set

" Highlight
syntax enable " enable code highlight
syntax on



set t_Co=256 "let vim support 256 colors
set fileencodings=utf-8,gbk,big5
set fileencoding=utf-8
set encoding=utf-8
set number " open line number
set guifont=Monaco:h14 " set gui vim font
set nobackup
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
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
set colorcolumn=80 " sets the max lenght of line
set backspace=indent,eol,start
" set path+=/usr/shar/glib-2.0/
" set path+=/usr/include/c++/4.6.3/



" No auto comment
autocmd FileType * setlocal formatoptions-=r

" vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

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

autocmd BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType cpp set omnifunc=cppcomplete#CompleteCPP



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

" Cursor configure
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShap=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShap=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShap=1\x7"
	let &t_EI = "\<Esc>]50;CursorShap=0\x7"
endif
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" intendLine Setting
let g:indentLine_char = '|'

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<F4>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" ---------------------------- 
" Configure YouCompleteMe 
" ---------------------------- 
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming languang's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in strings
let g:ycm_python_binary_path = 'python'
map <F3> : YcmCompleter GoTo<CR>
