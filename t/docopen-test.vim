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
  end

end
