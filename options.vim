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
set autoindent

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

set visualbell
set noerrorbells

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['prettier'],
\}

let g:ale_fixers = {
\   'javascript': [
\     'remove_trailing_lines',
\     'prettier'
\    ],
\   'typescript': [
\     'remove_trailing_lines',
\     'prettier'
\    ],
\   'typescriptreact': [
\     'remove_trailing_lines',
\     'prettier'
\    ],
\    'python': [
\     'remove_trailing_lines'
\    ],
\    'json': [
\     'remove_trailing_lines'
\    ],
\    'terraform': [
\     'terraform'
\    ],
\}

"\     'remove_trailing_lines',
"\     'eslint'

let g:jsonnet_fmt_options = '--in-place --indent 4 --string-style d'
