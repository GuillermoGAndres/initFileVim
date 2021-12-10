" Referencias:
" https://github.com/GuillermoGAndres/kitDeveloper
" https://github.com/GuillermoGAndres/kitDeveloper/blob/master/initConfVimEmacs/LinuxConfig.vim
" https://gitlab.com/dwt1/dotfiles/-/blob/master/.config/nvim/init.vim

set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle For Managing Plugins

"-------------Manage-VimPlug--------------------------------------------------------------

call plug#begin('~/.vim/plugged')
"Instalarlo antes de usar, @see:  https://github.com/junegunn/vim-plug

Plug 'neoclide/coc.nvim', {'branch': 'release'} "Coc servers
"coc-clangd  # C y C++ language
"coc-java #Instalar jdt version 57 para el error que podria causar el
"servidor, ver issues de la su pagina de github, solo es descargar jdt
"descomprimir, buscar la carpeta del jdt y borrar archivos y poner los
"descargados 
"coc-html #Te recomienda etiquetas y descripcion una vez que hacer tag apertura <label...
"Initialize plugin system
"coc-css autocompletado y ya no se necesita preview-color,viene integrado
"Plug 'ap/vim-css-color'                            " Color previews for CSS
"Plug 'gmarik/Vundle.vim'                           " Vundle

"{{ The Basics }}
    " Plug 'itchyny/lightline.vim'                       " Lightline statusbar
    Plug 'suan/vim-instant-markdown', {'rtp': 'after'} " Markdown Preview
    "Plug 'frazrepo/vim-rainbow'
"{{ File management }}
    "Plug 'vifm/vifm.vim'                               " Vifm
    "Plug 'scrooloose/nerdtree'                         " Nerdtree
    "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
    "Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
"{{ Productivity }}
    "Plug 'vimwiki/vimwiki'                             " VimWiki 
    "Plug 'jreybert/vimagit'                            " Magit-like plugin for vim
"{{ Tim Pope Plugins }}
    "Plug 'tpope/vim-surround'                          " Change surrounding marks
"{{ Syntax Highlighting and Colors }}
"    Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting 
"    Plug 'kovetskiy/sxhkd-vim'                         " sxhkd highlighting resalta indentacion
    "Plug 'vim-python/python-syntax'                    " Python highlighting
"{{ Junegunn Choi Plugins }}
    Plug 'junegunn/goyo.vim'                           " Distraction-free viewing
    " Plug 'junegunn/limelight.vim'                      " Hyperfocus on a range
    " Plug 'junegunn/vim-emoji'                          " Vim needs emojis!

"{{ Development } }
" Plug 'mattn/emmet-vim'
" Plug 'GuillermoGAndres/emmet-vim'
Plug 'zubairakram/emmet-vim/', {'branch': 'html5-snippet'}

Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-commentary'
" Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Plug 'tommcdo/vim-exchange'
"
" https://stackoverflow.com/questions/48721114/is-there-a-vim-command-that-swap-two-words-with-crossing-one-operator

" Plug 'ctrlpvim/ctrlp.vim'


"*Themes
"Plug 'pgavlin/pulumi.vim'
"Plug 'embark-theme/vim', { 'as': 'embark' }


call plug#end()
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"--------------------------Configuration Coc plugin--------------------------------------

"Configuracion para coc, para los pop-ups 
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
     \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

"Para puedas visualizar las opciones en cualquier lugar de la palabra
"Control-space
" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
" use <c-space>for trigger completion
inoremap <silent><expr> <NUL> coc#refresh()

"Navegar opciones  hacia adelante y hacia atras con Tab y Shift Tab.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Que la primera ocurrecia de pop-up() sea selacionada automaticamente al
"presionar enter
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

"Close the preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)


" Extensiones instaladas
" CocInstall coc-html coc-css coc-tsserver coc-phpls coc-snippets coc-clangd 
" (primero debes de instalar clangd, debe estar en tu path)
" Se guardan en la ruta: 
" ~/.config/coc/extensions/node_modules/coc-html

" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions  (checar por
" si quieres deshabilitar una extension)
" https://langserver.org/    (Pagina donde hay los language server for any
" editor)
"--------------------------------------------------------------------------

" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
"set number relativenumber       " Display line numbers
set number
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable
let g:rehash256 = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--------------------My configuration -------------------------------------------------
"You can toggle relative numbering on and off using:
":set rnu    " toggle relative numbering on
":set rnu!   " toggle relative numbering off

"set number relativenumber
"set number                     " Show current line number

"set relativenumber             " Show relative line numbers

set encoding=utf-8 " Codifica los caractares para ser mostrados como los acentos o ñ

syntax on "Para habilitar el color, por defecto no tiene ningun color para language

set tabstop=4 "Para los tabuladores size

set expandtab "Replacing Tabs with White Spaces

set softtabstop=4 "Removing Multiple Spaces on Single Backspace

"So, 4 white spaces for each tab will be removed all together with a single press of the <Backspace> key.

"Estos tres van acompados para que funcione perfecto, shiftwidtj ajusta el

"identato de autoindent, en este caso cuatro

set autoindent "Enabling Automatic Indentation,indenta dependiendo del anterior

set smartindent " even better autoindent (e.g. add indent after '{')

set shiftwidth=4 " number of spaces to use for each step of (auto)indent

set shiftround

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set mouse=a " enable mouse support (might not work well on Mac OS X), para cambiarme de ventanas
" https://unix.stackexchange.com/questions/139578/copy-paste-for-vim-is-not-working-when-mouse-set-mouse-a-is-on

"set title  " Muestra el nombre del archivo en la ventana de la terminal

set nowrap  " No dividir la línea si es muy larga

"set cursorline  " Resalta la línea actual

" set colorcolumn=80  " Muestra la columna límite a 80 caracteres

set ignorecase  " Ignorar mayúsculas al hacer una búsqueda

set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

"set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

"set background=dark  " Fondo del tema: light o dark

"Genera una paleta de colores diferente, haciendo como un resaltado
set termguicolors "Activa true colors en la terminal utilizando guifg in vez de termfg.

"-----------------------------Mappings-------------------------------------------------- 
"map <C-l> :NERDTreeToggle<CR>
map <F12> :NERDTreeToggle<CR>
"map <F11> :Explore<CR>
" map <C-x><C-f> :Sexplore<CR> 
"map <C-x><C-Right> :Vexplore<CR> 

"map <C-b> :NERDTreeToggle<CR>
"Entrar NORMAL mode
imap <C-s> <ESC>
imap <C-n> <ESC>
"imap <C-x> <ESC>
"Guardar
nnoremap <C-s> :w<CR> 
" Quit discarding changes
" inoremap <C-q> <esc>:qa!<cr>               
" nnoremap zz :q<cr> (Se sobre escribe con :h zz)
" La 'a' significa all buffers 
" nnoremap zq :qa!<cr>
" <S-Z-Z> - Guarda y sale
" <S-Z-Q> - Sale sin guardar
" <C-c>   - normal mode

" S shift

"nnoremap <C-x> :w<CR>
"Salir sin guardad
"nmap <C-x> :q<CR>

" nmap <C-c> :q<CR>

"nmap <C-x><C-c> :q!<CR>
"Salir foruce brute
"nmap <C-c> :q!<CR>

" inoremap jk <esc> (Uso mejor C-c el por default)
"------------------------------  

"Definir la letra leader
let g:mapleader = ' '  " Definir espacio como la tecla líder
" https://stsewd.dev/es/posts/neovim-installation-configuration/
"Guardar con <líder> + s
"nnoremap <leader>s :w<CR> 
"nnoremap <leader>x :q!<CR>
" nnoremap <leader>c :q!<CR>
nnoremap <leader>w :w<CR>

"----- Management buffers ------------
" nnoremap <C-x><Left> :bprevious<CR>
" nnoremap <C-x><Right> :bnext<CR>

nnoremap <leader><Left> :bprevious<CR>
nnoremap <leader><Right> :bnext<CR>
" nnoremap <leader>d :bd<CR>
" %a for current
" h for hidden
" # for previous
" + for modified.

" nnoremap <C-x>l :bnext<CR>
" nnoremap <C-x>h :bprevious<CR>

"nnoremap <C-x><Up> :ls<CR> " Al paracer no funcino con Up y Down
" nnoremap <S-Up> :ls<CR>

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>
" Moverse al buffer anterior con <líder> + j
nnoremap <leader>h :bprevious<CR>
" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>

"noremap <Leader>y "*y -

"--------Management tab ----------
" nnoremap <C-x><C-Left> :tabp<CR>                                                                            
" nnoremap <C-x><C-Right> :tabnext<CR>

"Configurando el movimiento de los tab para sea mas facil en vez de utilar gt 
"nnoremap <C-Left> :tabprevious<CR>                                                                            
"nnoremap <C-Right> :tabnext<CR>
"nnoremap <C-j> :tabprevious<CR>                                                                            
"nnoremap <C-k> :tabnext<CR>

" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap ESC to ii
":imap ii <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
"map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

" => Vifm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimWiki
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Instant-Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:instant_markdown_autostart = 0         " Turns off auto preview
let g:instant_markdown_browser = "surf"      " Uses surf for preview
map <Leader>md :InstantMarkdownPreview<CR>   " Previews .md file
map <Leader>ms :InstantMarkdownStop<CR>      " Kills the preview

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open terminal inside Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>tt :vnew term://fish<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
" Esto no me dejaba seleccion con mi mouse por esta desactivado
"set mouse=nicr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other Stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_highlight_all = 1

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The lightline.vim theme
"let g:lightline = {
"      \ 'colorscheme': 'darcula',
"      \ }



" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode
" ---------- Themes --------------------
"colorscheme pulumi
"ver colores 
":so $VIMRUNTIME/syntax/hitest.vim
" colorscheme mountaineer-grey
" Change color amarillo number #ABA88B or #F0DFAF
"hi LineNr term=bold cterm=bold ctermfg=2 guifg=#ABA88B guibg=#232322
"------------------------------ 
" colorscheme embark
"let g:lightline = {
"      \ 'colorscheme': 'embark',
"      \ }

" let g:embark_terminal_italics = 1
" hi LineNr term=bold cterm=bold ctermfg=2 guifg=#F0DFAF guibg=#1E1C31
"------------ Customs --------------------
" Toggle relative line number
nmap <C-L><C-L> :set invrelativenumber<CR>
nmap <f9> :set nu!<CR>

" Con esto ajusta el background de tu tema si es transparente lo respeta.
"------------------------------ 
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
"------------------------------ 
" Ayuda mucho cambiar tu directorio actual, sera donde se encuentre el archivo
" que se abrira, me ha ayuda para Nerdtree, cuando se untiliza vim
" ruta/archivo.cpp ese ahora sera tu directorio actual. 
:set autochdir

" :e filename  # Create a new file
" m  # En NERDTree abre un menu para crear archivos.


"----------PLugin for compile and run C++ pragrams. ----------------
source ~/.config/nvim/myPlugins/cp.vim
let g:split_term_style = 'horizontal'
"let g:split_term_resize_cmd = 'resize 2'

"------------Open term-----------------
function! OpenTerm() 
    exec 'new | term'
    " startinsert lo que hacer usar 'i' insert para escribir en el buffer una
    " vez creado nuestra terminal.
    exec 'startinsert'
    " Quitamos los numeros del buffer
    set nonumber 
endfunction

command! -nargs=0 OpenTerminal call OpenTerm()
nnoremap <f6> :OpenTerminal<CR>

"------ status line----------------
"source ~/.config/nvim/mystatusline.vim

"------------------------ 
"---------mytheme ----
"colorscheme liskov

"---Conocer el grupo de sintaxis que pertenece----
" nmap <C-S-P> :call <SID>SynStack()<CR>
nmap <C-A-p> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
"-------------------
" colorscheme af
" colorscheme simple-dark
" colorscheme church
colorscheme darkAtom
" set cursorline

" Vim auto line-break
set textwidth=79
" https://stackoverflow.com/questions/9131271/vim-auto-line-break
" https://stackoverflow.com/questions/4027222/using-shorter-textwidth-in-comments-and-docstrings
" https://vi.stackexchange.com/questions/4796/automatically-breaking-lines-in-comments

" Wrap lines, eg for markdown or text 
"set wrap 
"set wrap! " Para negarlo

" Muticursor
" /word , later write cgn in mode visual, and leter . dot
" https://medium.com/@schtoeffel/you-don-t-need-more-than-one-cursor-in-vim-2c44117d51db
" http://vimcasts.org/episodes/operating-on-search-matches-using-gn/

noremap <leader>/ :Commentary<CR>

" Describe key like emacs :h yourkey
" https://stackoverflow.com/questions/5059283/emacs-describe-key-in-vim
"
" Format all file, also you can autoindent current line liki == or x= 
" https://vim.fandom.com/wiki/Fix_indentation
map <F7> gg=G<C-o>


" Key 
" C (left/right) - Ajusta la ventanas
" vim - Visual mode , selecciona una palabra

" UltiSnips 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" For emmet-vim 
" Con esto se podra activar con ',,' trigger emmet
let g:user_emmet_leader_key=',' 

" Segunda forma con la tecla tab para archivos html
" function! s:zen_html_tab()
"   return "\<c-y>,"
" endfunction

" Con esto no deja que active emmet adentro de un elemento
" function! s:zen_html_tab()
"   let line = getline('.')
"   if match(line, '<.*>') >= 0
"     return "\<c-y>n"
"   endif
"   return "\<c-y>,"
" endfunction
" autocmd FileType html imap <buffer><silent><expr><tab> <sid>zen_html_tab()

" http://bling.github.io/blog/2013/07/21/smart-tab-expansions-in-vim-with-expression-mappings/

"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall

"This unsets the "last search pattern" register by hitting return
" nnoremap <CR> :noh<CR><CR>

" Clear highlighting on escape in normal mode
" nnoremap <esc> :noh<return><esc>
" nnoremap <esc>^[ <esc>^[

" nnoremap <silent> <Esc><Esc> :let @/=""<CR>
" http://vimdoc.sourceforge.net/htmldoc/pattern.html#last-pattern
" nnoremap <silent> <Esc><Esc> :noh<CR> :call clearmatches()<CR>
" nnoremap <Esc><Esc> :noh<CR>
nnoremap <leader><CR> :noh<CR>

" Para seleccionar el conent de una etiqueta
" vit, con viw seleccionar una word, usando c operator delete e insert
"https://superuser.com/questions/182355/how-can-i-select-an-html-tags-content-in-vim

" Move line up and down 
" https://vim.fandom.com/wiki/Moving_lines_up_or_down
" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" vnoremap <A-k> :m '<-2<CR>gv=gv

" A : alt 
" S : Shift
" nnoremap <A-Up> :m-2<CR>
" nnoremap <A-Down> :m+<CR>
" inoremap <A-Up> <Esc>:m-2<CR>
" inoremap <A-Down> <Esc>:m+<CR>
" List buffers 
nnoremap <Leader>b :ls<CR>:b<Space>

" function! SurroundMe()
"     let cara = escape(nr2char(getchar()), '/\\^$*.[~')
"     let col = col('.')
"     exe 's/.*\zs\<.\{-}\%#.\{-}\>/'.cara.'&'.cara.'/'
"     call setpos('.', [0, line('.'), col + 1, 0])
" endfunction

" nnoremap <leader>' :call SurroundMe()<CR>
" https://vi.stackexchange.com/questions/21113/vimscript-surround-word-under-cursor-with-quotes
