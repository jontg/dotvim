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
syntax enable

if has('gui_running')
    colorscheme solarized
    call togglebg#map("<F4>")
    set background=light
endif

:hi Comment ctermfg=darkmagenta
" Adding command 'M' to for highliting
highlight myHighlightGroup ctermbg=darkgreen guibg=darkgreen
command -nargs=1 M mat myHighlightGroup /\c<args>/
