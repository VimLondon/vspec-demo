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
  let word = expand('<cWORD>')
  let unstarred = substitute(word, '\v^\*([^*]*)\*$', '\1', 'g')
  if word != unstarred
    return unstarred
  else
    return ''
  endif
endfunction

function! OpenDocumentation()
  execute '!open' shellescape(RawUrl(GetFilename(), GetHelptag()), 1)
endfunction

command! -buffer DocOpen call OpenDocumentation()
