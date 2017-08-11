autocmd FileType nerdtree cnoreabbrev <buffer> bd <nop>
autocmd FileType nerdtree cnoreabbrev <buffer> bp <nop>
autocmd FileType nerdtree cnoreabbrev <buffer> bn <nop>

autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces
autocmd FileType typescript :set makeprg=tsc

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

autocmd BufWritePost *.js silent !standard --fix %
autocmd BufWritePost *.ts,*.tsx,*.js,*.jsx,*.py ALEFix
