" -----------------------------------------------------------------------------
" Name:         Liskov theme for vim
" Description:  A Dark Vim Colorscheme
" Author:       Guillermo Andres <memocampeon35@gmail.com>
" Website:      https://github.com/GuillermoGAndres
" License:      
" -----------------------------------------------------------------------------
"
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
" gui += puede especificar mas de 256 colores con nomenclatura #F3EFDE
"" term += solo puede utilizar 8, 16, 256 colores. https://jonasjacek.github.io/colors/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Background and foregraund
highlight Normal     ctermbg=NONE guifg=#d6d6d6 guibg=NONE
" Line numbers
highlight LineNr     ctermfg=9 ctermbg=NONE guifg=#F3EFDE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

"highlight CursorLineNr     guifg=7    guibg=8       gui=none
"highlight VertSplit        guifg=0    guibg=8       gui=none
highlight Statement        guifg=#FFF8DC    guibg=none    gui=none
"highlight Directory        guifg=4    guibg=none    gui=none
"highlight StatusLine       guifg=7    guibg=8       gui=none
"highlight StatusLineNC     guifg=7    guibg=8       gui=none
"highlight NERDTreeClosable guifg=2
"highlight NERDTreeOpenable guifg=8
highlight Comment          guifg=#add8e6    guibg=none    gui=italic
"highlight Constant         guifg=12   guibg=none    gui=none
"highlight Special          guifg=#add8e6    guibg=none    gui=none
"highlight Identifier       guifg=6    guibg=none    gui=none
"highlight PreProc          guifg=5    guibg=none    gui=none
highlight String           guifg=#CAB4CC   guibg=none    gui=none
"highlight Number           guifg=1    guibg=none    gui=none
highlight Function         guifg=#FFF8DC    guibg=none    gui=none
highlight Type              guifg=#BCEDDE    guibg=none    gui=none
"highlight SpecialKey              guifg=#add8e6    guibg=none    gui=none
highlight Title              guifg=#EFFBFF    guibg=none    gui=underline

" highlight WildMenu         guifg=0       guibg=80      gui=none
" highlight Folded           guifg=103     guibg=234     gui=none
" highlight FoldColumn       guifg=103     guibg=234     gui=none
" highlight DiffAdd          guifg=none    guibg=23      gui=none
" highlight DiffChange       guifg=none    guibg=56      gui=none
" highlight DiffDelete       guifg=168     guibg=96      gui=none
" highlight DiffText         guifg=0       guibg=80      gui=none
" highlight SignColumn       guifg=244     guibg=235     gui=none
" highlight Conceal          guifg=251     guibg=none    gui=none
" highlight SpellBad         guifg=168     guibg=none    gui=underline
" highlight SpellCap         guifg=80      guibg=none    gui=underline
" highlight Spellare        guifg=121     guibg=none    gui=underline
" highlight SpellLocal       guifg=186     guibg=none    gui=underline
" highlight Pmenu            guifg=251     guibg=234     gui=none
" highlight PmenuSel         guifg=0       guibg=111     gui=none
" highlight PmenuSbar        guifg=206     guibg=235     gui=none
" highlight PmenuThumb       guifg=235     guibg=206     gui=none
" highlight TabLine          guifg=244     guibg=234     gui=none
" highlight TablineSel       guifg=0       guibg=247     gui=none
" highlight TablineFill      guifg=244     guibg=234     gui=none
" highlight CursorColumn     guifg=none    guibg=236     gui=none
" highlight CursorLine       guifg=none    guibg=236     gui=none
" highlight ColorColumn      guifg=none    guibg=236     gui=none
" highlight Cursor           guifg=0       guibg=5       gui=none
" highlight htmlEndTag       guifg=114     guibg=none    gui=none
" highlight xmlEndTag        guifg=114     guibg=none    gui=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlight clear
"if exists("syntax_on")
"  syntax reset
"endif

"set background=dark
"set g:colors_name="liskov"
