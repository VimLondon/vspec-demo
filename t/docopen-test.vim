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
