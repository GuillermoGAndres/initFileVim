" MIT License

" Copyright (c) 2017 romain Lafourcade

" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:

" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.

" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.

" Define a global variable containing the current environment's name
" if it hasn't been already defined.
if !exists('g:env')
	if has('win64') || has('win32') || has('win16')
		let g:env = 'WINDOWS'
	else
		let g:env = toupper(substitute(system('uname'), '\n', '', ''))
	endif
endif

" Use that global variable...
if g:env =~ 'DARWIN'
	" ... to do Mac OS X-specific stuff.
endif

if g:env =~ 'LINUX'
	" ... to do Linux-specific stuff.
endif

if g:env =~ 'WINDOWS'
	" ... to do Windows-specific stuff.
endif

if g:env =~ 'CYGWIN'
	" ... to do Cygwin-specific stuff.
endif

if g:env =~ 'MINGW'
	" ... to do MinGW-specific stuff (Git Bash, mainly).
endif

" and so on...