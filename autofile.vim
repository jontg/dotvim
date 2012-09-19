"turn off cindent and go back to autoindent
:au FileType * set formatoptions=tcql nocindent

"turn on cindent
:au FileType C,c,cpp set formatoptions=croql cindent

"always change to the build directory of the current file
":au BufEnter *     :call CdCurFile()
":function! CdCurFile()
":  set omnifunc=
":  exec "cd " expand("%:p:h")
":  let lastDir=getcwd()
":  while glob('SConscript')==''
":    lcd ..
":    if lastDir==getcwd()
":        exec "cd " expand("%:p:h")
":        break
":    endif
":    let lastDir=getcwd()
":  endwhile
":endfunction 

autocmd FileType ruby setlocal ts=2 sts=2 sw=2 noexpandtab

autocmd FileType nerdtree cnoreabbrev <buffer> bd <nop>
autocmd FileType nerdtree cnoreabbrev <buffer> bp <nop>
autocmd FileType nerdtree cnoreabbrev <buffer> bn <nop>
