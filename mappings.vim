let mapleader = ","

nnoremap <leader><space> :noh<cr>

"toggle spell checking
:map <F2> :set spell! <CR>

"toggle highlighting
:map <F3> :set hlsearch! <CR>

"next error
:map <F6> :cn <CR>

"prev buffer
:map <F11> :tabp <CR>

"next buffer
:map <F12> :tabn <CR>

"latex and view files
function LatexAndView()
:   let root = expand("%:r")
:   exe ":!pdflatex % && evince " root.".pdf"
:endfunction
:noremap <F9> :call LatexAndView() <CR>

"swtich between header and cpp file
:function SwitchToFileMate()
:   let root = expand("%:r")
:   let ext = expand("%:e")
:   if ext == "h"
:       if filereadable(root.".cpp")
:           exe ":e" root.".cpp"
:       elseif filereadable(root.".C")
:           exe ":e" root.".C"
:       endif
:   elseif ext == "cpp"
:       exe ":e" root.".h"
:   elseif ext == "C"
:       exe ":e" root.".h"
:   endif
:endfunction
:map <F5> :call SwitchToFileMate() <CR>

" Mess with directional keys, training away their use
"  and making them useful in a different way.
map <left> <ESC>:NERDTreeToggle<CR>
map <right> <ESC>:NERDTreeToggle<CR>
map <up> <ESC>:bp<CR>
map <down> <ESC>:bn<CR>

"""""""""""""""""""""""""""""""""
" Cope
"""""""""""""""""""""""""""""""""
map <leader>cc :botright cope<CR>
map <leader>p :cp<CR>
map <leader>n :cn<CR>
