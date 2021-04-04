" Vim color file
" Maintainer: Stanislav Lechev [AngelFire] <af@mis.bg>
" Last Change: 2004/03/31
" URL: http://af.mis.bg/vim/af.vim
" ICQ: 2924004
" Info: based on desert and a little bit of gothic
" Version: 1.1

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="af"

hi User1 guibg=darkblue guifg=yellow
hi User2 guibg=darkblue guifg=lightblue
hi User3 guibg=darkblue guifg=red
hi User4 guibg=darkblue guifg=cyan
hi User5 guibg=darkblue guifg=lightgreen

"set statusline=%<%1*===\ %5*%f%1*%(\ ===\ %4*%h%1*%)%(\ ===\ %4*%m%1*%)%(\ ===\ %4*%r%1*%)\ ===%====\ %2*%b(0x%B)%1*\ ===\ %3*%l,%c%V%1*\ ===\ %5*%P%1*\ ===%0* laststatus=2
"set statusline=%<%8*===\ %8*%f%8*%(\ ===\ %8*%h%8*%)%(\ ===\ %8*%m%8*%)%(\ ===\ %8*%r%8*%)\ ===%====\ %8*%b(0x%B)%8*\ ===\ %8*%l,%c%V%8*\ ===\ %8*%P%8*\ ===%0* laststatus=2
"set statusline=%<%8*\ %8*%f%8*%(\ \ %8*%h%8*%)%(\ \ %8*%m%8*%)%(\ \ %8*%r%8*%)\ %=\ %8*%b(0x%B)%8*\ \ %8*%l,%c%V%8*\ \ %8*%P%8*\ %0* laststatus=2
set statusline=%<%8*\ %8*%f%8*%(\ \ %8*%h%8*%)%(\ \ %8*%m%8*%)%(\ \ %8*%r%8*%)\ %=\ %8*\ \ %8*%l,%c%V%8*\ \ %8*%P%8*\ %0* laststatus=2

"Numbers 
"amarillas:
"highlight LineNr     ctermfg=9 ctermbg=NONE guifg=#fff7bb gui=NONE
"grises
highlight LineNr     ctermfg=9 ctermbg=NONE guifg=#7a7a7a gui=NONE


hi Normal		guifg=#F6F3E8	guibg=NONE gui=NONE
"hi Normal		guifg=#dfdfdf	guibg=#000000

"hi Normal		guifg=#87dee0	guibg=#000000
"hi Normal		guifg=#98fb98	guibg=#000000

hi Cursor		guibg=khaki		guifg=slategrey
hi Comment		guifg=#808080
"hi Identifier	guifg=#98FB98
hi Identifier	guifg=#87def0
hi Constant		guifg=#FF99FF
"hi String		guifg=#87cee0
hi String		guifg=lightred
hi Character	guifg=#87cee0

"hi Statement	guifg=khaki
"hi Statement guifg=#fff7bb gui=bold
hi Statement guifg=#fff7bb gui=NONE


"hi PreProc		guifg=#ff99a4 gui=bold
hi PreProc		guifg=salmon

"hi Type			term=bold cterm=bold gui=bold guifg=lightgreen					gui=none
"hi Type			guifg=#b9f7c2 gui=bold
hi Type			guifg=#b9f7c2 gui=NONE

hi Todo			guifg=orangered	guibg=yellow2
hi Special		guifg=Orange
hi Visual		guifg=SkyBlue	guibg=grey60		gui=none
hi IncSearch	guifg=#ffff60	guibg=#0000ff		gui=none
hi Search		guifg=khaki		guibg=slategrey		gui=none
hi Ignore		guifg=grey40

hi VertSplit	guibg=#c2bfa5	guifg=grey50		gui=none
hi Folded		guibg=grey30	guifg=gold
hi FoldColumn	guibg=grey30	guifg=tan
hi ModeMsg		guifg=goldenrod
hi MoreMsg		guifg=SeaGreen

" Es la parte donde no hay texto todavia, donde aparece los ~.
hi NonText		guifg=LightBlue	guibg=NONE

hi Question		guifg=springgreen
hi SpecialKey	guifg=yellowgreen
hi StatusLineNC	guibg=#c2bfa5	guifg=grey50		gui=none
hi Title		guifg=indianred
hi WarningMsg	guifg=salmon


" these are from desert ... i didn't change it
" color terminal definitions
hi SpecialKey	 ctermfg=darkgreen
hi NonText	 cterm=bold ctermfg=darkblue
hi Directory	 ctermfg=darkcyan
hi ErrorMsg	 cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	 cterm=NONE ctermfg=yellow ctermbg=green
hi Search	 cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	 ctermfg=darkgreen
hi ModeMsg	 cterm=NONE ctermfg=brown
hi LineNr	 ctermfg=3
hi Question	 ctermfg=green
hi StatusLine	 cterm=bold,reverse
hi StatusLineNC  cterm=reverse
hi VertSplit	 cterm=reverse
hi Title	 ctermfg=5
hi Visual	 cterm=reverse
hi VisualNOS	 cterm=bold,underline
hi WarningMsg	 ctermfg=1
hi WildMenu	 ctermfg=0 ctermbg=3
hi Folded	 ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	 ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	 ctermbg=4
hi DiffChange	 ctermbg=5
hi DiffDelete	 cterm=bold ctermfg=4 ctermbg=6
hi DiffText	 cterm=bold ctermbg=1
hi Comment	 ctermfg=darkcyan
hi Constant	 ctermfg=brown
hi Special	 ctermfg=5
hi Identifier	 ctermfg=6
hi Statement	 ctermfg=3
hi PreProc	 ctermfg=5
hi Type		 ctermfg=2

hi Underlined	 cterm=underline ctermfg=5
hi Ignore	 cterm=bold ctermfg=7
hi Error	 cterm=bold ctermfg=7 ctermbg=1

" HTML-----
"doctype
highlight htmlComment          guifg=#8dd6f0    gui=NONE
"highlight htmlComment          guifg=#8dd6f0    gui=bold
"highlight htmlComment          guifg=#add8e6    gui=bold

"highlight Title          guifg=#fb6f7f   gui=bold
"highlight Title          guifg=#fb6f7f   gui=NONE
highlight Title          guifg=salmon   gui=underline

"hi htmlString guifg=lightred gui=bold
hi htmlString guifg=lightred gui=NONE

"hi htmlArg guifg=#b9f7c2 gui=bold
hi htmlArg guifg=#b9f7c2 gui=NONE

hi htmlTagName guifg=#fff7bb gui=NONE
"hi htmlTagName guifg=#fff7bb gui=bold


"---------------------------------------------

" cursor color numbers
"au CursorMoved * exe "highlight CursorLineNr guibg=#" . printf('%02x%02x%02x', 90 + line('.') * (255 - 90) / line('$'), 255 - line('.') * (255 - 90) / line('$'), 90)
"hi CursorLineNr   term=bold gui=bold guifg=black

hi CursorLineNr   term=bold gui=bold guifg=black guibg=#f5645a
"hi CursorLineNr   term=bold gui=bold guifg=red

hi CursorLine     guifg=none            guibg=NONE
" :set cursorline


"vim: sw=4
