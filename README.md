This repository contains the code used to demonstrate [vspec][] at the [February 2013 Vim London meetup][meetup]. Look at the [commit history][commits] to see how the code evolved. You can find links to *snapshots* of the project at significant milestones below. The *compare changes* links let you compare each snapshot with the previous one.

Don't install this plugin! The code is provided as a learning resource. If you want to use the `:DocOpen` command, go and get the real version of the [DocOpen][] plugin.

Setup:

* clone this repo
* run `bundle install`
* to run tests, run `rake test`

## [Boilerplate][01]

The starting point for this demonstration was all set to run vspec tests. To replicate this setup, follow [Kana's instructions][vspec-setup].

## [`RawUrl()`][02]

Specify and implement the `RawUrl()` function. [Compare changes][01-02]

## [`GetFilename()`][03]

Specify and implement the `GetFilename()` function. [Compare changes][02-03]

## [`GetHelptag()`][04]

Specify and implement the `GetHelptag()` function. [Compare changes][03-04]

## [`OpenDocumentation()`][05]

Specify and implement the `OpenDocumentation()` function. [Compare changes][04-05]

## [`:DocOpen`][06]

Specify and implement the `:DocOpen` command. [Compare changes][05-06]


[01]: https://github.com/VimLondon/vspec-demo/tree/01_boilerplate
[02]: https://github.com/VimLondon/vspec-demo/tree/02_generate_url
[03]: https://github.com/VimLondon/vspec-demo/tree/03_get_filename
[04]: https://github.com/VimLondon/vspec-demo/tree/04_get_helptag
[05]: https://github.com/VimLondon/vspec-demo/tree/05_open_doc_url
[06]: https://github.com/VimLondon/vspec-demo/tree/06_create_DocOpen_command

[01-02]: https://github.com/VimLondon/vspec-demo/compare/01_boilerplate...02_generate_url
[02-03]: https://github.com/VimLondon/vspec-demo/compare/02_generate_url...03_get_filename
[03-04]: https://github.com/VimLondon/vspec-demo/compare/03_get_filename...04_get_helptag
[04-05]: https://github.com/VimLondon/vspec-demo/compare/04_get_helptag...05_open_doc_url
[05-06]: https://github.com/VimLondon/vspec-demo/compare/05_open_doc_url...06_create_DocOpen_command

[vspec-setup]: http://whileimautomaton.net/2013/02/13211500
[vspec]: https://github.com/kana/vim-vspec
[meetup]: http://www.meetup.com/Vim-London/events/102114102/
[DocOpen]: https://github.com/nelstrom/vim-docopen
[commits]: https://github.com/VimLondon/vspec-demo/commits/master
