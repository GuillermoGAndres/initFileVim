"------ status line----------------
" Line blue
" https://www.rosipov.com/blog/status-bar-color-in-vim-terminal-mode/
" https://stackoverflow.com/questions/21069164/osx-vim-set-laststatus-2-shows-only-the-filename-but-i-want-to-see-everythin
" https://shapeshed.com/vim-statuslines/
" https://learnvimscriptthehardway.stevelosh.com/chapters/23.html
" https://learnvimscriptthehardway.stevelosh.com/
" https://learnvimscriptthehardway.stevelosh.com/chapters/17.html
" https://vim.fandom.com/wiki/Buffers
" https://vi.stackexchange.com/questions/2674/how-can-i-easily-move-a-line

"Line blue
"hi StatusLine ctermbg=24 ctermfg=254 guibg=#004f87 guifg=#e4e4e4
"hi StatusLine ctermbg=24 ctermfg=254 guibg=NONE guifg=NONE

" first, enable status line always
set laststatus=2 " Always show statusline 2, 1 only whan two buffer, 0 nothing


"Instalando un plugin, pero ya no es necesario si se puede hacer manual.
""Plug 'itchyny/vim-gitbranch'

"function! StatuslineGit()
"  let l:branchname = gitbranch#name() 
"  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction


" https://shapeshed.com/vim-statuslines/
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?' ('.l:branchname.')':''
endfunction

"ver colores 
":so $VIMRUNTIME/syntax/hitest.vim

set statusline=\[%{&fileformat}\]
set statusline+=%#Special# " Color azul claro por mi tema
set statusline+=\ %f
set statusline+=%#Number# " Color rojo por mi tema
set statusline+=%{StatuslineGit()}
set statusline+=%#String# " Color verde claro por mi tema
set statusline+=%m

set statusline+=%#CursorLineNr# " Normalizando las letras de color por defecto blanco
set statusline+=%=

set statusline+=\%y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %2l
set statusline+=\,%c
set statusline+=\%4p%%
set statusline+=\ %3L

"https://vim.fandom.com/wiki/Change_statusline_color_to_show_insert_or_normal_mode
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    "hi statusline guibg=magenta
"  elseif a:mode == 'r'
"    hi statusline guibg=blue
 " else
"    hi statusline guibg=red
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=NONE

" default the statusline to green when entering Vim
hi statusline guibg=NONE


