execute pathogen#infect()

filetype plugin indent on
syntax on

:source $HOME/.vim/options.vim
:source $HOME/.vim/autofile.vim
:source $HOME/.vim/mappings.vim
":set syntax=adamg 

set background=light

if has('gui_running')
    set macligatures
    set guifont=Fira\ Code:h12
    colorscheme solarized
    let g:solarized_contrast="high"
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
endif

:hi Comment ctermfg=darkmagenta
" Adding command 'M' to for highliting
highlight myHighlightGroup ctermbg=darkgreen guibg=darkgreen
command -nargs=1 M mat myHighlightGroup /\c<args>/

set autoread
