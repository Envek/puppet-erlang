Erlang
======

Puppet module for installing fresh Erlang from [Erlang Solutions] repositories.

Installation
------------

	puppet module install envek-erlang

Usage
-----

To install current version of `erlang` package from [Erlang Solutions]:

	include erlang

To install current version and update it as necessary:

	class { "erlang":
		version => 'latest',
	}

To install specific version of specific package:

	class { "erlang":
		package => "erlang-hipe",
		version => "17.2",
	}


Found a mistake? Have a question?
----------------------------------

Search for an (or open new) issue here: https://github.com/Envek/puppet-erlang/issues


Contributing
------------

1. Fork it ( https://github.com/Envek/puppet-erlang/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


Boring legal stuff
------------------

> Copyright © 2015 Andrey Novikov
>
> MIT License
>
> Permission is hereby granted, free of charge, to any person obtaining
> a copy of this software and associated documentation files (the
> "Software"), to deal in the Software without restriction, including
> without limitation the rights to use, copy, modify, merge, publish,
> distribute, sublicense, and/or sell copies of the Software, and to
> permit persons to whom the Software is furnished to do so, subject to
> the following conditions:
>
> The above copyright notice and this permission notice shall be
> included in all copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
> MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
> LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
> OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
> WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
