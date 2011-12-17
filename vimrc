"#####################################################################
" .vimrc
"
"#####################################################################

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

:source $HOME/.vim/options.vim
:source $HOME/.vim/autofile.vim
:source $HOME/.vim/mappings.vim
":set syntax=adamg 
"syntax enable
"set background=dark
"colorscheme solarized

" toggle between .cpp and .h
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" set buffers to be hidden, so that modify in parallel
set hidden
" map toggle between the open buffers to F3

:hi Comment ctermfg=darkmagenta

let mapleader = ","

" Adding command 'M' to for highliting
highlight myHighlightGroup ctermbg=darkgreen guibg=darkgreen
command -nargs=1 M mat myHighlightGroup /\c<args>/
nnoremap <leader><space> :noh<cr>

set backupdir=~/.vim/backup
set directory=~/.vim/backup
set undodir=~/.vim/backup
set undofile
