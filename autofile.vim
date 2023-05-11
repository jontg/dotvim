autocmd FileType nerdtree cnoreabbrev <buffer> bd <nop>
autocmd FileType nerdtree cnoreabbrev <buffer> bp <nop>
autocmd FileType nerdtree cnoreabbrev <buffer> bn <nop>

autocmd FileType typescript,typescriptreact JsPreTmpl html
autocmd FileType typescript syn clear foldBraces
autocmd FileType typescript,typescriptreact :set makeprg=tsc
autocmd FileType terraform,typescript,typescriptreact :set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

autocmd BufWritePost *.js silent !standard --fix %
autocmd BufWritePost *.tf,*.ts,*.tsx,*.js,*.jsx,*.json,*.py ALEFix
