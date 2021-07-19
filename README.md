# Configuracion nvim o vim
Nvim es un fork de Vim haciendo mejoras a vim, anteriormente utilizaba vim pero conforme surgian nuevas necesidades 
que yo requeria, como por ejemplo el portapapeles, el poder copiar codigo de vim y utilizarlo en otra aplicaciones,
en la version de vim que tenia no funcionaba, todo era interno en vim con nvim pude resolver eso.

El archivo init de vim, el cual es el que es ejecutado cuando se inicia vim por primera vez, se encuentra en:
~~~
~/.config/nvim/init.vim
~~~

Para instalar los plugins primero necesitas descargar vim-plug:
![Pagina de vimplug](https://github.com/junegunn/vim-plug)
Para el plugin de coc.vim necesitas instalar nodejs:
![Pagina de coc.vim](https://github.com/neoclide/coc.nvim)

# Guide vim
~~~
q: quit
w : save
qw: save and quit
q!: quit fource brute.
v : visualizasion
C-f : Next page
C-b : Back page
y : copy
d : cut
p : paste
C-u : undo

Term
vnew | term     :- terminal vertical
new | term      :- horizontal vertical


Edicion 
e: editar file 
sp: split edition 
vsp: vertical edition
ls : list buffers
bd: Delete buffer 
b [1..9]: Switch buffer 

Text 
viw: Select all word
vit: Select content tag
c{motion}: delete and start insert-mode
~: upper or lower case
* : Select string a buscar
C-a: Increment value +1
C-x: Decrement value -1
gf: Find file (below file)

{Visual}U : Make highlighted text uppercase
{Visual}u : Make highlighted text uppercase
gU{motion}: Uppercase
gu{motion}: lowercase
gUU: Make current line Uppercase 
guu: Make current line Uppercase 

gn: Search last searh and start visul-mode
. : dot operator remember last command
Combinando c operador y gn y .
cgn - n - . : Cambia cada ocurrencia 

Windows
C-w-q: Close window
C-w-v: Vertial split window
C-w-s: Split window
C-w-o: Close all windows
s-<up>: up page
s-<down> : down page

Tab 
:tabe = edition tab
:gt   = next tab 
:tab sball = to change all buffers to tab view.
~~~

### Default font
Droid Sans Mono
![Linked java](./img/2LinkedQueueJava.png)

