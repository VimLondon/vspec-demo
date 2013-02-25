function! RawUrl(filename, helptag)
  if a:helptag == ''
    return 'http://vimdoc.sourceforge.net/htmldoc/' . a:filename . '.html'
  else
    return 'http://vimdoc.sourceforge.net/htmldoc/' . a:filename . '.html#' . a:helptag
  endif
endfunction

function! GetFilename()
  return expand('%:t:r')
endfunction

function! GetHelptag()
  return expand('<cword>')
endfunction
