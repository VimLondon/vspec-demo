silent filetype plugin on

describe 'RawUrl'

  it 'generates an URL from specified filename and helptag'
    help
    Expect RawUrl('foo', 'bar') == 'http://vimdoc.sourceforge.net/htmldoc/foo.html#bar'
  end

  it 'generates an URL from specified filename without helptag'
    help
    Expect RawUrl('foo', '') == 'http://vimdoc.sourceforge.net/htmldoc/foo.html'
  end

end

describe 'GetFilename'

  it 'gets name of current helpfile'
    help
    Expect GetFilename() ==# 'help'
    help j
    Expect GetFilename() ==# 'motion'
  end

end

describe 'GetHelptag'

  it 'gets the helptag under the cursor'
    help {offset}
    Expect GetHelptag() ==# '{offset}'
    help '
    Expect GetHelptag() ==# "'"
    help "
    Expect GetHelptag() ==# 'quote'
  end

  it 'returns blank string when cursor is not on a helptag'
    help
    normal W
    Expect GetHelptag() ==# ''
    normal }
    Expect GetHelptag() ==# ''
    normal G
    Expect GetHelptag() ==# ''
  end

end

describe ':DocOpen'

  it 'command is defined for help files'
    setlocal filetype=help
    Expect exists(':DocOpen')  ==# 2
  end

  it 'command is not defined for non-help files'
    setlocal filetype=
    Expect exists(':DocOpen')  ==# 0
  end

end
