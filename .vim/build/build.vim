function! Build()
    let clangFmts = ['c', 'cpp']
    cd %:h
    if index(clangFmts, &filetype) != -1
        call BuildClang()
    elseif &filetype == 'tex'
        call BuildPdflatex()
    endif
    cd -
endfunction

command! Build call Build()
