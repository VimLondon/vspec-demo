silent filetype plugin on

describe 'RawUrl'

  it 'generates an URL from specified filename and helptag'
    help
    Expect RawUrl('foo', 'bar') == 'http://vimdoc.sourceforge.net/htmldoc/foo.html#bar'
  end

end
