" Summary:
" This is a dark 256-color scheme for vim with mild contrast and low 
" distraction.
"
" Description:
" This is a dark 256-color scheme with mild contrast and not so many colors.
" It is good for prolonged coding. This scheme is inspired by Lucius
" (vimscript #2536), and some colors here are directly copied.
"
" Screenshots:
" Java: http://imgur.com/KE7aL.png
" C: http://imgur.com/K5G5V.png
" Javascript with nerdtree: http://imgur.com/lSXx2.png
" Ruby with tagbar: http://imgur.com/NzPwu.png

" -----------------------------------------------------------------------------
" Name:         Church theme for vim
" Description:  A Dark Vim Colorscheme
" Author:       Guillermo Andres <memocampeon35@gmail.com>
" Website:      https://github.com/GuillermoGAndres
" License:      
" -----------------------------------------------------------------------------
" Installation:
" Copy the file to your vim colors directory and then do :color simple-dark.

" -----------------------------------------------------------------------------
" GUI color definitions
":so $VIMRUNTIME/syntax/hitest.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Theming
" Example
"hi LineNr term=bold cterm=bold ctermfg=2 gui=bold guifg=#ABA88B guibg=#232322

" Si es ajustado += set termguicolors , la terminal se convierte como si fuera
" gui y utiliza los cores guibg or guifg, sino estara en set notermguicolors y 
" usara los de term.
"
" guifg or guibg += puede especificar mas de 256 colores con nomenclatura #F3EFDE
" cterm += solo puede utilizar 8, 16, 256 colores. https://jonasjacek.github.io/colors/
" term y gui += underline, bold, normal, italic.

if !(&t_Co == 256 || has('gui_running'))
  finish
endif

" Init
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name="dartAtom"
set background=dark

" Peleta de colores 
" background:
" foregraund: 
" azul: #a2caeb, #8db7eb
" amarillo: #eedfad   
" naranga: 
" morado: #b7b8e6   
" comentarios: #8a8a8a   
" numbers: 
" hline: 


" General Colors
" #1B1C1F or #1d1e21
hi Normal       guifg=#d7d7d7   guibg=#1d1e21  ctermfg=251    ctermbg=235       gui=none      cterm=none
hi Comment      guifg=#8a8a8a   guibg=NONE      ctermfg=245    ctermbg=NONE      gui=italic      cterm=none
hi Constant     guifg=#eedfad   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=none      cterm=none
" #add8e6 or #93CFE3   
hi Statement    guifg=#93c4ff   guibg=NONE      ctermfg=110    ctermbg=NONE      gui=none      cterm=none
hi PreProc      guifg=#87afd7   guibg=NONE      ctermfg=110    ctermbg=NONE      gui=none      cterm=none
hi Type         guifg=#b7b8e6   guibg=NONE      ctermfg=152    ctermbg=NONE      gui=none      cterm=none
hi Identifier   guifg=#afd7d7   guibg=NONE      ctermfg=152    ctermbg=NONE      gui=none      cterm=none
hi Special      guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=none      cterm=none

" Text Markup
hi Underlined   guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
hi Error        guifg=#ff8787   guibg=NONE      ctermfg=210    ctermbg=NONE      gui=none      cterm=none
hi Todo         guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=none      cterm=none
hi MatchParen   guifg=fg        guibg=#5f8787   ctermfg=fg     ctermbg=66        gui=none      cterm=none
hi NonText      guifg=#585858   guibg=NONE      ctermfg=240    ctermbg=NONE      gui=none      cterm=none
hi SpecialKey   guifg=#585858   guibg=NONE      ctermfg=240    ctermbg=NONE      gui=none      cterm=none
hi Title        guifg=#d7d7af   guibg=NONE      ctermfg=187    ctermbg=NONE      gui=none      cterm=none

" Text Selection
hi Cursor       guifg=bg        guibg=fg        ctermfg=bg     ctermbg=fg        gui=none      cterm=none
hi CursorIM     guifg=bg        guibg=fg        ctermfg=bg     ctermbg=fg        gui=none      cterm=none
hi CursorColumn guifg=NONE      guibg=#2b2b2b   ctermfg=NONE   ctermbg=238       gui=none      cterm=none
hi CursorLine   guifg=NONE      guibg=#2b2b2b   ctermfg=NONE   ctermbg=238       gui=none      cterm=none
" hi Visual       guifg=NONE      guibg=#005f87   ctermfg=NONE   ctermbg=24        gui=none      cterm=none
hi Visual       guifg=NONE      guibg=#3c3f42   ctermfg=NONE   ctermbg=24        gui=none      cterm=none
hi VisualNOS    guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=underline cterm=underline
"hi IncSearch    guifg=bg        guibg=#87d7ff   ctermfg=bg     ctermbg=123       gui=none      cterm=none
hi IncSearch    guifg=NONE      guibg=#555555   ctermfg=bg     ctermbg=123       gui=none      cterm=none
hi Search       guifg=NONE      guibg=#555555   ctermfg=bg     ctermbg=221       gui=none      cterm=none
"hi Search       guifg=bg        guibg=#ffd787   ctermfg=bg     ctermbg=221       gui=none      cterm=none
 
" UI
" #121212 -> fg 
" #b2b2b2 -> #202020
"hi LineNr       guifg=#656666   guibg=bg   ctermfg=238    ctermbg=233       gui=none      cterm=none
hi LineNr       guifg=#555555   guibg=bg   ctermfg=238    ctermbg=233       gui=none      cterm=none
hi CursorLineNr guifg=#afafaf   guibg=#2b2b2b   ctermfg=245    ctermbg=bg        gui=none      cterm=none

hi Pmenu        guifg=fg   guibg=#202020 ctermfg=233    ctermbg=249       gui=none      cterm=none
hi PmenuSel     guifg=fg        guibg=#585858   ctermfg=fg     ctermbg=240       gui=none      cterm=none
hi PMenuSbar    guifg=#121212   guibg=#c6c6c6   ctermfg=233    ctermbg=251       gui=none      cterm=none
hi PMenuThumb   guifg=fg        guibg=#767676   ctermfg=fg     ctermbg=243       gui=none      cterm=none

" hi StatusLine   guifg=#121212   guibg=#b2b2b2   ctermfg=233    ctermbg=249       gui=none      cterm=none
" hi StatusLineNC guifg=#121212   guibg=#767676   ctermfg=233    ctermbg=243       gui=none      cterm=none
hi StatusLine   guifg=fg   guibg=#292929    ctermfg=233    ctermbg=249       gui=none      cterm=none
hi StatusLineNC guifg=fg   guibg=bg  ctermfg=233    ctermbg=243       gui=none      cterm=none

hi TabLine      guifg=fg   guibg=bg   ctermfg=233    ctermbg=249       gui=none      cterm=none
hi TabLineFill  guifg=#121212   guibg=bg   ctermfg=233    ctermbg=249       gui=none      cterm=none
hi TabLineSel   guifg=fg        guibg=#292929   ctermfg=fg     ctermbg=240       gui=none      cterm=none

hi VertSplit    guifg=#8a8a8a   guibg=bg   ctermfg=245    ctermbg=249       gui=none      cterm=none
hi Folded       guifg=fg        guibg=#585858   ctermfg=fg     ctermbg=240       gui=none      cterm=none
hi FoldColumn   guifg=fg        guibg=#585858   ctermfg=fg     ctermbg=240       gui=none      cterm=none

" Spelling
hi SpellBad     guisp=#ee0000                   ctermfg=fg     ctermbg=160       gui=undercurl cterm=undercurl
hi SpellCap     guisp=#eeee00                   ctermfg=bg     ctermbg=226       gui=undercurl cterm=undercurl
hi SpellRare    guisp=#ffa500                   ctermfg=bg     ctermbg=214       gui=undercurl cterm=undercurl
hi SpellLocal   guisp=#ffa500                   ctermfg=bg     ctermbg=214       gui=undercurl cterm=undercurl

" Diff
hi DiffAdd      guifg=fg        guibg=#405040   ctermfg=fg     ctermbg=22        gui=none      cterm=none
hi DiffChange   guifg=fg        guibg=#605040   ctermfg=fg     ctermbg=58        gui=none      cterm=none
hi DiffDelete   guifg=fg        guibg=#504040   ctermfg=fg     ctermbg=52        gui=none      cterm=none
hi DiffText     guifg=#e0b050   guibg=#605040   ctermfg=220    ctermbg=58        gui=none      cterm=none

" Misc
hi Directory    guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
hi ErrorMsg     guifg=#ff8787   guibg=NONE      ctermfg=210    ctermbg=NONE      gui=none      cterm=none
hi SignColumn   guifg=#afafaf   guibg=NONE      ctermfg=145    ctermbg=NONE      gui=none      cterm=none
hi MoreMsg      guifg=#87ffff   guibg=NONE      ctermfg=123    ctermbg=NONE      gui=none      cterm=none
hi ModeMsg      guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
hi Question     guifg=fg        guibg=NONE      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
hi WarningMsg   guifg=#d7af87   guibg=NONE      ctermfg=180    ctermbg=NONE      gui=none      cterm=none
hi WildMenu     guifg=NONE      guibg=#005f87   ctermfg=NONE   ctermbg=24        gui=none      cterm=none
hi ColorColumn  guifg=NONE      guibg=#303030   ctermfg=NONE   ctermbg=236       gui=none      cterm=none
hi Ignore       guifg=bg                        ctermfg=bg

" HTML 
"doctype
highlight htmlComment          guifg=#8db7eb   guibg=none    gui=none
highlight Title          guifg=fg gui=bold
" hi htmlString guifg=lightred gui=NONE
" hi htmlArg guifg=#b9f7c2 gui=NONE
" hi htmlTagName guifg=#fff7bb gui=NONE
hi htmlTag guifg=#8db7eb   gui=NONE
"hi htmlTagN guifg=#8db7eb   gui=NONE
hi htmlEndTag guifg=#8db7eb   gui=NONE
hi htmlComment	guifg=#8a8a8a   gui=NONE

hi cssUnitDecorators	guifg=fg   gui=NONE

" Multicursor
" hi MultiCursor    guifg=NONE        guibg=#005f87      ctermfg=fg     ctermbg=NONE      gui=none      cterm=none
let g:VM_Mono_hl   = 'Visual'
