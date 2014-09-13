" Vim顏色配置
" Maintainer:   Mingbai <mbbill AT gmail DOT com>
" Last Change:  2006-12-24 20:09:09

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="desertEx"

hi Normal	guifg=gray guibg=black gui=none

" AlignCtrl default
" AlignCtrl =P0 guifg guibg gui
" Align

" highlight groups
hi Cursor       guifg=black          guibg=yellow   gui=none
hi ErrorMsg     guifg=white          guibg=red      gui=none
hi VertSplit    guifg=gray40         guibg=gray40   gui=none
hi Folded       guifg=DarkSlateGray3 guibg=grey30   gui=none
hi FoldColumn   guifg=tan            guibg=grey30   gui=none
hi IncSearch    guifg=#b0ffff        guibg=#2050d0
hi LineNr       guifg=burlywood3     gui=none
hi ModeMsg      guifg=SkyBlue        gui=none
hi MoreMsg      guifg=SeaGreen       gui=none
hi NonText      guifg=cyan           gui=none
hi Question     guifg=springgreen    gui=none
hi Search       guifg=gray80         guibg=#445599  gui=none
hi SpecialKey   guifg=cyan           gui=none
hi StatusLine   guifg=black          guibg=#c2bfa5  gui=bold
hi StatusLineNC guifg=grey           guibg=gray40   gui=none
hi Title        guifg=indianred      gui=none
hi Visual       guifg=gray17         guibg=tan1     gui=none
hi WarningMsg   guifg=salmon         gui=none
hi Pmenu        guifg=white          guibg=#445599  gui=none
hi PmenuSel     guifg=#445599        guibg=gray
hi WildMenu     guifg=gray           guibg=gray17   gui=none
hi MatchParen	guifg=cyan           guibg=NONE     gui=bold
hi DiffAdd      guifg=black          guibg=wheat1
hi DiffChange   guifg=black          guibg=skyblue1
hi DiffText     guifg=black          guibg=hotpink1  gui=none
hi DiffDelete   guibg=gray45         guifg=black     gui=none



" syntax highlighting groups
hi Comment      guifg=#87EB88     gui=italic
hi Constant     guifg=salmon         gui=none
hi Identifier   guifg=Skyblue        gui=none
hi Function     guifg=Skyblue        gui=none
hi Statement    guifg=#3799FF gui=none
hi PreProc      guifg=PaleVioletRed2 gui=none
hi Type         guifg=#3799FF           gui=none
hi Special      guifg=aquamarine2    gui=none
hi Ignore       guifg=grey40         gui=none
hi Todo         guifg=orangered      guibg=yellow2 gui=none

" color terminal definitions
hi SpecialKey   ctermfg=cyan
hi NonText      cterm=bold           ctermfg=cyan
hi Directory    ctermfg=darkcyan
hi ErrorMsg     cterm=bold           ctermfg=white        ctermbg=red
hi IncSearch    cterm=NONE           ctermfg=50   ctermbg=33
hi Search       cterm=NONE           ctermfg=grey     ctermbg=blue
hi MoreMsg      ctermfg=43
hi ModeMsg      cterm=NONE           ctermfg=33
hi LineNr       ctermfg=brown
hi Question     ctermfg=35
hi StatusLine   cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit    cterm=reverse
hi Title        ctermfg=203
hi Visual       cterm=reverse
hi VisualNOS    cterm=bold,underline
hi WarningMsg   ctermfg=196
hi WildMenu     ctermfg=0            ctermbg=3
hi Folded       ctermfg=darkgrey     ctermbg=NONE
hi FoldColumn   ctermfg=darkgrey     ctermbg=NONE
hi DiffAdd      ctermbg=4
hi DiffChange   ctermbg=5
hi DiffDelete   cterm=bold           ctermfg=4        ctermbg=6
hi DiffText     cterm=bold           ctermbg=1
hi Comment      ctermfg=46
hi Constant     ctermfg=167
hi Special      ctermfg=48
hi Identifier   ctermfg=6
hi Statement    ctermfg=39
hi PreProc      ctermfg=226
hi Type         ctermfg=39
hi Underlined   cterm=underline      ctermfg=5
hi Ignore       ctermfg=darkgrey
hi Error        cterm=bold           ctermfg=7        ctermbg=1
