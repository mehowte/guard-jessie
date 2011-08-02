Guard::Jessie
=============

[![Build Status](http://travis-ci.org/mehowte/guard-jessie.png)](http://travis-ci.org/mehowte/guard-jessie)


Jessie guard allows to automatically run you jasmine specs under node using jessie runner.


Install
-------

Please be sure to have [Guard](https://github.com/guard/guard) and [Jessie](https://github.com/futuresimple/jessie) installed before continue.

You also obviously need ruby and node environments installed.

Install the gem:

    $ gem install guard-jessie

Add it to your Gemfile (inside development group):

``` ruby
gem 'guard-jessie'
```

Add guard definition to your Guardfile by running this command:

    $ guard init jessie

Usage
-----

Please read [Guard usage doc](https://github.com/guard/guard#readme)

Guardfile
---------

RSpec guard can be really adapted to all kind of projects.

### Standard node project

``` ruby
guard 'jessie' do
  watch(%r{^spec/.+(_spec|Spec)\.(js|coffee)})
  watch(%r{^lib/(.+)\.(js|coffee)})            { |m| "spec/lib/#{m[1]}_spec.js" }
  watch('spec/spec_helper.js')                 { "spec" }
end
```

### Typical Rails (version < 3.1) app

``` ruby
guard 'jessie' do
  watch(%r{^spec/javascripts/.+(_spec|Spec)\.js})
  watch(%r{^public/javascripts/(.+)\.js})        { |m| "spec/javascripts/#{m[1]}_spec.js" }
  watch('spec/spec_helper.js')                   { "spec" }
end
```

### Typical Rails (version >= 3.1) app

``` ruby
guard 'jessie' do
  watch(%r{^spec/javascripts/.+(_spec|Spec)\.js})
  watch(%r{^app/assets/javascripts/(.+)\.js})    { |m| "spec/javascripts/#{m[1]}_spec.js" }
  watch('spec/spec_helper.js')                   { "spec" }
end
```

Please read [Guard doc](https://github.com/guard/guard#readme) for more information about the Guardfile DSL.

Options
-------

You can pass any of the standard RSpec CLI options using the `:cli` option:

``` ruby
guard 'jessie', :cli => "-f nested" do
  # ...
end
```

### List of available options:

``` ruby
:cli => "-f nested"         # pass arbitrary Jessie CLI arguments, default: "-f progress"
:notification => false      # don't display Growl (or Libnotify) notification after the specs are done running, default: true
```

Development
-----------

* Source hosted at [GitHub](https://github.com/guard/guard-jessie)
* Report issues/Questions/Feature requests on [GitHub Issues](https://github.com/guard/guard-jessie/issues)

Pull requests are very welcome! Make sure your patches are well tested. Please create a topic branch for every separate change
you make.

Testing
-------

rake

Author
------

[Michał Taszycki](https://github.com/mehowte)


License
-------

Copyright (c) 2011 Michal Taszycki

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.


