# Ionic Framework for Rails 4
Make [Ionic Framework](http://ionicframework.com) into Rails Engine. 

## Version
Ionic Framework 0.9.17 (alpha preview)

## Rails 4 or later
Include Gemfile,

    gem 'ionic-rails-engine'

Add javascripts into application.js

    //= require ionic/ionic

Similiarly add stylesheet into application.css

## CDN (not supported yet)

This gem supports cdn the same as [jquery-rails-cdn](https://github.com/yjchen/jquery-rails-cdn). In the application layout, add

    = ionic_js_include_tag :default

and remove corresponding lines in application.js.

### Options

Set :compressed to use minimized library locally like this:

    = ionic_js_include_tag :default, :compressed => true

Set :local_copy true to use local copy when CDN is not available.

Remember to add assets name in confign/environments/production.rb:

    config.assets.precompile += %w( ionic/ionic.min.js)

## License

Copyright (c) 2012-2013 Yen-Ju Chen

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
