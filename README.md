# ConfigRC

Provides simple, hierarchical app configuration:

  * Environment variables take precendence over
    * Command-line options, which take precendence over
      * rc-file options.

Environment variables are expected to be prefixed with the application name and an underscore (e.g. `app_foo` will set `foo`). The rc file is assumed to have the usual name of `.apprc` in the user's home directory. An additional options hash can be passed.

[![Build Status](https://secure.travis-ci.org/nerab/config-rc.png?branch=master)](http://travis-ci.org/nerab/config-rc)

## Installation

Add this line to your application's Gemfile:

    gem 'config-rc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install config-rc

## Usage

See test/bin/app for an example.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
