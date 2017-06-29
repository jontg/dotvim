autocmd FileType nerdtree cnoreabbrev <buffer> bd <nop>
autocmd FileType nerdtree cnoreabbrev <buffer> bp <nop>
autocmd FileType nerdtree cnoreabbrev <buffer> bn <nop>

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

autocmd BufWritePost *.ts,*.tsx,*.js,*.jsx,*.py ALEFix
