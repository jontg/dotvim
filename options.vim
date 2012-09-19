"always have a status line
:set laststatus=2

"syntax highlighting
:syntax enable
:highlight Normal guibg=Black guifg=White

"tags
:set notagbsearch

"don't add <> to pair matching because it causes annoying beeps
":set matchpairs+=<:>
:set showmatch

"set path
:set path=$PATH
:set path=.

"show location in file
:set ruler

"set up indentation
:set ts=2 hardtabs=2 shiftwidth=2 softtabstop=2
:set expandtab
"autoindent when autocommand doesn't install cindent
:set autoindent
"fix unclosed paren indents, switch indents, and public/private indents
:set cinoptions+=:0,l1,g0.5s,h0.5s,(0,u0,W2s

"hide the toolbar
:set guioptions-=T

"search options
:set nohlsearch
:set incsearch
:set ignorecase
:set smartcase

"text width
:set textwidth=192

"force tabs
":cab e tabe

" set buffers to be hidden, so that modify in parallel
set hidden

"tab completion
:set wildmode=longest,list,full
:set wildmenu

"indent guides
let g:indent_guides_enable_on_vim_startup = 1

"yankring configuration
let g:yankring_history_dir = '~/.vim/backup'

set tildeop
set backupdir=~/.vim/backup
set directory=~/.vim/backup
set undodir=~/.vim/backup
set undofile
